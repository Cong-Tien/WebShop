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
public class Category {
     private int id;
    private String namec;
    
    public Category() {
        
    }
    
    
    
    public Category(int id, String namec) {
        this.id = id;
        this.namec = namec;
       
    }

    public Category(int aInt, String string, String string0, double aDouble, String string1, String string2) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNamec() {
        return namec;
    }

    public void setNamec(String namec) {
        this.namec = namec;
    }

    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", namec=" + namec + '}';
    }

    
     

}
