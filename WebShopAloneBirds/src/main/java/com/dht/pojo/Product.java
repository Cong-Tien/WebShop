/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dht.pojo;


/**
 *
 * @author dt_ng
 */
public class Product {
    private int id;
    private String name;
    private int price;
    private String image;
    private String image_ad;
    private int category_id;
    
    public Product() {
        
    }
    public Product(int id, String name,int price, String image, String image_ad, int category_id) {
        this.id = id;
        this.name = name;
        this.price=price;
        this.image=image;
        this.image_ad=image_ad;
        this.category_id=category_id;
        
    }
    // Các phương thức getter/setter của các thuộc tính

    public Product(int aInt, String string, String string0, double aDouble, String string1, String string2) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getImage_ad() {
        return image_ad;
    }

    public void setImage_ad(String image_ad) {
        this.image_ad = image_ad;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

   
   
   
    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", price=" + price + ", image=" + image + ", image_ad=" + image_ad + ", category_id=" + category_id + '}';
    }
    
    public void setParameter(String b, String pass1) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void setId(Object object) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    

   
    
}
