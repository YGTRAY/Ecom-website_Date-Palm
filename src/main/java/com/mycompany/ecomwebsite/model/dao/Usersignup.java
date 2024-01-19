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
public class Usersignup {
    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;
public Usersignup(Connection con) {
        this.con = con;
}
//for register user 
public boolean saveUser(User user){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into users (fname,lname,email,password) values(?,?,?,?)";

           pst = this.con.prepareStatement(query);
           pst.setString(1, user.getFname());
           pst.setString(2, user.getLname());
           pst.setString(3, user.getEmail());
           pst.setString(4, user.getPassword());
           pst.executeUpdate();
           set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
    
}
