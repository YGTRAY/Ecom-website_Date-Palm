/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.ecomwebsite.model.dao;
import com.mycompany.ecomwebsite.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author hp
 */
public class UserDao {
    private Connection con ;
    private String query;
    private PreparedStatement pst ;
    private ResultSet rs ;
    
    
    public UserDao(Connection con ){
        this.con = con ;
        
    }
    
    public User userLogin(String email , String password){
        User user  = null ; 
        try {
            query = "select * from users where email=? and password=?";
            pst=this.con.prepareStatement(query);
            pst.setString(1,email);
            pst.setString(2,password);
            rs= pst.executeQuery();
            
            if(rs.next()){
                user = new User();
                user.setId(rs.getInt("id"));
                user.setFname(rs.getString("fname"));
                user.setLname(rs.getString("lname"));
                user.setEmail(rs.getString("email"));

            }
            
            
        
    }catch (Exception e){
        e.printStackTrace();
        System.out.print(e.getMessage());
    }
        return user ;

}
}
