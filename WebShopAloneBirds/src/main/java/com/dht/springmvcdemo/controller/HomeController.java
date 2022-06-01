/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dht.springmvcdemo.controller;

import com.dht.pojo.Account;
import com.dht.pojo.Category;
import com.dht.pojo.Product;
import com.dht.pojo.Word;
import com.dht.springmvcdemo4.HibernateUtil;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import static java.lang.Integer.parseInt;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author dt_ng
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/index")
    public String index(Model model) {

        Session session = HibernateUtil.getSessionFactory().openSession();

        Query p = session.createQuery("FROM Category");
        Query a = session.createQuery("FROM Product u ORDER BY u.id DESC");

        List<Category> categories = p.list();
        List<Product> last = a.list();

        session.close();

        model.addAttribute("list", categories);
        model.addAttribute("latest", last);

        return "index";
    }

    @RequestMapping(value = "/gallery")
    public String gallery(Model model, HttpServletRequest request, HttpServletResponse response, int cid) {
        int cateID = parseInt(request.getParameter("cid"));
        // int u=(int)cateID;

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query p = session.createQuery("FROM Category");
        Query a = session.createQuery("FROM Product u Where u.category_id=:lc");
        a.setParameter("lc", cateID);

        List<Product> last = a.list();
        List<Category> categories = p.list();

        session.close();

        model.addAttribute("list", categories);

        if (last.isEmpty() == true) {
            session.close();
            model.addAttribute("mess", "Loại Mặt Hàng Bạn Đang Tìm Kiếm Hiện Đang Hết Hàng Hoặc Ngưng Cung Cấp");
            return "gallery";
        } else {

            model.addAttribute("latest", last);
            model.addAttribute("mess", "Loại Mặt Hàng Bạn Đang Tìm Kiếm");
            return "gallery";
        }

    }

    @RequestMapping(value = "/confirm")
    public String confirm(Model model, HttpServletRequest request, HttpServletResponse response, String user, String pass) {

        String user1 = request.getParameter("user");
        String pass1 = request.getParameter("pass");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query a = session.createQuery("FROM Account u Where u.user=:lc and u.pass=:lq");

        a.setParameter("lc", user1);
        a.setParameter("lq", pass1);
        List<Account> accounts = a.list();
        Query p = session.createQuery("FROM Category");
        List<Category> categories = p.list();
        model.addAttribute("list", categories);
        model.addAttribute("account", accounts);

        Query q = session.createQuery("FROM Product u ORDER BY u.id DESC");
        List<Product> products = q.list();
        model.addAttribute("latest", products);

        session.beginTransaction();
        // Lấy danh mục theo khoá chính
        Account acc = (Account) session.get(Account.class, user1);
        if (accounts.isEmpty() == true) {
            model.addAttribute("mess", "Wrong user or password. Be careful with our attorneys!");
            return "singin";
        }
        if (acc == null) {
            session.close();
            model.addAttribute("mess", "Wrong user or password. Be careful with our attorneys!");
            return "singin";
        } else {
            if (acc.getCategoryuser() != 0) {
                model.addAttribute("acc", acc);
                return "index";
            } else {
                model.addAttribute("acc", acc);
                return "index";
            }

        }
    }
//

    @RequestMapping(value = "/signup")
    public String signup(Model model, HttpServletRequest request, HttpServletResponse response, String usernew, String passnew, String repass) throws IOException {
        String user1 = request.getParameter("usernew");
        String pass1 = request.getParameter("passnew");
        String repass1 = request.getParameter("repass");

        if (!pass1.equals(repass1)) {

            model.addAttribute("messs", "Wrong Repeat PassWord :(");
            return ("singin");
        } else {
            Session session = HibernateUtil.getSessionFactory().openSession();

            Query q = session.createQuery("FROM Product u ORDER BY u.id DESC");
            List<Product> products = q.list();
            model.addAttribute("latest", products);

            Query a = session.createQuery("FROM Account u Where u.user=:lc");
            a.setParameter("lc", user1);
            List<Account> acc = a.list();

            if (acc.isEmpty() == true) {

//                Query b = session.createQuery("INSERT INTO Account(user,pass)" + "VALUES(:ab,:ac)");
//
//                b.setParameter("ab", user1);
//                b.setParameter("ac", pass1);
                session.beginTransaction();
                Account cate = new Account(user1, pass1, 0);
//                 cate.setParameter("a", user1);
//                 cate.setParameter("b", pass1);

                session.save(cate);
                session.getTransaction().commit();

                //session.save(b);
                Query p = session.createQuery("FROM Account u Where u.user=:lc");
                p.setParameter("lc", user1);
                List<Account> acb = p.list();
                session.close();
                model.addAttribute("account", acb);
                //model.addAttribute("messss", "Create Account Success. Please login again to check your account");
                return "index";

            } else {
                session.close();
                model.addAttribute("messss", "User Existed :(");
                return "singin";
            }
        }

    }

    @RequestMapping(value = "/Signin")
    public String signin(Model model) {
        return "singin";
    }

    @RequestMapping(value = "/LoadNew")
    public String loadnew(Model model) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query p = session.createQuery("FROM Category");
        List<Category> categories = p.list();
        model.addAttribute("cate", categories);
        return "NewProduct";
    }

    @RequestMapping(value = "/LoadEdit")
    public String LoadEdit(Model model, HttpServletRequest request, HttpServletResponse response, int eid) throws IOException {
        int proId = parseInt(request.getParameter("eid"));
        // int u=(int)cateID;
        request.setCharacterEncoding("UTF-8");
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query p = session.createQuery("FROM Category");
        Query a = session.createQuery("FROM Product u Where u.id=:lc");
        a.setParameter("lc", proId);

        List<Product> last = a.list();
        List<Category> categories = p.list();

        session.close();
        model.addAttribute("product", last);
        model.addAttribute("category", categories);
        return "edit";
    }

    @RequestMapping(value = "/edit")
    public String edit(Model model, HttpServletRequest request, HttpServletResponse response, int id, String name, String image, String image_ad, int price, int category) throws IOException {
        Session session = HibernateUtil.getSessionFactory().openSession();
        request.setCharacterEncoding("UTF-8");
        String name1 = request.getParameter("name");
        String image1 = request.getParameter("image");
        String image_ad1 = request.getParameter("image_ad");
        int proID = parseInt(request.getParameter("id"));
        int price1 = parseInt(request.getParameter("price"));
        int category1 = parseInt(request.getParameter("category"));

        session.beginTransaction();
        Product pro = (Product) session.get(Product.class, proID);
        pro.setId(proID);
        pro.setName(name1);
        pro.setImage(image1);
        pro.setImage_ad(image_ad1);
        pro.setPrice(price1);
        pro.setCategory_id(category1);

        session.update(pro);
        session.getTransaction().commit();

        Query q = session.createQuery("FROM Product u order by u.id desc");

        List<Product> products = q.list();
        model.addAttribute("product", products);

        Query p = session.createQuery("FROM Category");
        List<Category> categories = p.list();
        session.close();
        model.addAttribute("category", categories);

        return "ManagerProduct";
    }

    @RequestMapping(value = "/newproduct")
    public String newproduct(Model model,
            HttpServletRequest request, int id, String image, String image_ad, String name, int price, int category) {
        try {
            request.setCharacterEncoding("UTF-8");

            String name1 = request.getParameter("name");
            String image11 = request.getParameter("image");
            String image_ad11 = request.getParameter("image_ad");
            //int proID = parseInt(request.getParameter("id"));
            int price1 = parseInt(request.getParameter("price"));
            int category1 = parseInt(request.getParameter("category"));

            Session session = HibernateUtil.getSessionFactory().openSession();

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

            Query q = session.createQuery("FROM Product u order by u.id desc");

            List<Product> products = q.list();
            session.close();

            model.addAttribute("product", products);

        } catch (UnsupportedEncodingException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "ManagerProduct";
    }

    @RequestMapping(value = "/delete")
    public String delete(Model model, HttpServletRequest request, HttpServletResponse response, int did) throws IOException {
        int proID = parseInt(request.getParameter("did"));

        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        // Lấy danh mục theo khoá chính
        Product pro = (Product) session.get(Product.class, proID);
        // Xoas danh mục      
        session.delete(pro);
        session.getTransaction().commit();

        Query q = session.createQuery("FROM Product u order by u.id desc");

        List<Product> products = q.list();
        session.close();
        model.addAttribute("product", products);

        return "ManagerProduct";
    }

    @RequestMapping(value = "/Manager")
    public String manager(Model model, HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query q = session.createQuery("FROM Product u order by u.id desc");
        Query p = session.createQuery("FROM Category");
        List<Product> products = q.list();
        List<Category> cates = p.list();
        session.close();
        model.addAttribute("product", products);
        model.addAttribute("cate", cates);
        return "ManagerProduct";
    }

    @RequestMapping(value = "/search")
    public String search(Model model, HttpServletRequest request, HttpServletResponse response, String keyword) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        String keyword1 = request.getParameter("keyword");
        Session session = HibernateUtil.getSessionFactory().openSession();
        Query a = session.createQuery("FROM Product u Where u.name like :lc or u.keyword like :lc");

        a.setParameter("lc", "%" + keyword1 + "%");

        Query p = session.createQuery("FROM Category");
        List<Category> categories = p.list();
        model.addAttribute("list", categories);

        Query q = session.createQuery("FROM Product u ORDER BY u.id DESC ");
        List<Product> products = q.list();
        model.addAttribute("latest", products);

        List<Product> acc = a.list();

        if (acc.isEmpty() == true) {
            session.close();
            model.addAttribute("mess", "Chúng tôi không tìm thấy sản phẩm nào. Vui lòng thử lại.");
            return "index";
        } else {
            model.addAttribute("mess", "Đây CÓ Phải Sản Phẩm Bạn Đang Tìm Kiếm");

            model.addAttribute("abcdef", acc);
            return "index";
        }

    }
//    @RequestMapping(value = "/search")
//    public String search(Model model, HttpServletRequest request, HttpServletResponse response, String keywork) {
//        String txtSearch = request.getParameter(keywork);
//        model.addAttribute("message", "Welcome to our Website!!!");
//
//        Session session = HibernateUtil.getSessionFactory().openSession();      
//        Query a = session.createQuery("FROM Product u Where u.name=:lc");
//        a.setParameter("lc","%"+txtSearch+"%");
////       ORDER BY u.id DESC
//        List<Product> last = a.list();
//
//        session.close();
//        model.addAttribute("search", last);
//
//        return "index";
//    }

    @RequestMapping(value = "/Detail")
    public String detail(Model model, HttpServletRequest request, HttpServletResponse response, int pid) {
        int proID = parseInt(request.getParameter("pid"));
        model.addAttribute("message", "Welcome to our Website!!!");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Query p = session.createQuery("FROM Category");
        Query a = session.createQuery("FROM Product u Where u.id=:lc");
        a.setParameter("lc", proID);

        List<Product> last = a.list();
        List<Category> categories = p.list();

        session.close();
        model.addAttribute("latest", last);
        model.addAttribute("list", categories);
        return "Detail";
    }

}
