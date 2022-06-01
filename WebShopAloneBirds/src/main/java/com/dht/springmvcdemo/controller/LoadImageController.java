/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dht.springmvcdemo.controller;

import com.dht.pojo.Category;
import com.dht.pojo.Product;
import com.dht.pojo.Word;
import com.dht.springmvcdemo4.HibernateUtil;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import static java.lang.Integer.parseInt;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author dt_ng
 */
@Controller
@RequestMapping(value = "/dicts")
public class LoadImageController {
    private final static Map<String, String> dicts;
    static {
        dicts = new HashMap<>();
        dicts.put("Hello", "Xin chào");
        dicts.put("Love", "Yêu");
        dicts.put("Computer", "Máy tính");
        dicts.put("Remember", "Nhớ");
        dicts.put("Artificial", "Nhân tạo");
    }    
    @RequestMapping
    public String index(ModelMap model) {
        model.addAttribute("message", "Welcome to Our Dictionary!!!");
        return "dicts";
    }    
    @RequestMapping(value = "/list")
    public String list(ModelMap model) {
        model.addAttribute("words", dicts);
        return "dicts-list";
    }
    @RequestMapping(value = "/list/{word}")
    public String details(ModelMap model, 
                      @PathVariable(value = "word") String word) {
        String message = dicts.get(word);
        if (message == null)
            message = "Không có từ này!!!";
        model.addAttribute("message", message);
        return "dicts-detail";
    }
    @RequestMapping(value = "/search/{word}")
    public String search(ModelMap model, 
                      @PathVariable(value = "word") String word) {
        String message = dicts.get(word);
        Map<String,String> temp = new HashMap<>();
        String destination = dicts.get(word);
        if (destination == null)
        {
            temp.put(word, word);
            model.addAttribute("words", temp);
            return "dicts-list";
        }
        model.addAttribute("message", message);
        return "dicts-detail";
    }
    @RequestMapping(value = "/add")
    public String addWordView(ModelMap model) {
        Word w = new Word();
        model.addAttribute("word", w);
         Session session = HibernateUtil.getSessionFactory().openSession();
         Query p = session.createQuery("FROM Category");
        List<Category> categories = p.list();
        model.addAttribute("list", categories);
        return "NewProduct";
    }
    @RequestMapping(value = "/abc")
    public String abc(Model model, HttpServletRequest request,int id, String image, String image_ad, String name, int price, int category) {
       try {          
            request.setCharacterEncoding("UTF-8");
            
              Session session = HibernateUtil.getSessionFactory().openSession();
            String name1 = request.getParameter("name");
            String image11 = request.getParameter("image");
            String image_ad11 = request.getParameter("image_ad");
            //int proID = 155;
            int price1 = parseInt(request.getParameter("price"));
            int category1 = parseInt(request.getParameter("category"));
            
            
            Query q = session.createQuery("FROM Product u order by u.id desc");
            
            List<Product> products = q.list();
            
            model.addAttribute("product", products);
            
            session.beginTransaction();
            Product pro = new Product();
            //pro.setId(proID);
            pro.setName(name1);
            pro.setImage(image11);
            pro.setImage_ad(image_ad11);
            pro.setPrice(price1);
            pro.setCategory_id(category1);
            
            session.save(pro);
            session.getTransaction().commit();
            session.close();
            
            
            
        } catch (UnsupportedEncodingException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
        }
       return "ManagerProduct";
    }
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addWordProcess(ModelMap model, 
                         @ModelAttribute(value = "word") Word newWord, HttpServletRequest request) {
         Session session = HibernateUtil.getSessionFactory().openSession();
         Query p = session.createQuery("FROM Category");
        List<Category> categories = p.list();
        model.addAttribute("list", categories);
        if (dicts.get(newWord.getWord()) == null) {
            MultipartFile img = newWord.getImg();                  
             MultipartFile img_ad = newWord.getImg_ad();
            String rootDir = request.getSession()
                                    .getServletContext().getRealPath("/");
            if (img != null && !img.isEmpty()) {
                try {
                    img.transferTo(new File(rootDir + "resources/images/" 
                            + newWord.getImg().getOriginalFilename()));
                    img_ad.transferTo(new File(rootDir + "resources/images/" 
                            + newWord.getImg_ad().getOriginalFilename()));
   
                } catch (IOException | IllegalStateException ex) {
                    System.err.println(ex.getMessage());
                }
            }
                             
            
            session.beginTransaction();
            Product pro = new Product();
            //pro.setId(proID);
            pro.setName(newWord.getWord());
            pro.setImage(img.getOriginalFilename());
            pro.setImage_ad(img_ad.getOriginalFilename());
            pro.setPrice(newWord.getDescription());
            pro.setCategory_id(newWord.getCate());
            
            session.save(pro);
            session.getTransaction().commit();
            
             
        return "NewProduct";
        } else {
            model.addAttribute("message", "Từ đã tồn tại!!!");
            return "NewProduct";
        }
    } 

}
