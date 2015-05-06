/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Properties;
import java.util.SortedSet;
import java.util.TreeSet;

/**
 *
 * @author Alizzabeth
 */
public class Photo implements Serializable, Comparable<Photo>{

    private int id = 0;//PK
    private String path = null;
    private String caption = null;
    private String tag = null;
    private String resolution = null;
    private double price = 0;
    private int categoryId = 0;//FK_Category

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getCaption() {
        return caption;
    }

    public void setCaption(String caption) {
        this.caption = caption;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getResolution() {
        return resolution;
    }

    public void setResolution(String resolution) {
        this.resolution = resolution;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
    
    public String getCategoryName(){
        String categoryName = null;
        String sql = "select category_name from Categories where id = ?";
        try {
            Connection con = ConnectDB.db();
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setInt(1, this.categoryId);
            ResultSet result = pstm.executeQuery();
            if(result.next()){
                categoryName = result.getString("category_name");
            }
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return categoryName;
    }

    public static Photo findById(int id) {
        Photo p = null;
        String sql = "select * from Photo where id = ?;";

        try {
            Connection con = ConnectDB.db();
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setInt(1, id);
            ResultSet result = pstm.executeQuery();

            if (result.next()) {
                p = new Photo();
                Photo.setPhoto(result, p);
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return p;
    }

    //method สำหรับเอาข้อมูลรูปภาพจาก database มาตั้งค่าใน object ของ photo
    private static Photo setPhoto(ResultSet result, Photo p) throws SQLException {
        p.setId(result.getInt("id"));
        p.setPath(result.getString("path"));
        p.setCaption(result.getString("caption"));
        p.setTag(result.getString("tag"));
        p.setResolution(result.getString("resolution"));
        p.setPrice(result.getDouble("price"));
        p.setCategoryId(result.getInt("category_id"));
        return p;
    }

    //method สำหรับค้นหา/ดึงรูปภาพขึ้นมาจาก database
    public static Collection<Photo> searchPhoto(String tag, int kind,String price, String res) throws ClassNotFoundException, SQLException {
        Collection<Photo> photoList = null;

        try {
            Connection con = ConnectDB.db();

            //ด้านล่างนี้คือการใช้งานฐานข้อมูล
            String sql = null;
            PreparedStatement pstm = null;

            //ถ้าเป็นการค้นหาแยกตามประเภทของรูปภาพ
            //ถ้า kind = 0 หมายถึงให้ค้นหาจากทุกประเภท
            if (kind != 0 && price.equals("all") && res.equals("all")) {
                sql = "select * from Photo where category_id = ? and tag like ? ;";
                pstm = con.prepareStatement(sql);
                pstm.setInt(1, kind);
                pstm.setString(2, tag);
            }else if(kind != 0 && price.equals("less500") && res.equals("all")){
                sql = "select * from Photo where price < 500 and category_id = ? and tag like ? ;";
                pstm = con.prepareStatement(sql);
                pstm.setInt(1, kind);
                pstm.setString(2, tag);
            }else if(kind != 0 && price.equals("500-1,000") && res.equals("all")){
                sql = "select * from Photo where price between 500 and 1000 and category_id = ? and tag like ? ;";
                pstm = con.prepareStatement(sql);
                pstm.setInt(1, kind);
                pstm.setString(2, tag);
            }else if(kind != 0 && price.equals("1,000-1,500") && res.equals("all")){
                sql = "select * from Photo where price between 1000 and 1500 and category_id = ? and tag like ? ;";
                pstm = con.prepareStatement(sql);
                pstm.setInt(1, kind);
                pstm.setString(2, tag);
            }else if(kind != 0 && price.equals("1,500-2,000") && res.equals("all")){
                sql = "select * from Photo where price between 1500 and 2000 and category_id = ? and tag like ? ;";
                pstm = con.prepareStatement(sql);
                pstm.setInt(1, kind);
                pstm.setString(2, tag);
            }else if(kind != 0 && price.equals("more2,000") && res.equals("all")){
                sql = "select * from Photo where price > 2000 and category_id = ? and tag like ? ;";
                pstm = con.prepareStatement(sql);
                pstm.setInt(1, kind);
                pstm.setString(2, tag);
            }
            else {
                sql = "select * from Photo where tag like ? ;";
                pstm = con.prepareStatement(sql);
                pstm.setString(1, tag);
            }
            //เก็บผลลัพธ์จาก database ไว้ใน "result"
            ResultSet result = pstm.executeQuery();
            //เอา result มาเช็คว่ามีข้อมูลหรือไม่
            while (result.next()) {
                //ถ้าเป็นครั้งแรกของ loop ให้ new ArrayList
                if (photoList == null) {
                    photoList = new TreeSet<Photo>() {};
                }
                Photo p = new Photo();
                //เอาข้อมูลที่ได้จาก database (ใน result) ไปยัดใส่ object ของ photo (ตัวแปร p) ด้วย method setPhoto
                //แล้วยัดใส่ ArrayList ชื่อ photoList
                photoList.add(Photo.setPhoto(result, p));
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return photoList;
    }

    

    @Override
    public int compareTo(Photo o) {
        return this.getId() - o.getId();
    }

}
