/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Alizzabeth
 */
public class ConnectDB {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://jsp.itkmutt19.in.th/project_kairoob","kairoob","bTLWzH");
            String sql = "select * from Members;";
            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                System.out.println("Frist Name ::" + rs.getString("first_name"));
                System.out.println("Last Name ::" + rs.getString("last_name"));
                System.out.println("Password ::" + rs.getString("password"));
                System.out.println("Email ::" + rs.getString("email"));
            }
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
        
        
    }
}
