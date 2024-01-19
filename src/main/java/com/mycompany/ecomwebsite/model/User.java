/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.ecomwebsite.model;

/**
 *
 * @author hp
 */
public class User {

    private int id;
    private String fname;
    private String lname;
    private String email;
    private String password;

    public User() {
    }
    
    public User(String fname,String lname,String email ,String password ){
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.password = password;
    }
    public User(int id, String fname, String lname, String email, String password) {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.password = password;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "user{" + "id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email + ", password=" + password + '}';
    }
    
    
}
