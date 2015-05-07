/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

/**
 *
 * @author Alizzabeth
 */
public class History {
    private int id;
    private Date payDate;
    private int paymethodId;
    private int statusId;
    private int memberId;
    
    public static boolean checkHistory(int photoId , int member_id){
        boolean check = true;
        try {
            Connection con = ConnectDB.db();
            String sql = "select o.id from OrderList o join History h on o.id = h.id where  o.photo_id = ? and h.member_id = ?";
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setInt(1, photoId);
            pstm.setInt(2, member_id);
            ResultSet result = pstm.executeQuery();
            if(result.next()){
                check = false;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return check;
    }
}
