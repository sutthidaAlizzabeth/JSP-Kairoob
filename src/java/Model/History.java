/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Alizzabeth
 */
public class History {
    private int id;
    private Date payDate;
    private String paymethod;
    private String status;
    private int memberId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getPayDate() {
        return payDate;
    }

    public void setPayDate(Date payDate) {
        this.payDate = payDate;
    }

    public String getPaymethod() {
        return paymethod;
    }

    public void setPaymethod(int paymethodId) {
        try {
            Connection con = ConnectDB.db();
            String sql = "select method_name from PaymentMethod where id = ?";
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setInt(1, paymethodId);
            ResultSet result = pstm.executeQuery();
            if(result.next()){
                paymethod = result.getString("method_name");
            }
        } catch (Exception e) {
        }
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(int statusId) {
        try {
            Connection con = ConnectDB.db();
            String sql = "select status_name from Status where id = ?";
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setInt(1, statusId);
            ResultSet result = pstm.executeQuery();
            if(result.next()){
                status = result.getString("status_name");
            }
        } catch (Exception e) {
        }
    }

    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }
    
    public static boolean checkHistory(int photoId , int member_id){
        
        boolean check = true;
        try {
            Connection con = ConnectDB.db();
            String sql = "select o.id from OrderList o join History h on o.id = h.id where  o.photo_id = ? and h.member_id = ?";
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setInt(1, photoId);
            pstm.setInt(2, member_id);
            ResultSet result = pstm.executeQuery();
            while(result.next()){
                check = false;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return check;
    }
    
    public static History getHistory(ResultSet result, History his) throws SQLException{
        his.setId(result.getInt("id"));
        his.setPayDate(result.getDate("pay_date"));
        his.setPaymethod(result.getInt("payment_method_id"));
        his.setStatus(result.getInt("status_id"));
        his.setMemberId(result.getInt("member_id"));
        
        return his;
    }
    
    public static List<History> historyList(int member_id){
        List<History> his = null ;
        
        try {
            Connection con = ConnectDB.db();
            String sql = "select * from History where member_id = ?";
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setInt(1, member_id);
            ResultSet result = pstm.executeQuery();
            while(result.next()){
                if(his == null){
                    his = new ArrayList<History>();
                }
                History aHis = new History();
                getHistory(result, aHis);
                his.add(aHis);
            }
        } catch (Exception e) {
        }
        
        return his;
    }
}
