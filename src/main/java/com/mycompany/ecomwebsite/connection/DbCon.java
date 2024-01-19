/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.ecomwebsite.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;




/**
 *
 * @author hp
 */
public class DbCon {
    private static Connection connection = null ;  
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException{
        if (connection == null){
            
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce_cart","root","root");
                System.out.println("conected");
            }
            
            
     return connection ;   
    }
       
    }

