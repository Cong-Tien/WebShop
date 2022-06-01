/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dht.pojo;

import java.io.Serializable;

/**
 *
 * @author Công Tiến
 */
public class Account {

    private String user;
    private String pass;
    private int categoryuser;

    public Account() {

    }

    public Account(String user, String pass, int categoryuser) {
        this.user = user;
        this.pass = pass;   
        this.categoryuser=categoryuser;
    }

    public Account(int aInt, String string, String string0, double aDouble, String string1, String string2) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

  



    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }


    public int getCategoryuser() {
        return categoryuser;
    }

    public void setCategoryuser(int categoryuser) {
        this.categoryuser = categoryuser;
    }

    @Override
    public String toString() {
        return "Account{" + "user=" + user + ", pass=" + pass + ", categoryuser=" + categoryuser + '}';
    }

    

    public void setParameter(String b, String pass1) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

   

}
