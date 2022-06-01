/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dht.pojo;

import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author dt_ng
 */
public class Word {
    public String word;
    public int description;
    private MultipartFile img;
    private MultipartFile img_ad;
     public int cate;

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }

    public int getDescription() {
        return description;
    }

    public void setDescription(int description) {
        this.description = description;
    }

    public MultipartFile getImg() {
        return img;
    }

    public void setImg(MultipartFile img) {
        this.img = img;
    }

    public MultipartFile getImg_ad() {
        return img_ad;
    }

    public void setImg_ad(MultipartFile img_ad) {
        this.img_ad = img_ad;
    }

    public int getCate() {
        return cate;
    }

    public void setCate(int cate) {
        this.cate = cate;
    }
   

    @Override
    public String toString() {
        return "Word{" + "word=" + word + ", description=" + description + ", img=" + img + ", img_ad=" + img_ad + '}';
    }
    
}
