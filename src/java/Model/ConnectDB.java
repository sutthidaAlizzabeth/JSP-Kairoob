/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

/**
 *
 * @author Alizzabeth
 */
public class ConnectDB {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        
        try
        {
            // 2 บรรทัดล่างนี้ใช้เชื่อมต่อ database
            Properties prop = new Properties();
            prop.setProperty("user", "kairoob");
            prop.setProperty("password", "bTLWzH");
            prop.setProperty("useUnicode", "true");
            prop.setProperty("characterEncoding", "UTF-8");
            
            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://jsp.itkmutt19.in.th/project_kairoob","kairoob","bTLWzH");
            Connection con = DriverManager.getConnection("jdbc:mysql://jsp.itkmutt19.in.th/project_kairoob", prop);
            
            // สร้างคำสั่ง sql เพื่อใช้งาน database จะใช้ Statement หรือ PreparedStatement ก็ได้
            String sql = "select * from Members;";
            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery(sql);
           
            // ด้านล่างนี้คือตัวอย่างการแสดงผลลัพธ์ที่ได้จาก database
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
