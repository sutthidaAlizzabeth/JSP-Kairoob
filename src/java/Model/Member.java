package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Member {
    int id = 0;                 //PK
    int idenNum = 0;            //int or String??
    String firstName = "";
    String lastName = "";
    String password = "";
    static String email = "";

    public Member() {
    }

    public static void addMember(String aemail, String apassword) {    

        String sqlInsert = "insert into Members (email, password) values (?,?);";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://jsp.itkmutt19.in.th/project_kairoob","kairoob","bTLWzH");

            PreparedStatement pstmInsert = con.prepareStatement(sqlInsert);
            
            pstmInsert.setString(1, aemail);
            pstmInsert.setString(2, apassword);
            
            pstmInsert.executeUpdate();
            
        } catch (Exception ex) {
            System.out.println(ex);
        }
        
    }
   
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdenNum() {
        return idenNum;
    }

    public void setIdenNum(int idenNum) {
        this.idenNum = idenNum;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public static String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    private static void getRow(Member mem, ResultSet rs) throws SQLException {
        mem.setId( rs.getInt("id"));
        mem.setIdenNum(rs.getInt("iden_num"));
        mem.setFirstName(rs.getString("first_name"));
        mem.setLastName(rs.getString("last_name"));
        mem.setPassword(rs.getString("password"));
        mem.setEmail( rs.getString("email"));
    }
    
    public static Member findById(int id) {
        Member mem = null ;     
        String sqlCmd = "select * from members where id=?";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://jsp.itkmutt19.in.th/project_kairoob","kairoob","bTLWzH");
            PreparedStatement pstm = con.prepareStatement(sqlCmd) ;
            pstm.setInt(1, id) ;
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                mem = new Member();
                getRow(mem, rs) ;
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return mem;
    }
    
    public static List<Member> findByName(String name) {                        //แก้ด้วยๆ
        Member mem = null ;
        List<Member> members = null ;        
        String sqlCmd = "select * from member where name like ?";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://jsp.itkmutt19.in.th/project_kairoob","kairoob","bTLWzH");
            PreparedStatement pstm = con.prepareStatement(sqlCmd) ;
            pstm.setString(1, name+ "%") ;
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                mem = new Member();
                getRow(mem, rs) ;
                if (members == null)
                    members = new ArrayList<Member>();
                members.add(mem);
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return members;
    }
    
     public static Member findByEmail(String email) {
        Member mem = null ;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://jsp.itkmutt19.in.th/project_kairoob","kairoob","bTLWzH");
            String sqlCmd = "select * from Members where email=?";
            PreparedStatement pstm = con.prepareStatement(sqlCmd) ;
            pstm.setString(1, email) ;
            ResultSet rs = pstm.executeQuery();
            if (rs.next()) {
                mem = new Member();
                getRow(mem, rs) ;
            }
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return mem;
    }
     
}
