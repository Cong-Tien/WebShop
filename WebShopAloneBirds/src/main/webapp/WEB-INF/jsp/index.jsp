<%-- 
    Document   : index
    Created on : Mar 22, 2022, 2:13:06 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="google-site-verification" content="xFnIbRiqlbUWt2-5yqv6TejVhQ1oYB1hZiZ1jRXLzHw" />
        <link rel="icon" type="image/png" href="./image/logo.png">
        <link rel="image_src" href="https://res.yame.vn/Content/images/yame.png">
        <link rel="stylesheet" href="style.css">
        <title>AloneBirds - Stores</title>

        <meta name="description" content="Giao Hàng Nhanh Miễn Phí ✓ Bảo Hành 365 Ngày ✓ 7 Ngày Đổi Hàng Miễn Phí. Mua Online Giá Rẻ Bất Ngờ" />

        <meta name="keywords" content="quần áo thời trang nam nữ, quần áo nam, quàn áo nữ, thời trang nam giá rẻ, thời trang nữ giá rẻ, shop thời trang nam nữ" />


        <!-- Start Style Css -->
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,100italic,300italic,400italic,500,700,500italic,700italic,900&subset=latin,greek,greek-ext,vietnamese,latin-ext,cyrillic-ext,cyrillic' rel='stylesheet' type='text/css'>



        <link href="https://res.yame.vn/4/Content/CssFramework.css" rel="stylesheet"/>

        <link href="https://res.yame.vn/4/Content/theme1/fonts/icomoon/style.css" rel="stylesheet"/>

        <link href="https://res.yame.vn/4/Content/theme1.css" rel="stylesheet"/>

        <link href="https://res.yame.vn/4/Content/Custom.css" rel="stylesheet"/>

        <link href="https://res.yame.vn/4/Scripts/OwlCarousel2/assets/owl.carousel.min.css" rel="stylesheet"/>

        <link type="text/css" rel="stylesheet" href="https://www.gstatic.com/firebasejs/ui/4.4.0/firebase-ui-auth.css" />
        <!-- End Style Css -->
    </head>

    <body>
    <!-- Start Menu <h1>${message}</h1>-->

        <div class="site-wrap">
            <div class="site-navbar bg-dark py-2 stickyDiv">
                <div class="search-wrap" >
                    <div style="border: 8px solid pink; border-radius: 15px; height:60px" class="container">
                        <a href="search" class="search-close js-search-close"><span class="icon-close2"></span></a>
                        <form  action="search" method="get">
                            <input style="font-size: 18px" type="text" name="keyword" class="form-control " placeholder="Nhập sản phẩm cần tìm...">
                        </form>
                    </div>
                </div>
                <div class="container">
                    <div class="d-flex align-items-center justify-content-between">
                        <div class="logo">
                            <div class="site-logo">
                                <a href="/WebShopAloneBirds" class="js-logo-clone">
                                    <img src="./images/logo.png" alt="" style="width: 66px;" />
                                </a>
                            </div>
                        </div>
                        <div class="main-nav d-none d-lg-block">
                            <nav class="site-navigation text-right text-md-center" role="navigation">
                                <ul class="site-menu js-clone-nav d-none d-lg-block">
                                    <li class="has-children">
                                        <a style="font-family: cursive" href="">CATEGORY</a>
                                        <ul class="dropdown">
                                            <c:forEach items="${list}" var="o">
                                                <li><a style="font-family: cursive" href="/WebShopAloneBirds/gallery?cid=${o.id}">${o.namec}</a></li> 
                                                </c:forEach>                                                                                     
                                        </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="">GU THIẾT KẾ 4MEN 18+</a>
                                        <ul class="dropdown">
                                            <li><a href="/shop/12-vi-anh-hung?s=2">GU 12 Vị Anh Hùng Dân Tộc</a></li>
                                            <li><a href="/shop/vi-than-co-ai?s=2">GU Thần Cổ Đại</a></li>
                                            <li><a href="/shop/nguyen-to-chom-sao?s=2">GU Ngân Hà</a></li>
                                            <li><a href="/shop/thien-nhien-ky-vi?s=2">GU Dị Biệt</a></li>
                                            <li><a href="/shop/y-originals?s=2">GU Y Nguyên Bản 18+</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="/shop/gu-don-gian?s=2">GU ĐƠN GIẢN 4ALL</a>
                                        <ul class="dropdown">
                                            <li><a href="/shop/ao-thun-don-gian?s=11">Áo thun đơn giản</a></li>
                                            <li><a href="/shop/ao-khoac-on-gian-2?s=11">Áo Khoác đơn giản 2</a></li>
                                            <li><a href="/shop/ao-so-mi-don-gian?s=2">Áo sơ mi đơn giản</a></li>
                                            <li><a href="/shop/quan-dai-don-gian?s=2">Quần dài đơn giản</a></li>
                                            <li><a href="/shop/quan-short-don-gian?s=11">Quần short đơn giản</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="/shop/gu-thoi-trang-unisex?s=2">GU UNISEX GEN Z</a>
                                        <ul class="dropdown">
                                            <li><a href="/shop/linh-vat?s=11">GU Linh vật</a></li>
                                            <li><a href="/shop/y-nguyen-ban-18-?s=11">GU Y Nguyên Bản 18-</a></li>
                                        </ul>
                                    </li>

                                    <li class="has-children position-static">
                                        <a href="javascript:;"><span class="icon-menu"></span></a>
                                        <div class="dropdown w-100 dropdown-fullw">
                                            <div class="d-flex flex-wrap">
                                                <div class="p-3">
                                                    <a href="/shop/ao-thun?s=11" class="text-uppercase">Áo Thun</a>
                                                    <ul class="list-unstyled">
                                                        <li><a href="/shop/ao-thun-form-tieu-chuan?s=11">Áo Thun Form Tiêu Chuẩn</a></li>
                                                        <li><a href="/shop/ao-thun-form-rong?s=11">Áo Thun Form Rộng</a></li>
                                                        <li><a href="/shop/ao-thun-3-lo?s=11">Áo thun 3 Lỗ</a></li>
                                                        <li><a href="/shop/ao-thun-co-tru?s=11">Áo Thun Cổ Trụ</a></li>
                                                        <li><a href="/shop/ao-thun-sweater?s=11">Áo Thun Sweater</a></li>
                                                    </ul>
                                                </div>
                                                <div class="p-3">
                                                    <a href="/shop/ao-khoac?s=11" class="text-uppercase">Áo khoác</a>
                                                    <ul class="list-unstyled">
                                                        <li><a href="/shop/ao-khoac-thiet-ke?s=11">Áo khoác Thiết Kế</a></li>
                                                        <li><a href="/shop/ao-khoac-don-gian?s=11">Áo khoác Đơn Giản</a></li>
                                                        <li><a href="/shop/ao-khoac-the-thao?s=11">Áo khoác Thể Thao</a></li>
                                                        <li><a href="/shop/ao-hoodie?s=11">Áo Hoodie</a></li>
                                                        <li><a href="/shop/ao-khoac-co-non?s=11">Áo khoác có nón</a></li>
                                                    </ul>
                                                </div>
                                                <div class="p-3">
                                                    <a href="/shop/ao-so-mi?s=2" class="text-uppercase">Áo sơ mi</a>
                                                    <ul class="list-unstyled">
                                                        <li><a href="/shop/ao-so-mi-tay-dai?s=2">Áo sơ mi tay dài</a></li>
                                                        <li><a href="/shop/ao-so-mi-tay-ngan?s=11">Áo sơ mi tay ngắn</a></li>
                                                    </ul>
                                                    <a href="/shop/quan-jean?s=2" class="text-uppercase mt-3"></a>
                                                </div>
                                                <div class="p-3">
                                                    <a href="/shop/quan-dai?s=2" class="text-uppercase">Quần dài</a>
                                                    <ul class="list-unstyled">
                                                        <li><a href="/shop/quan-jogger?s=11">Quần Jogger</a></li>
                                                        <li><a href="/shop/quan-tay?s=11">Quần Tây</a></li>
                                                        <li><a href="/shop/quan-ong-rong?s=11">Quần Ống Rộng</a></li>
                                                    </ul>  
                                                </div>
                                                <div class="p-3">
                                                    <a href="/shop/quan-short?s=2" class="text-uppercase">Quần Short</a>
                                                    <ul class="list-unstyled">
                                                        <li><a href="/shop/quan-jogger?s=11">Quần Jean Cotton</a></li>
                                                        <li><a href="/shop/quan-tay?s=11">Quần Kaki Cotton</a></li>
                                                        <li><a href="/shop/quan-ong-rong?s=11">Quần Double-Face</a></li>
                                                    </ul>	
                                                </div>
                                                <div class="p-3">
                                                    <a href="/shop/phu-kien-nam?s=2" class="text-uppercase">Phụ kiện</a>
                                                    <ul class="list-unstyled">
                                                        <li><a href="/shop/non?s=11">Nón</a></li>
                                                        <li><a href="/shop/tat---vo?s=2">Tất - Vớ</a></li>
                                                        <li><a href="/shop/day-nit-nam?s=11">Dây Nịt Da</a></li>
                                                        <li><a href="/shop/vi-da?s=11">Ví Da</a></li>
                                                    </ul>
                                                </div>
                                                <div class="p-3">
                                                    <a href="/shop/bltx?s=2" class="text-uppercase">Balo-Túi</a>

                                                    <ul></ul>
                                                    <a href="/shop/giay-dep-sandal?s=11" class="text-uppercase mt-3">Giày Đẹp Sandal</a>
                                                </div>
                                                <div class="p-3">
                                                    <a href="/shop/flash-sale-50?s=2" class="text-uppercase">FLASH SALE</a>

                                                    <ul></ul>
                                                    <a href="/shop/hang-mo-ban?s=11" class="text-uppercase mt-3">MỞ BÁN</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div class="icons align-items-right" id="rightIconsBar">
                            
                            <c:forEach items="${account}" var="o">
                                <h2 style="color: hotpink;font-size: 20px;margin-top: 5px;margin-left: 30px; margin-bottom: -7px; font-weight: 400; "><span class="icon-user-o">: <i>${o.user}</i></h2>                              
                            </c:forEach>
                            <a href="javascript:;" class="icons-btn d-inline-block js-search-open"><span class="icon-search"></span></a>
                            <a class="icons-btn d-inline-block" href="Signin"><span class="icon-user-o"> </span></a>
                            <a href="/cart/review" class="icons-btn d-inline-block bag">
                                <span class="icon-shopping-bag"></span>
                                <span class="number" id="NoOfItemsInCart">0</span>
                            </a>

                            <a href="#" class="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none"><span class="icon-menu"></span></a>
                            <a style="margin-left:20px; font-family: cursive; color: hotpink;font-size: 20px;margin-bottom: 10px!important  " class="${acc.categoryuser==1 ? "":"invisible"}" href="Manager">ManagerShop</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- End Menu -->

            <div class="container-fluid mb-4">
                <div style="text-align: center" class="col-sm-12 text-center">
                    <p style=" font-family: cursive; font-size:24px; padding-top:10px; color:hotpink; padding-bottom: 10px" class="mb-1"><b>${mess}</b></p>                     
                </div>  
                <div class="row container-fluid mb-4 ml-3" ">               
                    <c:forEach items="${abcdef}" var="o">
                        <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up" style="background-color: lightgoldenrodyellow;">
                            <div class="pitem mb-3">
                                <div class="owl-carousel owl-theme dsHinhSanPham">
                                    <a href="">
                                        <--<!-- <img loading="lazy" src="${o.image}" alt="Trắng" class="img-fluid d-block w-100" /> -->
                                        <img src="./images/${o.image}" alt=""> 
                                    </a>
                                    <a href="ege">
                                        <!-- <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-ver12-0020772/1453a6bd-3792-0300-4dd3-001904648163.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" /> -->
                                        <img src="./images/${o.image_ad}" alt="">
                                    </a>
                                </div>
                                <div class="price">
                                    <span class="mb-1">
                                        <p>${o.name}</p>
                                        <span style="text-decoration:line-through">199</span>
                                        <span style="color:#ff0000">${o.price}</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="row " data-aos="zoom-in" style="margin-top:-30px">
                    <div class="col-12 text-center mb-2 px-0">
                        <a href="">
                            <!-- Sửa id -->
                            <img loading="eager" src="https://th.bing.com/th/id/R.ac59a29f7b7eb0c596955a325f547c41?rik=yhl3wgfRF81ltw&pid=ImgRaw&r=0"  class="img-fluid" alt="Flash Sale 50%" style="margin:auto; width:100%;" />
                        </a>
                    </div>
                </div>
                <div class="row" data-aos="zoom-in">
                    <div class="owl-carousel owl-theme" id="dsLookbook">
                        <div class="col-12  px-1">
                            <h4 style="padding-top:20px;" class="fw-normal"><a href="/bai-viet/mo-ban-2904-lb1/477a8409-3dc3-494a-b1ad-c0f823beb775">Mở B&#225;n 2904 LB1</a></h4>
                            <div class="banner-home3-colection-top" style="margin-bottom:10px;">
                                <a href="/bai-viet/mo-ban-2904-lb1/477a8409-3dc3-494a-b1ad-c0f823beb775">
                                    <img loading="lazy" class="img-fluid" src="https://cmsv2.yame.vn/uploads/f2c7c59c-b524-4610-bcdd-684022bf7774/THUMB-LOOKBOOK-1-CH%e1%bb%ae.jpg?quality=80&amp;w=700&amp;h=0" alt="Mở B&#225;n 2904 LB1">
                                </a>
                            </div>
                            <div class="row"></div>
                        </div>
                        <div class="col-12  px-1">
                            <h4 style="padding-top:20px;" class="fw-normal"><a href="/bai-viet/mo-ban-2904-lb2/069e629d-b75f-4aae-a055-0c00e41552ae">Mở B&#225;n 2904 LB2</a></h4>
                            <div class="banner-home3-colection-top" style="margin-bottom:10px;">
                                <a href="/bai-viet/mo-ban-2904-lb2/069e629d-b75f-4aae-a055-0c00e41552ae">
                                    <img loading="lazy" class="img-fluid" src="https://cmsv2.yame.vn/uploads/62b0e1bc-e88d-49aa-a511-a1ec406cb36b/thumbmoban.jpg?quality=80&amp;w=700&amp;h=0" alt="Mở B&#225;n 2904 LB2">
                                </a>
                            </div>
                            <div class="row"></div>
                        </div>
                        <div class="col-12  px-1">
                            <h4 style="padding-top:20px;" class="fw-normal"><a href="/bai-viet/mo-ban-2204-lb1/05d28460-4bad-4f9c-a2ec-224c932fd197">Mở B&#225;n 2204 LB1</a></h4>
                            <div class="banner-home3-colection-top" style="margin-bottom:10px;">
                                <a href="/bai-viet/mo-ban-2204-lb1/05d28460-4bad-4f9c-a2ec-224c932fd197">
                                    <img loading="lazy" class="img-fluid" src="https://cmsv2.yame.vn/uploads/c025ef7f-f009-423e-9ac8-07aa6cd2be50/Thum_blog_MB_22_fix.jpg?quality=80&amp;w=700&amp;h=0" alt="Mở B&#225;n 2204 LB1">
                                </a>
                            </div>
                            <div class="row">
                                <div class="col-3">
                                    <div class="pitem">
                                        <a href="/shop/ao-thun-form-tieu-chuan/ao-thun-co-tron-toi-gian-m7-0020770?c=Đen">
                                            <img loading="lazy" class="img-fluid" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-m7-0020770/a406ac7f-9982-8000-1257-0018ff0941e3.jpg?w=270&h=378&c=true&ntf=false" alt="&#193;o Thun Cổ Tr&#242;n Tối Giản M7" />
                                        </a>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="pitem">
                                        <a href="/shop/gu-don-gian/so-mi-tay-dai-on-gian-m36-0020691?c=Trắng">
                                            <img loading="lazy" class="img-fluid" src="https://cdn2.yame.vn/pimg/so-mi-tay-dai-on-gian-m36-0020691/63a8e437-47ae-1f00-656a-0018ff066ea2.jpg?w=270&h=378&c=true&ntf=false" alt="Sơ Mi Tay D&#224;i Đơn Giản M36" />
                                        </a>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="pitem">
                                        <a href="/shop/gu-the-thao/ao-thun-co-tron-the-thao-m24-0020706?c=Đen">
                                            <img loading="lazy" class="img-fluid" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-the-thao-m24-0020706/7d0d8303-9ec9-6300-1f34-0018ff084858.jpg?w=270&h=378&c=true&ntf=false" alt="&#193;o Thun Cổ Tr&#242;n Thể Thao M24" />
                                        </a>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="pitem">
                                        <a href="/shop/gu-don-gian/quan-dai-vai-on-gian-y-nguyen-ban-ver7-0020590?c=Xanh Đen">
                                            <img loading="lazy" class="img-fluid" src="https://cdn2.yame.vn/pimg/quan-dai-vai-on-gian-y-nguyen-ban-ver7-0020590/39605576-9f8e-0100-8510-0018ff05f3b0.jpg?w=270&h=378&c=true&ntf=false" alt="Quần D&#224;i Vải Đơn Giản Y Nguy&#234;n Bản Ver7" />
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12  px-1">
                            <h4 style="padding-top:20px;" class="fw-normal">
                                <a href="/bai-viet/mo-ban-2204-lb2/83327d65-d6aa-4b68-9982-aae0141b3ffb">Mở Bán 2204 LB2</a>
                            </h4>
                            <div class="banner-home3-colection-top" style="margin-bottom:10px;">
                                <a href="/bai-viet/mo-ban-2204-lb2/83327d65-d6aa-4b68-9982-aae0141b3ffb">
                                    <img loading="lazy" class="img-fluid" src="https://cmsv2.yame.vn/uploads/bdce2b99-06a9-4502-9fdd-31f8cba1606a/Thum_MB_22_fix.jpg?quality=80&amp;w=700&amp;h=0" alt="Mở B&#225;n 2204 LB2">
                                </a>
                            </div>
                            <div class="row">
                                <div class="col-3">
                                    <div class="pitem">
                                        <a href="/shop/gu-don-gian/so-mi-tay-dai-on-gian-m36-0020692?c=Đen">
                                            <img loading="lazy" class="img-fluid" src="https://cdn2.yame.vn/pimg/so-mi-tay-dai-on-gian-m36-0020692/d561d38a-99d9-2f00-2be2-0018ff06ff77.jpg?w=270&h=378&c=true&ntf=false" alt="Sơ Mi Tay D&#224;i Đơn Giản M36" />
                                        </a>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="pitem">
                                        <a href="/shop/gu-the-thao/ao-thun-co-tron-the-thao-m24-0020706?c=Đen">
                                            <img loading="lazy" class="img-fluid" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-the-thao-m24-0020706/7d0d8303-9ec9-6300-1f34-0018ff084858.jpg?w=270&h=378&c=true&ntf=false" alt="&#193;o Thun Cổ Tr&#242;n Thể Thao M24" />
                                        </a>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="pitem">
                                        <a href="/shop/gu-don-gian/quan-dai-vai-on-gian-y-nguyen-ban-ver7-0020590?c=Xanh Đen">
                                            <img loading="lazy" class="img-fluid" src="https://cdn2.yame.vn/pimg/quan-dai-vai-on-gian-y-nguyen-ban-ver7-0020590/39605576-9f8e-0100-8510-0018ff05f3b0.jpg?w=270&h=378&c=true&ntf=false" alt="Quần D&#224;i Vải Đơn Giản Y Nguy&#234;n Bản Ver7" />
                                        </a>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="pitem">
                                        <a href="/shop/gu-the-thao/ao-thun-co-tron-the-thao-m25-0020700?c=Xanh Đen">
                                            <img loading="lazy" class="img-fluid" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-the-thao-m25-0020700/f7ef0522-97aa-4100-bd32-0018ff0781aa.jpg?w=270&h=378&c=true&ntf=false" alt="&#193;o Thun Cổ Tr&#242;n Thể Thao M25" />
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mt-4" data-aos="zoom-in">
                    <div class="col-6 col-md-3 mb-2  px-0">
                        <a href="/bai-viet/poly-freshgear---chuyen-the-thao/4460f50e-31bc-4243-8677-ecd817d41330">
                            <img class="img-fluid" loading="lazy" src="https://cmsv2.yame.vn/uploads/be95d51a-5b11-4069-a19c-3f309000b9ea/thum_Poly_Freshgear.jpg?quality=80&amp;w=350&amp;h=0" alt="POLY FRESHGEAR  - CHUY&#202;N THỂ THAO">
                        </a>
                    </div>
                    <div class="col-6 col-md-3 mb-2  px-0">
                        <a href="/bai-viet/jean-cotton-spandex/383a828d-ed52-4f56-99ce-13393fba4885">
                            <img class="img-fluid" loading="lazy" src="https://cmsv2.yame.vn/uploads/80f24eae-5963-4d35-b7d4-99c42df887e9/thum_JEAN_COTTON_SPANDEX.jpg?quality=80&amp;w=350&amp;h=0" alt="JEAN COTTON SPANDEX">
                        </a>
                    </div>
                    <div class="col-6 col-md-3 mb-2  px-0">
                        <a href="/bai-viet/cotton-compact---100-soi-bong/a65711de-8290-4ec6-aa08-b79ad5227072">
                            <img class="img-fluid" loading="lazy" src="https://cmsv2.yame.vn/uploads/a08d7f11-9792-4d6c-a3f0-9cbba8d3b8f3/Thum_cotton.jpg?quality=80&amp;w=350&amp;h=0" alt="COTTON COMPACT - 100% SỢI B&#212;NG">
                        </a>
                    </div>
                    <div class="col-6 col-md-3 mb-2  px-0">
                        <a href="/bai-viet/antimicrobial---vai-thun-khang-khuan/238c0db0-d33c-4516-9b53-c71fc47e34d8">
                            <img class="img-fluid" loading="lazy" src="https://cmsv2.yame.vn/uploads/8f29f55a-201d-428e-b40e-f8706172224f/Anti_Thumb_VKK_(1280x1000).jpg?quality=80&amp;w=350&amp;h=0" alt="ANTIMICROBIAL - VẢI THUN KH&#193;NG KHUẨN">
                        </a>
                    </div>
                    <div class="col-6 col-md-3 mb-2  px-0">
                        <a href="/bai-viet/cafe-fabric---soi-ca-phe-thien-nhien1/3353091f-66a1-4fba-a69f-523811b6fd6a">
                            <img class="img-fluid" loading="lazy" src="https://cmsv2.yame.vn/uploads/ae57bdcd-556a-433d-83ee-6744d8fad849/Banner_web_1280x1000.jpg?quality=80&amp;w=350&amp;h=0" alt="CAF&#201; FABRIC - SỢI C&#192; PH&#202; THI&#202;N NHI&#202;N">
                        </a>
                    </div>
                    <div class="col-6 col-md-3 mb-2  px-0">
                        <a href="/bai-viet/bamboo---soi-tre-khang-khuan-vuot-troi/fbb358a0-e4de-48bb-86be-d69535cb3963">
                            <img class="img-fluid" loading="lazy" src="https://cmsv2.yame.vn/uploads/f12045d4-ad31-4585-9c9e-50a558997a8c/Banner_web_BB_1280x1000.jpg?quality=80&amp;w=350&amp;h=0" alt="BAMBOO - SỢI TRE KH&#193;NG KHUẨN VƯỢT TRỘI">
                        </a>
                    </div>
                    <div class="col-6 col-md-3 mb-2  px-0">
                        <a href="/bai-viet/modal---soi-tu-bot-go-tu-nhien/8c962346-d93a-44ce-a45c-8015c6922aa9">
                            <img class="img-fluid" loading="lazy" src="https://cmsv2.yame.vn/uploads/fa5585eb-c0c9-40ba-af29-48203f70d88f/modal_Thum.jpg?quality=80&amp;w=350&amp;h=0" alt="MODAL - SỢI TỪ BỘT GỖ TỰ NHI&#202;N">
                        </a>
                    </div>
                    <div class="col-6 col-md-3 mb-2  px-0">
                        <a href="/bai-viet/french-terry---cotton-100/e4ed77ac-cf99-4bbd-b16f-4d753aa29c55">
                            <img class="img-fluid" loading="lazy" src="https://cmsv2.yame.vn/uploads/b9c09c9c-3b70-4e42-acd1-12042bb310d7/0_French-Terry.jpg?quality=80&amp;w=350&amp;h=0" alt="FRENCH TERRY - COTTON 100%">
                        </a>
                    </div>
                </div>
                <!--  -->
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <p style="font-size:24px; padding-top:20px;" class="mb-1">Top sản phẩm HOT</p>
                        <p>Những sản phẩm thời trang mới nhất/Hot nhất</p>
                    </div>
                    <c:forEach items="${latest}" var="o">
                        <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                            <div class="pitem mb-3">
                                <div class="owl-carousel owl-theme dsHinhSanPham">
                                    <a href="/WebShopAloneBirds/Detail?pid=${o.id}">
                                        <--<!-- <img loading="lazy" src="${o.image}" alt="Trắng" class="img-fluid d-block w-100" /> -->
                                        <img src="./images/${o.image}" alt=""> 
                                    </a>
                                    <a href="/WebShopAloneBirds/Detail?pid=${o.id}">
                                        <!-- <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-ver12-0020772/1453a6bd-3792-0300-4dd3-001904648163.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" /> -->
                                        <img src="./images/${o.image_ad}" alt="">
                                    </a>
                                </div>
                                <div class="price">
                                    <span class="mb-1">
                                        <p>${o.name}</p>
                                        <span style="text-decoration:line-through">199</span>
                                        <span style="color:#ff0000">${o.price}</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/ao-thun-co-tron-toi-gian-ver12-0020772?c=Trắng">
                                    <!-- <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-ver12-0020772/8d37fdf7-e945-0200-a992-0019046480a2.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" /> -->
                                    <img src="./images/sp1.png" alt="">
                                </a>
                                <a href="/shop/ao-thun/ao-thun-co-tron-toi-gian-ver12-0020772?c=Trắng">
                                    <!-- <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-ver12-0020772/1453a6bd-3792-0300-4dd3-001904648163.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" /> -->
                                    <img src="./images/m1.png" alt="">
                                </a>
                            </div>
                            <div class="price">
                                <span class="mb-1">
                                    <p>Áo Thun Cổ Tròn Tối Giản Trắng Ver12</p>
                                    <span style="text-decoration:line-through">199</span>
                                    <span style="color:#ff0000">159</span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/ao-thun-co-tron-toi-gian-ver12-0020773?c=Be">
                                    <!-- <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-ver12-0020773/3bf5522a-add6-1000-bd8b-00190464c582.jpg?w=540&h=756&c=true" alt="Be" class="img-fluid d-block w-100" /> -->
                                    <img src="./images/sp2.png" alt="">
                                </a>
                                <a href="/shop/ao-thun/ao-thun-co-tron-toi-gian-ver12-0020773?c=Be">
                                    <!-- <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-ver12-0020773/141e50f8-3977-1100-02a9-00190464c5d8.jpg?w=540&h=756&c=true" alt="Be" class="img-fluid d-block w-100" /> -->
                                    <img src="./images/m2.png" alt="">
                                </a>
                            </div>
                            <div class="price">
                                <p>Áo Thun Cổ Tròn Tối Giản Be Ver12</p>
                                <span class="mb-1">
                                    <span style="text-decoration:line-through">199</span>
                                    <span style="color:#ff0000">159</span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/ao-thun-co-tron-toi-gian-ver12-0020774?c=Xanh Đậu Nhạt">
                                    <!-- <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-ver12-0020774/b163af6f-1dc8-1e00-2494-001904654d57.jpg?w=540&h=756&c=true" alt="Xanh Đậu Nhạt" class="img-fluid d-block w-100" /> -->
                                    <img src="./images/sp3.png" alt="">
                                </a>
                                <a href="/shop/ao-thun/ao-thun-co-tron-toi-gian-ver12-0020774?c=Xanh Đậu Nhạt">
                                    <!-- <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-ver12-0020774/41519087-81c2-1f00-e787-001904654e3f.jpg?w=540&h=756&c=true" alt="Xanh Đậu Nhạt" class="img-fluid d-block w-100" /> -->
                                    <img src="./images/m3.png" alt="">
                                </a>
                            </div>
                            <div class="price">
                                <p>Áo Thun Cổ Tròn Tối Giản Xanh Đậu Nhạt Ver12</p>
                                <span class="mb-1">
                                    <span style="text-decoration:line-through">199</span>
                                    <span style="color:#ff0000">159</span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/ao-thun-co-tron-toi-gian-m7-0020769?c=Trắng">
                                    <!-- <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-m7-0020769/680fc4e0-6ca9-0100-084e-001901603576.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" /> -->
                                    <img src="./images/sp4.png" alt="">
                                </a>
                                <a href="/shop/ao-thun/ao-thun-co-tron-toi-gian-m7-0020769?c=Trắng">
                                    <!-- <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-m7-0020769/c96b4b6e-a933-7300-ed74-0018ff091363.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" /> -->
                                    <img src="./images/m4.png" alt="">
                                </a>
                            </div>
                            <div class="price">
                                <p>Áo Thun Cổ Tròn Tối Giản Trắng Cotton Ver12</p>
                                <span class="mb-1">199</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/ao-thun-co-tron-toi-gian-m7-0020770?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-m7-0020770/6b7e1779-6ac8-0200-95dd-001901605e16.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/ao-thun-co-tron-toi-gian-m7-0020770?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-m7-0020770/96c84548-32f2-8100-a3ef-0018ff094276.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Áo Thun Cổ Tròn Tối Giản Đen M7</p>
                                <span class="mb-1">199</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/ao-thun-co-tron-toi-gian-m7-0020771?c=N&#226;u V&#224;ng">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-m7-0020771/a5a84e27-77e3-0300-4191-00190160797a.jpg?w=540&h=756&c=true" alt="N&#226;u V&#224;ng" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/ao-thun-co-tron-toi-gian-m7-0020771?c=N&#226;u V&#224;ng">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-toi-gian-m7-0020771/81bbad5b-ebc0-9200-2fdc-0018ff09d5b6.jpg?w=540&h=756&c=true" alt="N&#226;u V&#224;ng" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price"> 
                                <p>Áo Thun Cổ Tròn Tối Giản Nâu Vàng M7</p>          
                                <span class="mb-1">199</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/ao-thun-co-tron-linh-vat-tigeer-ver4-0020754?c=Cam">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-linh-vat-tigeer-ver4-0020754/505bedde-ab85-3d00-a674-00190466ef6c.jpg?w=540&h=756&c=true" alt="Cam" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/ao-thun-co-tron-linh-vat-tigeer-ver4-0020754?c=Cam">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-linh-vat-tigeer-ver4-0020754/66df733f-43d9-3e00-fabc-00190466f148.jpg?w=540&h=756&c=true" alt="Cam" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <span class="mb-1">
                                    <p>Áo Thun Cổ Tròn Linh Vật Tiger Cam Ver4</p>
                                    <span style="text-decoration:line-through">255</span>
                                    <span style="color:#ff0000">204</span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/ao-thun-co-tron-linh-vat-tigeer-ver4-0020755?c=Xanh L&#225;">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-linh-vat-tigeer-ver4-0020755/9d91c7d9-5573-4e00-1999-0019046772df.jpg?w=540&h=756&c=true" alt="Xanh L&#225;" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/ao-thun-co-tron-linh-vat-tigeer-ver4-0020755?c=Xanh L&#225;">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-thun-co-tron-linh-vat-tigeer-ver4-0020755/f1ed63c3-baf6-4f00-4b78-001904677486.jpg?w=540&h=756&c=true" alt="Xanh L&#225;" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <span class="mb-1">
                                    <p>Áo Thun Cổ Tròn Linh Vật Tiger Xanh Lá Ver4</p>
                                    <span style="text-decoration:line-through">255</span>
                                    <span style="color:#ff0000">204</span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/ao-khoac-hoodie-zipper-on-gian-than-co-ai-valknut-ver3-0020680?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-khoac-hoodie-zipper-on-gian-than-co-ai-valknut-ver3-0020680/8c818724-bb21-6100-68ec-0018fa32ac79.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/ao-khoac-hoodie-zipper-on-gian-than-co-ai-valknut-ver3-0020680?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-khoac-hoodie-zipper-on-gian-than-co-ai-valknut-ver3-0020680/433085ef-b75c-6200-1526-0018fa32ad39.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Áo Khoác Hoodie Zipper Thần Cổ Đại Valknut Đen Ver3</p>
                                <span class="mb-1">595</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/ao-khoac-classic-the-thao-12vahdt-ky-lau-van-inh-ver3-0020665?c=Trắng">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-khoac-classic-the-thao-12vahdt-ky-lau-van-inh-ver3-0020665/b30f6c38-bdfc-5100-59a9-0018fa315295.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/ao-khoac-classic-the-thao-12vahdt-ky-lau-van-inh-ver3-0020665?c=Trắng">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-khoac-classic-the-thao-12vahdt-ky-lau-van-inh-ver3-0020665/16c50e55-1580-5200-f5ce-0018fa3152b9.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Áo Khoác Classic Thể Thao 12VAHDT Kỳ Lau Trắng Ver3</p>
                                <span class="mb-1">425</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/ao-khoac-classic-the-thao-y-nguyen-ban-ver13-0020652?c=X&#225;m">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-khoac-classic-the-thao-y-nguyen-ban-ver13-0020652/b780aafc-c88a-7900-82a3-0018ef2af079.jpg?w=540&h=756&c=true" alt="X&#225;m" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/ao-khoac-classic-the-thao-y-nguyen-ban-ver13-0020652?c=X&#225;m">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-khoac-classic-the-thao-y-nguyen-ban-ver13-0020652/da3d5a7f-5754-7a00-cd78-0018ef2af106.jpg?w=540&h=756&c=true" alt="X&#225;m" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Áo Khoác Classic Thể Thao 12VAHDT Kỳ Lau Xám Ver3</p>
                                <span class="mb-1">425</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/ao-khoac-classic-on-gian-y-nguyen-ban-ver16-0020636?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/ao-khoac-classic-on-gian-y-nguyen-ban-ver16-0020636/0fbf2e5c-fb9e-0100-a383-0018b9c4d355.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Áo Khoác Classic Đơn Giản Y Nguyên Bản Mini Zurry Đen Ver16</p>
                                <span class="mb-1">385</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!--  -->
                <div class="row">
                    <div class="col-12 text-center mb-4 px-0">
                        <div>
                            <a href="">
                                <img loading="lazy" src="https://cmsv2.yame.vn/uploads/507f4541-2fb9-458e-9c5e-3786f0384c3a/BANNER-WEB-1-CH%e1%bb%ae_fix.jpg?quality=80&amp;w=0&amp;h=0" class="img-fluid" alt="YameAPI.Client.PiranhaCMS.Title" style="margin:auto; width:100%;" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/so-mi-tay-ngan-than-co-ai-horus-ver2-0020566?c=X&#225;m">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/so-mi-tay-ngan-than-co-ai-horus-ver2-0020566/8e7d6e96-2911-0100-73f1-0018b7818792.jpg?w=540&h=756&c=true" alt="X&#225;m" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/so-mi-tay-ngan-than-co-ai-horus-ver2-0020566?c=X&#225;m">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/so-mi-tay-ngan-than-co-ai-horus-ver2-0020566/0d16f9ad-23a1-0200-9623-0018b78188bb.jpg?w=540&h=756&c=true" alt="X&#225;m" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Sơ Mi Tay Ngắn Thần Cổ Đại Horus Xám Ver2</p>
                                <span class="mb-1">299</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/so-mi-tay-dai-on-gian-m36-0020691?c=Trắng">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/so-mi-tay-dai-on-gian-m36-0020691/63a8e437-47ae-1f00-656a-0018ff066ea2.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/so-mi-tay-dai-on-gian-m36-0020691?c=Trắng">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/so-mi-tay-dai-on-gian-m36-0020691/b92a19a7-1831-2000-29af-0018ff066f76.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Sơ Mi Tay Dài Đơn Giản Be M36</p>
                                <span class="mb-1">285</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/so-mi-tay-dai-on-gian-m26-0020673?c=Trắng">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/so-mi-tay-dai-on-gian-m26-0020673/3f306ca0-088e-7400-4cd1-0018fa332089.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/so-mi-tay-dai-on-gian-m26-0020673?c=Trắng">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/so-mi-tay-dai-on-gian-m26-0020673/fee9ebce-b414-7500-7c2f-0018fa33211e.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Sơ Mi Tay Dài Đơn Giản Trắng M36</p>
                                <span class="mb-1">325</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/so-mi-co-danton-linh-vat-bbuff-ver1-0020281?c=X&#225;m">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/so-mi-co-danton-linh-vat-bbuff-ver1-0020281/6c125f0b-abf8-1400-35a2-0018680a75ab.jpg?w=540&h=756&c=true" alt="X&#225;m" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/so-mi-co-danton-linh-vat-bbuff-ver1-0020281?c=X&#225;m">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/so-mi-co-danton-linh-vat-bbuff-ver1-0020281/1bb224dd-f917-1500-46d2-0018680a7b7e.jpg?w=540&h=756&c=true" alt="X&#225;m" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Sơ Mi Cổ Danton Linh Vật Bbuff Xám Ver1</p>
                                <span class="mb-1">225</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/quan-jean-skinny-y2010-a05-0019820?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-jean-skinny-y2010-a05-0019820/4b8a0cc6-4423-2600-d691-0018b9faf5e2.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/quan-jean-skinny-y2010-a05-0019820?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-jean-skinny-y2010-a05-0019820/9b983277-1a4e-2700-e3b2-0018b9faf694.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Quần Jean Skinny Tối Giản Đen A05</p>
                                <span class="mb-1">425</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/quan-dai-jean-straight-on-gian-y-nguyen-ban-ver5-0020538?c=Xanh Dương">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-dai-jean-straight-on-gian-y-nguyen-ban-ver5-0020538/df272cc6-6f3b-2e00-23a9-0018ac6b3846.jpg?w=540&h=756&c=true" alt="Xanh Dương" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/quan-dai-jean-straight-on-gian-y-nguyen-ban-ver5-0020538?c=Xanh Dương">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-dai-jean-straight-on-gian-y-nguyen-ban-ver5-0020538/e953fab7-0bcb-2f00-d1f1-0018ac6b38e5.jpg?w=540&h=756&c=true" alt="Xanh Dương" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Quần Jean Straight Đơn Giản Y Nguyên Bản Xanh Dương Ver5</p>
                                <span class="mb-1">285</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/quan-dai-jean-straight-on-gian-y-nguyen-ban-ver5-0020539?c=Xanh Đậm">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-dai-jean-straight-on-gian-y-nguyen-ban-ver5-0020539/3831d169-bd09-3d00-7ab5-0018ac6b84b5.jpg?w=540&h=756&c=true" alt="Xanh Đậm" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/quan-dai-jean-straight-on-gian-y-nguyen-ban-ver5-0020539?c=Xanh Đậm">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-dai-jean-straight-on-gian-y-nguyen-ban-ver5-0020539/1bc9e67f-aa28-3e00-c5f3-0018ac6b84d5.jpg?w=540&h=756&c=true" alt="Xanh Đậm" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Quần Jean Straight Đơn Giản Y Nguyên Bản Xanh Đậm Ver5</p>
                                <span class="mb-1">285</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/quan-jean-slimfit-long-van-thien-o-ver1-0020179?c=Xanh Đậm">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-jean-slimfit-long-van-thien-o-ver1-0020179/f2bc9d9b-48b8-2600-215c-001883b470e3.jpg?w=540&h=756&c=true" alt="Xanh Đậm" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/quan-jean-slimfit-long-van-thien-o-ver1-0020179?c=Xanh Đậm">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-jean-slimfit-long-van-thien-o-ver1-0020179/af6c4439-2fe3-2700-dc1b-001883b471d4.jpg?w=540&h=756&c=true" alt="Xanh Đậm" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Quần Jean Slimfit Đơn Giản 12VAHDT Xanh Đậm Ver1</p>
                                <span class="mb-1">425</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/quan-tay-y2010-hg11-0019800?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-tay-y2010-hg11-0019800/51abd442-18f4-3600-7c34-0018b9fbbe0c.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/quan-tay-y2010-hg11-0019800?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-tay-y2010-hg11-0019800/7bd5b09d-962d-3700-0544-0018b9fbbef1.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Quần Tây Tối Giản Đen HG11</p>
                                <span class="mb-1">385</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/quan-dai-jogger-on-gian-m6-0020243?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-dai-jogger-on-gian-m6-0020243/ea9bb7d2-8e1c-cd00-a09f-00187f0f0289.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/quan-dai-jogger-on-gian-m6-0020243?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-dai-jogger-on-gian-m6-0020243/c28ba6fc-a679-ce00-1a50-00187f0f0362.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Quần Jogger Tối Giản Đen M6</p>
                                <span class="mb-1">349</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/quan-jogger-nam-y2010-jean-a01-0018931?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-jogger-nam-y2010-jean-a01-0018931/391a4d7d-fadd-0200-3bb2-00190637d94c.jpg?w=540&h=756&c=true&ntf=false" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/quan-jogger-nam-y2010-jean-a01-0018931?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-jogger-nam-y2010-jean-a01-0018931/65b757e1-3e08-0100-6158-00173fc116a0.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Quần Jogger Tối Giản Đen A01</p>
                                <span class="mb-1">385</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/quan-jogger-thun-y2010-bd-b21-0019789?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-jogger-thun-y2010-bd-b21-0019789/5184377b-db02-2400-e263-0018b9fadc55.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/quan-jogger-thun-y2010-bd-b21-0019789?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-jogger-thun-y2010-bd-b21-0019789/4f6d90ee-7e39-2500-0259-0018b9fadcf4.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Quần Jogger Đơn Giản Đen Ver1</p>
                                <span class="mb-1">350</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/quan-short-the-thao-12vahdt-ky-lau-van-inh-ver1-0020419?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-short-the-thao-12vahdt-ky-lau-van-inh-ver1-0020419/23a65219-6905-7d01-5ece-0018a18808df.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/quan-short-the-thao-12vahdt-ky-lau-van-inh-ver1-0020419?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-short-the-thao-12vahdt-ky-lau-van-inh-ver1-0020419/a5b172ae-61e8-7e01-9191-0018a1880991.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Quần Short Thể Thao 12VAHDT Long Vận Thiên Đô Đen Ver1</p>							
                                <span class="mb-1">225</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/quan-short-jean-thiet-ke-m2-0020202?c=Xanh Trắng">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-short-jean-thiet-ke-m2-0020202/c278c50d-9430-1000-1b5a-00180dc75d65.jpg?w=540&h=756&c=true" alt="Xanh Trắng" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/quan-short-jean-thiet-ke-m2-0020202?c=Xanh Trắng">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-short-jean-thiet-ke-m2-0020202/139bd12e-4370-1100-6cd6-00180dc76166.jpg?w=540&h=756&c=true" alt="Xanh Trắng" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Quần Short Dị Biệt Xanh Trắng M2</p>
                                <span class="mb-1">255</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/quan-short-on-gian-y-original-ver5-0020275?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-short-on-gian-y-original-ver5-0020275/a25bd980-bc95-1d00-3a95-0018680c0e2a.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/quan-short-on-gian-y-original-ver5-0020275?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-short-on-gian-y-original-ver5-0020275/6da7a33f-4b21-1e00-504e-0018680c10ae.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Quần Short Tối Giản Đen Ver5</p>
                                <span class="mb-1">285</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/quan-short-on-gian-y-nguyen-ban-ver15-0020627?c=Xanh Đậm">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-short-on-gian-y-nguyen-ban-ver15-0020627/00b2adb1-c1f9-2200-1a0f-0018e913d73c.jpg?w=540&h=756&c=true" alt="Xanh Đậm" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/quan-short-on-gian-y-nguyen-ban-ver15-0020627?c=Xanh Đậm">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/quan-short-on-gian-y-nguyen-ban-ver15-0020627/e2838374-3766-2300-3f72-0018e913d7a7.jpg?w=540&h=756&c=true" alt="Xanh Đậm" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Quần Short Đơn Giản Y Nguyên Bản Xanh Đậm Ver15</p>
                                <span class="mb-1">285</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/balo-big-than-co-ai-khepri-ver1-0020367?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/balo-big-than-co-ai-khepri-ver1-0020367/52be7b97-e677-0300-c902-0018cfea7624.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/balo-big-than-co-ai-khepri-ver1-0020367?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/balo-big-than-co-ai-khepri-ver1-0020367/e24758e4-8ce3-2400-9436-00189c1be5e3.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Balo Big Thần Cổ Đại Khepri Đen Ver1</p>
                                <span class="mb-1">399</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/balo-fit-on-gian-y-nguyen-ban-ver3-0020362?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/balo-fit-on-gian-y-nguyen-ban-ver3-0020362/34861396-e69e-6000-7271-0018fa324489.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/balo-fit-on-gian-y-nguyen-ban-ver3-0020362?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/balo-fit-on-gian-y-nguyen-ban-ver3-0020362/46385ee3-6bfd-0900-f8dd-0018cfe9d6b8.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Balo Fit Y Nguyên Bản Đen Ver3</p>
                                <span class="mb-1">249</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/balo-a-thiet-ke-m2-0020010?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/balo-a-thiet-ke-m2-0020010/579b44e9-85f5-2c00-12ea-0018cfe382d4.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/balo-a-thiet-ke-m2-0020010?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/balo-a-thiet-ke-m2-0020010/271418c6-9273-2d00-c4f2-0018cfe3a4ea.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Balo Big Y Nguyên Bản 18+ Đen M2</p>
                                <span class="mb-1">399</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/balo-big-y-nguyen-ban-18-ver2-0020373?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/balo-big-y-nguyen-ban-18-ver2-0020373/2c9cf53b-d9b3-0800-661d-0018cfeae52f.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/balo-big-y-nguyen-ban-18-ver2-0020373?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/balo-big-y-nguyen-ban-18-ver2-0020373/77f3ca89-edf9-0900-c4d1-0018cfeae556.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>Balo Big Y Nguyên Bản 18+ Đen Ver2</p>
                                <span class="mb-1">399</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020502?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020502/a4f2b20a-cbe3-1d00-b2ef-0018ad37b8fe.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020502?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020502/5e97f715-8ae6-1e00-5b13-0018ad37b988.jpg?w=540&h=756&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <span class="mb-1">
                                    <p>PKTT Nón 12VAHDT Kỳ Lau Vạn Định Đen Ver2</p>
                                    <span style="text-decoration:line-through">179</span>
                                    <span style="color:#ff0000">125</span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020503?c=Xanh R&#234;u">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020503/a4287b68-55fd-1f00-c1d2-0018ad37d234.jpg?w=540&h=756&c=true" alt="Xanh R&#234;u" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020503?c=Xanh R&#234;u">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020503/68486cfb-ce41-2000-5084-0018ad37d2a6.jpg?w=540&h=756&c=true" alt="Xanh R&#234;u" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <span class="mb-1">
                                    <p>PKTT Nón 12VAHDT Kỳ Lau Vạn Định Xanh Rêu Ver2</p>
                                    <span style="text-decoration:line-through">179</span>
                                    <span style="color:#ff0000">125</span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/pktt-vo-on-gian-v14-0020587?c=Trắng">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/pktt-vo-on-gian-v14-0020587/88eb57ca-b35f-1f02-78ad-0018b1e98a22.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/pktt-vo-on-gian-v14-0020587?c=Trắng">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/pktt-vo-on-gian-v14-0020587/bccf55a3-c5d3-2002-4587-0018b1e98a2b.jpg?w=540&h=756&c=true" alt="Trắng" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>PKTT Vớ Nguyên Bản Trắng V14</p>
                                <span class="mb-1">79</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1"  data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/pktt-underwear-on-gian-y-nguyen-ban-ver3-0020543?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/pktt-vo-on-gian-v14-0020586/58a4d787-5f5d-2a02-ab7b-0018b1e9a50a.jpg?w=540&h=756&c=true&ntf=false" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/pktt-underwear-on-gian-y-nguyen-ban-ver3-0020543?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/pktt-vo-on-gian-v14-0020586/97c382d1-7917-2b02-7a65-0018b1e9a54b.jpg?w=540&h=756&c=true&ntf=false" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">
                                <p>PKTT Vớ Nguyên Bản Đen V14</p>
                                <span class="mb-1">79</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6 col-sm-3 col-md-3 px-1" data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/pktt-non-linh-vat-bbuff-ver1-0020571?c=Hồng">
                                    <img src="https://cdn2.yame.vn/pimg/pktt-non-linh-vat-bbuff-ver1-0020571/f01e7af3-5d5e-2700-d534-0018a7001674.jpg?w=540&h=540&c=true" alt="Hồng" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/pktt-non-linh-vat-bbuff-ver1-0020571?c=Hồng">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/pktt-non-linh-vat-bbuff-ver1-0020571/55545d08-b827-2800-7b3b-0018a700170c.jpg?w=540&h=540&c=false" alt="Hồng" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">            
                                <span class="mb-1">
                                    <p>PKTT Nón Linh Vật Bbuff Hồng Ver1</p>
                                    <span style="text-decoration:line-through">155</span>
                                    <span style="color:#ff0000">109</span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1" data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/pktt-non-linh-vat-bbuff-ver1-0020573?c=Đen">
                                    <img src="https://cdn2.yame.vn/pimg/pktt-non-linh-vat-bbuff-ver1-0020573/3574d744-c528-1900-21ec-0018a6ffc426.jpg?w=540&h=540&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/pktt-non-linh-vat-bbuff-ver1-0020573?c=Đen">
                                    <img loading="lazy" src="https://cdn2.yame.vn/pimg/pktt-non-linh-vat-bbuff-ver1-0020573/74ba36fc-e530-1a00-3e5a-0018a6ffc4c9.jpg?w=540&h=540&c=false" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>
                            <div class="price">            
                                <span class="mb-1">
                                    <p>PKTT Nón Linh Vật Bbuff Đen Ver1</p>
                                    <span style="text-decoration:line-through">155</span>
                                    <span style="color:#ff0000">109</span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1" data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/pktt-non-linh-vat-bbuff-ver2-0020574?c=Đen">
                                    <img src="https://cdn2.yame.vn/pimg/pktt-non-linh-vat-bbuff-ver2-0020574/44dfa526-a4c5-e400-2d11-0018b1e05f2b.jpg?w=540&h=540&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/pktt-non-linh-vat-bbuff-ver2-0020574?c=Đen">
                                    <img src="https://cdn2.yame.vn/pimg/pktt-non-linh-vat-bbuff-ver2-0020574/d8c0aa94-080b-e500-9e24-0018b1e05fc3.jpg?w=540&h=540&c=false" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>		
                            <div class="price">            
                                <span class="mb-1">
                                    <p>PKTT Nón Linh Vật Bbuff Đen Ver2</p>
                                    <span style="text-decoration:line-through">179</span>
                                    <span style="color:#ff0000">125</span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1" data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020502?c=Đen">
                                    <img src="https://cdn2.yame.vn/pimg/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020502/a4f2b20a-cbe3-1d00-b2ef-0018ad37b8fe.jpg?w=540&h=540&c=true" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020502?c=Đen">
                                    <img src="https://cdn2.yame.vn/pimg/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020502/5e97f715-8ae6-1e00-5b13-0018ad37b988.jpg?w=540&h=540&c=false" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>	
                            <div class="price">            
                                <span class="mb-1">
                                    <p>PKTT Nón 12VAHDT Kỳ Lau Vạn Định Đen Ver2</p>
                                    <span style="text-decoration:line-through">179</span>
                                    <span style="color:#ff0000">125</span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-3 col-md-3 px-1" data-aos="fade-up">
                        <div class="pitem mb-3">
                            <div class="owl-carousel owl-theme dsHinhSanPham">
                                <a href="/shop/ao-thun/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020502?c=Đen">
                                    <img src="images/h3.jpg" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                                <a href="/shop/ao-thun/pktt-non-12vahdt-ky-lau-van-inh-ver2-0020502?c=Đen">
                                    <img src="images/h5.jpg" alt="Đen" class="img-fluid d-block w-100" />
                                </a>
                            </div>	
                            <div class="price">            
                                <span class="mb-1">
                                    <p>PKTT Nón 12VAHDT Kỳ Lau Vạn Định Đen Ver2</p>
                                    <span style="text-decoration:line-through">179</span>
                                    <span style="color:#ff0000">125</span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <p style="font-size:24px;" class="mb-1">Các chương trình Khuyến mãi</p>
                        <p>Đừng bỏ lỡ các chương trình khuyến mãi Hot tại AloneBirds-Stores</p>
                        <input type="hidden" value="RUFPCG0SQLZNNCGULSDAM15A" name="_YID" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-md-6 px-1">
                        <h4 style="padding-top:20px;" class="fw-normal"><a href="/bai-viet/sale-30-tt-ca-giay---dep---sandal/80dd2e6e-2bec-4b73-8f51-5c53d9c98fba">SALE N&#211;N - GI&#192;Y - D&#201;P - SANDAL UPTO 40%</a></h4>
                        <div class="banner-home3-colection-top" style="margin-bottom:10px;">
                            <a href="/bai-viet/sale-30-tt-ca-giay---dep---sandal/80dd2e6e-2bec-4b73-8f51-5c53d9c98fba">
                                <img class="img-fluid" loading="lazy" src="https://cmsv2.yame.vn/uploads/a66e72fc-7687-411f-9305-4255f2a17cdf/Thum_sale_25.04.jpg?quality=80&amp;w=700&amp;h=0" alt="SALE N&#211;N - GI&#192;Y - D&#201;P - SANDAL UPTO 40%">
                            </a>
                        </div>
                        <div class="row"></div>
                    </div>
                    <div class="col-12 col-md-6 px-1">
                        <h4 style="padding-top:20px;" class="fw-normal"><a href="/bai-viet/gioi-thieu-ve-yamevn/f50ce9e9-966e-41c0-a9f2-75cdfaecd9e7">GIỚI THIỆU VỀ ALONEBIRDS - STORES</a></h4>
                        <div class="banner-home3-colection-top" style="margin-bottom:10px;">
                            <a href="">
                                <p>AloneBirds-Stores là tập hợp 4 thanh niên ưu tú có khả năng vượt mọi sự gian khổ cùng nhau cố gắng để trở nên tốt hơn.</p>
                                <img src="./images/logo.png" alt="">
                            </a>
                        </div>
                        <div class="row"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 text-center mt-4 mb-4">
                        <h4>Instagram</h4>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-6.fna.fbcdn.net%2fv%2ft51.2885-15%2f277910146_657762085318712_2480516051490480446_n.jpg%3fstp%3dc0.0.1439.1439a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-6.fna.fbcdn.net%26_nc_cat%3d108%26_nc_ohc%3do4tfEGN841YAX9U1zdV%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT8Y0jbtRstzkoStnPf-GZ4rs3toSuA9akhnfr3OmOiOyQ%26oe%3d625658FD%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-6.fna.fbcdn.net%2fv%2ft51.2885-15%2f277910146_657762085318712_2480516051490480446_n.jpg%3fstp%3dc0.0.1439.1439a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-6.fna.fbcdn.net%26_nc_cat%3d108%26_nc_ohc%3do4tfEGN841YAX9U1zdV%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT8Y0jbtRstzkoStnPf-GZ4rs3toSuA9akhnfr3OmOiOyQ%26oe%3d625658FD%26_nc_sid%3d86f79a" alt="Thức khuya dậy sớm kiếm tiền 
                                 Ăn ngon mặc đẹp l&#224; điều đương nhi&#234;nn &#129392;
                                 &#193;o Kho&#225;c Bomber Linh Vật Bbuff Ver7
                                 &#128142;SIZE: S M L XL
                                 &#128142;PRICE: 499.000 VNĐ
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến cả nh&#224; ạ" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-5.fna.fbcdn.net%2fv%2ft51.2885-15%2f278005741_497706641837792_3050773436805540838_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-5.fna.fbcdn.net%26_nc_cat%3d108%26_nc_ohc%3dUTyaX-GJkTcAX_T2lwd%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT_knsAceq5LYLs9jc-_p4CxeajBbbfHX1UfDG-ArN8QcQ%26oe%3d6254867A%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-5.fna.fbcdn.net%2fv%2ft51.2885-15%2f278005741_497706641837792_3050773436805540838_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-5.fna.fbcdn.net%26_nc_cat%3d108%26_nc_ohc%3dUTyaX-GJkTcAX_T2lwd%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT_knsAceq5LYLs9jc-_p4CxeajBbbfHX1UfDG-ArN8QcQ%26oe%3d6254867A%26_nc_sid%3d86f79a" alt="Sweater vừa được Restock ạ&#127881;
                                 &#193;o Thun Sweater Ng&#226;n H&#224; 4 Element Ver12
                                 &#128142;Size : S M L XL 
                                 &#128142; Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến c&#225;c bạn ạ ❤️❤️
                                 #yame #yameshop #fashion #outfitoftheday #fashionblogger #outfit #outfits #streetwear #photo #photographer #pic #style" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-13.fna.fbcdn.net%2fv%2ft51.2885-15%2f277837968_1668301973515540_6538977369001906577_n.jpg%3fstp%3dc0.0.1439.1439a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-13.fna.fbcdn.net%26_nc_cat%3d104%26_nc_ohc%3d6qzoDfMST5kAX_uMxzN%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT84EnpgphKK3JlIdl7qJcQL3U6ZDgWaqaIlOeElypdCuw%26oe%3d6253CE35%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-13.fna.fbcdn.net%2fv%2ft51.2885-15%2f277837968_1668301973515540_6538977369001906577_n.jpg%3fstp%3dc0.0.1439.1439a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-13.fna.fbcdn.net%26_nc_cat%3d104%26_nc_ohc%3d6qzoDfMST5kAX_uMxzN%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT84EnpgphKK3JlIdl7qJcQL3U6ZDgWaqaIlOeElypdCuw%26oe%3d6253CE35%26_nc_sid%3d86f79a" alt="Bae cho em nụ cười tươi như nắng &#127803;
                                 &#128142;Price: 185.000 VNĐ
                                 &#193;o Thun Cổ Tr&#242;n Y Nguy&#234;n Bản 18+ BG02
                                 &#128142;SIZE : S M L XL
                                 &#128142;Chấm để shop tư vấn nhiệt t&#236;nh v&#224; r&#245; r&#224;ng hơn đến cả nh&#224; YaMer ạ
                                 #yame #yameshop #streetstyle #streetwear #street #streetphotography #fashion #fashionstyle #fashionblogger #styleblogger #style #outfitoftheday #outfit #outfits #photography #photo #photographer #photooftheday #pictureoftheday #pic #localbrand #brand" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-12.fna.fbcdn.net%2fv%2ft51.2885-15%2f277693405_391499336122683_8931720002290181261_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-12.fna.fbcdn.net%26_nc_cat%3d103%26_nc_ohc%3denMI-ta5RzEAX-bxoaL%26tn%3dFVzqPsrHwX0V74Aq%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT8XbjAdka6cf1zD7o3I6nFscwk0cVeaihtwUZv0Un1rYA%26oe%3d625175C3%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-12.fna.fbcdn.net%2fv%2ft51.2885-15%2f277693405_391499336122683_8931720002290181261_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-12.fna.fbcdn.net%26_nc_cat%3d103%26_nc_ohc%3denMI-ta5RzEAX-bxoaL%26tn%3dFVzqPsrHwX0V74Aq%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT8XbjAdka6cf1zD7o3I6nFscwk0cVeaihtwUZv0Un1rYA%26oe%3d625175C3%26_nc_sid%3d86f79a" alt="C&#243; c&#225;i g&#236; rất mới sắp xuất hiện &#127803;
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến cả nh&#224; ạ&#129392;
                                 #yame #yameshop #newcollection" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-13.fna.fbcdn.net%2fv%2ft51.2885-15%2f277854624_339732001457968_3374806387435011171_n.jpg%3fstp%3dc0.179.1440.1440a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-13.fna.fbcdn.net%26_nc_cat%3d104%26_nc_ohc%3d3AHYjhSY910AX8oQevu%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT9X5XMIaWg3fPeHBW4rHOsiZnK_BOU6h_juAV-Jfbjj8w%26oe%3d6250C7A5%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-13.fna.fbcdn.net%2fv%2ft51.2885-15%2f277854624_339732001457968_3374806387435011171_n.jpg%3fstp%3dc0.179.1440.1440a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-13.fna.fbcdn.net%26_nc_cat%3d104%26_nc_ohc%3d3AHYjhSY910AX8oQevu%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT9X5XMIaWg3fPeHBW4rHOsiZnK_BOU6h_juAV-Jfbjj8w%26oe%3d6250C7A5%26_nc_sid%3d86f79a" alt="@_ngcdie69_ With &#193;o Thun Cổ Tr&#242;n Y Nguy&#234;n Bản 18- Ver48
                                 &#128142;SIZE: S M L XL
                                 &#128142;PRICE: 285.000 VNĐ
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến cả nh&#224; ạ
                                 #yame #fashion #outfit #street" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-4.fna.fbcdn.net%2fv%2ft51.2885-15%2f277770674_264054495939206_5661593206763223501_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-4.fna.fbcdn.net%26_nc_cat%3d102%26_nc_ohc%3dSpkNnG5JNIYAX9lNgNG%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT8bflEJI0eskNnAAnfddUlUmF1FwehKovjja3_EEU8ArQ%26oe%3d624EE5B4%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-4.fna.fbcdn.net%2fv%2ft51.2885-15%2f277770674_264054495939206_5661593206763223501_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-4.fna.fbcdn.net%26_nc_cat%3d102%26_nc_ohc%3dSpkNnG5JNIYAX9lNgNG%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT8bflEJI0eskNnAAnfddUlUmF1FwehKovjja3_EEU8ArQ%26oe%3d624EE5B4%26_nc_sid%3d86f79a" alt="Tự nhi&#234;n h&#244;m nay em thấy lo
                                 Love anh &#129392;
                                 &#193;o Kho&#225;c Hoodie Ng&#226;n H&#224; Space Ver5
                                 &#128142;SIZE: S M L XL
                                 &#128142;PRICE: 425.000 VNĐ
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến cả nh&#224; ạ
                                 #yame #fashion #outfit #street #fashionblogger #outfits #streetwear #photo #pic #photographer #pictureoftheday" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-4.fna.fbcdn.net%2fv%2ft51.2885-15%2f277601919_3148607775458342_1260078678347702529_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-4.fna.fbcdn.net%26_nc_cat%3d102%26_nc_ohc%3dp2B0WIm2jhsAX-hCQ2V%26tn%3dFVzqPsrHwX0V74Aq%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT_UYcRhE8cb5mxPKID41aeb2wccauuAGfIEeXeUuM7Mrg%26oe%3d624CF778%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-4.fna.fbcdn.net%2fv%2ft51.2885-15%2f277601919_3148607775458342_1260078678347702529_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-4.fna.fbcdn.net%26_nc_cat%3d102%26_nc_ohc%3dp2B0WIm2jhsAX-hCQ2V%26tn%3dFVzqPsrHwX0V74Aq%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT_UYcRhE8cb5mxPKID41aeb2wccauuAGfIEeXeUuM7Mrg%26oe%3d624CF778%26_nc_sid%3d86f79a" alt="L&#224;m người lớn mệt qu&#225; 
                                 L&#224;m người y&#234;u anh nhaaaa &#128516;
                                 &#193;o Thun Cổ Tr&#242;n Y Nguy&#234;n Bản 18- Ver48
                                 &#128142;SIZE: S M L XL
                                 &#128142;PRICE: 285.000 VNĐ
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến cả nh&#224; ạ
                                 #yame #fashion #outfit #street" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-10.fna.fbcdn.net%2fv%2ft51.2885-15%2f277484897_7279872355387927_4566019959469326843_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-10.fna.fbcdn.net%26_nc_cat%3d107%26_nc_ohc%3d8NoWTpOM8t4AX9TsLRA%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT-wFOt5m7ckot2gtphYitR0yKaTarHVJmNStKYVKb22Tw%26oe%3d624BDEE7%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-10.fna.fbcdn.net%2fv%2ft51.2885-15%2f277484897_7279872355387927_4566019959469326843_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-10.fna.fbcdn.net%26_nc_cat%3d107%26_nc_ohc%3d8NoWTpOM8t4AX9TsLRA%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT-wFOt5m7ckot2gtphYitR0yKaTarHVJmNStKYVKb22Tw%26oe%3d624BDEE7%26_nc_sid%3d86f79a" alt="Cho em order 1 cốc sữa tươi
                                 Như nụ cười của anh &#127803;
                                 &#128142;Price: 185.000 VNĐ
                                 &#193;o Thun Cổ Tr&#242;n Y Nguy&#234;n Bản 18+ BG02
                                 &#128142;SIZE : S M L XL
                                 &#128142;Chấm để shop tư vấn nhiệt t&#236;nh v&#224; r&#245; r&#224;ng hơn đến cả nh&#224; YaMer ạ
                                 #yame #yameshop #streetstyle #streetwear #street #streetphotography #fashion #fashionstyle #fashionblogger #styleblogger #style #outfitoftheday #outfit #outfits #photography #photo #photographer #photooftheday #pictureoftheday #pic #localbrand #brand" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-4.fna.fbcdn.net%2fv%2ft51.2885-15%2f277600224_648989796532466_7598884887114838246_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-4.fna.fbcdn.net%26_nc_cat%3d102%26_nc_ohc%3dU7HD5EF1MZQAX_RryLM%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT_53Moq2SqmSQk7thX5Ctn33yVMYaP0GBWPZNgpzqvsJA%26oe%3d624AE5F4%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-4.fna.fbcdn.net%2fv%2ft51.2885-15%2f277600224_648989796532466_7598884887114838246_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-4.fna.fbcdn.net%26_nc_cat%3d102%26_nc_ohc%3dU7HD5EF1MZQAX_RryLM%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT_53Moq2SqmSQk7thX5Ctn33yVMYaP0GBWPZNgpzqvsJA%26oe%3d624AE5F4%26_nc_sid%3d86f79a" alt="Anh em Fan Tee Basic đ&#226;u rồi taa&#128293;
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến cả nh&#224; ạ&#129392;
                                 #yame #yameshop #basic" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-8.fna.fbcdn.net%2fv%2ft51.2885-15%2f277416560_122293923726249_4325141770305817386_n.jpg%3fstp%3dc124.0.1039.1039a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-8.fna.fbcdn.net%26_nc_cat%3d109%26_nc_ohc%3d0rssE_yd4LMAX-BKvjD%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT_dJGregXj9sT3gD2aaHe0A4QKxpds-rqLZa1eFKDNBzg%26oe%3d6249EDA3%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-8.fna.fbcdn.net%2fv%2ft51.2885-15%2f277416560_122293923726249_4325141770305817386_n.jpg%3fstp%3dc124.0.1039.1039a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-8.fna.fbcdn.net%26_nc_cat%3d109%26_nc_ohc%3d0rssE_yd4LMAX-BKvjD%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT_dJGregXj9sT3gD2aaHe0A4QKxpds-rqLZa1eFKDNBzg%26oe%3d6249EDA3%26_nc_sid%3d86f79a" alt="Cho YaMe 1 ly bạc, Sỉu v&#224;o si&#234;u phẩm Sweater n&#224;y &#128293;&#128293;
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến cả nh&#224; ạ &#129392;&#129392;
                                 #yame #yameshop #sweater" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-13.fna.fbcdn.net%2fv%2ft51.2885-15%2f277453196_404407774827618_8764965456284613394_n.jpg%3fstp%3dc240.0.960.960a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-13.fna.fbcdn.net%26_nc_cat%3d106%26_nc_ohc%3dukZu3Qrtg_EAX9_-tYp%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT-bwOyyQVN_GzOB5Hyb_ZWJCbPHesKyFh4JUl5nnE8ibA%26oe%3d62498BFA%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-13.fna.fbcdn.net%2fv%2ft51.2885-15%2f277453196_404407774827618_8764965456284613394_n.jpg%3fstp%3dc240.0.960.960a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-13.fna.fbcdn.net%26_nc_cat%3d106%26_nc_ohc%3dukZu3Qrtg_EAX9_-tYp%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT-bwOyyQVN_GzOB5Hyb_ZWJCbPHesKyFh4JUl5nnE8ibA%26oe%3d62498BFA%26_nc_sid%3d86f79a" alt="Để b&#233; n&#224;y ở đ&#226;y l&#224; cả nh&#224; biết g&#236; rồi đ&#243; nha&#127803;&#129392;
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến c&#225;c YaMer ạ&#129392;
                                 #yame #yameshop #bbuff" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-11.fna.fbcdn.net%2fv%2ft51.2885-15%2f277400662_681587916222274_5759623020115945805_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-11.fna.fbcdn.net%26_nc_cat%3d110%26_nc_ohc%3daTB_zPMHSmgAX979X9E%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT9diFB-KSvByRmVs90x18OLGmXuD1weO0T0pidpD9yQcg%26oe%3d624A6782%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-11.fna.fbcdn.net%2fv%2ft51.2885-15%2f277400662_681587916222274_5759623020115945805_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-11.fna.fbcdn.net%26_nc_cat%3d110%26_nc_ohc%3daTB_zPMHSmgAX979X9E%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT9diFB-KSvByRmVs90x18OLGmXuD1weO0T0pidpD9yQcg%26oe%3d624A6782%26_nc_sid%3d86f79a" alt="Th&#236; ra m&#249;a xu&#226;n hoa nở lavie &#128584; 
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến cả nh&#224; ạ &#129392;
                                 #yame #yameshop #outfit #fashion" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-9.fna.fbcdn.net%2fv%2ft51.2885-15%2f277214521_140576395126157_7519215851316434051_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-9.fna.fbcdn.net%26_nc_cat%3d105%26_nc_ohc%3dO0jgiRzblWAAX8yWZzI%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT_8iRrM2NI9_J_5blOGUNaZikZBEdYZ0rdpuTXH114K9g%26oe%3d624AABC5%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-9.fna.fbcdn.net%2fv%2ft51.2885-15%2f277214521_140576395126157_7519215851316434051_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-9.fna.fbcdn.net%26_nc_cat%3d105%26_nc_ohc%3dO0jgiRzblWAAX8yWZzI%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT_8iRrM2NI9_J_5blOGUNaZikZBEdYZ0rdpuTXH114K9g%26oe%3d624AABC5%26_nc_sid%3d86f79a" alt="&#128142;PRICE: 150.000 VNĐ
                                 Người chơi hệ Best Seller &#128293;&#128293;
                                 &#193;o Thun Cổ Tr&#242;n Đơn Giản M1
                                 &#128142; Size : S M L XL
                                 &#128142; Chấm để shop tư vấn nhiệt t&#236;nh v&#224; r&#245; r&#224;ng hơn đến cả nh&#224; YaMer ạ ❤️‍&#128293;" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-9.fna.fbcdn.net%2fv%2ft51.2885-15%2f277238058_3288202428130841_2258292540047164695_n.jpg%3fstp%3dc0.180.1440.1440a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-9.fna.fbcdn.net%26_nc_cat%3d105%26_nc_ohc%3diRk6eOo5wWsAX-JMB8w%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT_CSVkNXLIKl0xtur4hPRUJsoHGQ_2ch1PsJr7QpAGEfA%26oe%3d6249C0A9%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-9.fna.fbcdn.net%2fv%2ft51.2885-15%2f277238058_3288202428130841_2258292540047164695_n.jpg%3fstp%3dc0.180.1440.1440a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-9.fna.fbcdn.net%26_nc_cat%3d105%26_nc_ohc%3diRk6eOo5wWsAX-JMB8w%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT_CSVkNXLIKl0xtur4hPRUJsoHGQ_2ch1PsJr7QpAGEfA%26oe%3d6249C0A9%26_nc_sid%3d86f79a" alt="Nh&#236;n anh giống &#244;ng n&#224;o nhỉ
                                 &#212;ng x&#227; &#129392;
                                 &#193;o Thun Cổ Tr&#242;n Y Nguy&#234;n Bản 18- Ver42
                                 &#128142;SIZE: S M L XL
                                 &#128142;PRICE: 255,000 VNĐ
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến cả nh&#224; ạ" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-1.fna.fbcdn.net%2fv%2ft51.2885-15%2f277035155_345119004076981_2556845118776399406_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-1.fna.fbcdn.net%26_nc_cat%3d101%26_nc_ohc%3dGy1hpW_heJwAX87jRp7%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT9W4Yj1McbEXROluX7UsNvgoeog96l3Q43W8Qvrt5irGA%26oe%3d624974A7%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-1.fna.fbcdn.net%2fv%2ft51.2885-15%2f277035155_345119004076981_2556845118776399406_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-1.fna.fbcdn.net%26_nc_cat%3d101%26_nc_ohc%3dGy1hpW_heJwAX87jRp7%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT9W4Yj1McbEXROluX7UsNvgoeog96l3Q43W8Qvrt5irGA%26oe%3d624974A7%26_nc_sid%3d86f79a" alt="Cho em order 1 li Matcha Đ&#225; Xay
                                 N&#234;n chuyện t&#236;nh đ&#244;i ta &#129392;
                                 &#193;o Kho&#225;c Hoodie Ng&#226;n H&#224; Space Ver5
                                 &#128142;SIZE: S M L XL
                                 &#128142;PRICE: 425.000 VNĐ
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến cả nh&#224; ạ
                                 #yame #fashion #outfit #street #fashionblogger #outfits #streetwear #photo #pic #photographer #pictureoftheday" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-12.fna.fbcdn.net%2fv%2ft51.2885-15%2f276971202_481490503708143_4063808810836521915_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-12.fna.fbcdn.net%26_nc_cat%3d103%26_nc_ohc%3dmKDYrzXbeqoAX-VEVNg%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT9_qdVhoiykstvgM8XnaEuNCsFagRslkWhVH-1RQ14QSw%26oe%3d624A383C%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-12.fna.fbcdn.net%2fv%2ft51.2885-15%2f276971202_481490503708143_4063808810836521915_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-12.fna.fbcdn.net%26_nc_cat%3d103%26_nc_ohc%3dmKDYrzXbeqoAX-VEVNg%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT9_qdVhoiykstvgM8XnaEuNCsFagRslkWhVH-1RQ14QSw%26oe%3d624A383C%26_nc_sid%3d86f79a" alt="Đến hẹn lại ra đồ mới v&#224; Sale th&#244;i &#129392;&#129392;
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến cả nh&#224; ạ&#129392;
                                 #yame #newcollection #fashion #fashionblogger #streetwear #photo #photographer #pic" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-5.fna.fbcdn.net%2fv%2ft51.2885-15%2f276176030_868531050775812_8282320656345383895_n.jpg%3fstp%3dc0.58.1440.1440a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-5.fna.fbcdn.net%26_nc_cat%3d100%26_nc_ohc%3drmx0Zl_j2dgAX-P5mu6%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT9xoQManmbgxXh3XoXyBUVaMYy4jQ2S5HJKl1UTzXTGEQ%26oe%3d624191C6%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-5.fna.fbcdn.net%2fv%2ft51.2885-15%2f276176030_868531050775812_8282320656345383895_n.jpg%3fstp%3dc0.58.1440.1440a_dst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-5.fna.fbcdn.net%26_nc_cat%3d100%26_nc_ohc%3drmx0Zl_j2dgAX-P5mu6%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT9xoQManmbgxXh3XoXyBUVaMYy4jQ2S5HJKl1UTzXTGEQ%26oe%3d624191C6%26_nc_sid%3d86f79a" alt="Trải nghiệm được nhiều thứ 
                                 Nhưng trải l&#242;ng c&#249;ng anh th&#236; chưa &#129335;&#127995;‍♀️
                                 &#193;o Thun Cổ Tr&#242;n Y Nguy&#234;n Bản 18- Ver23
                                 &#128142;SIZE: S M L XL
                                 &#128142;PRICE: 225.000 VNĐ
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến cả nh&#224; ạ
                                 #yame #fashion #outfit #street #fashionblogger #outfits #streetwear #photo #pic #photographer #pictureoftheday" />
                        </a>
                    </div>
                    <div class="col-md-2 col-4 px-1 mb-2">
                        <a href="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-12.fna.fbcdn.net%2fv%2ft51.2885-15%2f276973861_383363626655763_841990230690044539_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-12.fna.fbcdn.net%26_nc_cat%3d103%26_nc_ohc%3dmU1723EDw2UAX9r_kFw%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT8_I3s6rznaBA8U261qo19bF7_uxPaWHxRTnRucaWqJ-A%26oe%3d623F793E%26_nc_sid%3d86f79a" target="_blank">
                            <img class="img-fluid" loading="lazy" src="https://cdn3.yame.vn/rimg?s=https%3a%2f%2finstagram.fsgn5-12.fna.fbcdn.net%2fv%2ft51.2885-15%2f276973861_383363626655763_841990230690044539_n.jpg%3fstp%3ddst-jpg_e35_s320x320%26_nc_ht%3dinstagram.fsgn5-12.fna.fbcdn.net%26_nc_cat%3d103%26_nc_ohc%3dmU1723EDw2UAX9r_kFw%26edm%3dAPU89FABAAAA%26ccb%3d7-4%26oh%3d00_AT8_I3s6rznaBA8U261qo19bF7_uxPaWHxRTnRucaWqJ-A%26oe%3d623F793E%26_nc_sid%3d86f79a" alt="PoLo n&#224;y nghe n&#243;i sẽ gi&#250;p đẹp trai xinh g&#225;i gấp 100 lần lun n&#232;&#129392;&#129392;
                                 &#128142;Chấm để Shop tư vấn r&#245; r&#224;ng v&#224; nhiệt t&#236;nh hơn đến cả nh&#224; ạ&#129392;
                                 #yame #yameshop #polo #fashion #streetstyle #streetwear #fashion #photo #pic" />
                        </a>
                    </div>
                </div>
            </div>
            <!-- End Header -->
            <!-- Start Footer -->
            <div class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-12 text-center mb-2">
                            <a href="/WebShopAloneBirds/">
                                <img src="./images/logo.png" style="height: 70px;" />
                            </a>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-12 text-center" id="ThongTinFooter">
                            <p style="margin-bottom: 0;">Đặt hàng và thu tiền tận nơi toàn quốc</p>
                            <h5 class="boxed-content-title">(09) 1234 5678</h5>   
                            <p style="margin-bottom: 0;">
                                <a href=""
                                   target="_blank">Than phiền/Góp ý</a>
                            </p>
                            <h4 id="titleThongTin"><a href="javascript:;" style="color:#00ffff !important; text-transform:none !important;" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThongTin" aria-expanded="false" aria-controls="collapseThongTin">Xem thêm Thông tin AloneBirds-Stores <span>&nbsp;&nbsp;<i class="fa fa-angle-down"></i></span></a></h4>
                            <div id="collapseThongTin" class="collapse mb-4" aria-labelledby="titleThongTin" data-parent="#ThongTinFooter">
                                <ul class="list-unstyled">
                                    <li><a href="">Giới thiệu về AloneBirds-Stores</a></li>
                                    <li><a href="">Tuyển dụng</a></li>
                                    <li>.</li>
                                    <li><a href="">Quy chế hoạt động</a></li>
                                    <li><a href="">Điều khoản mua bán</a></li>
                                    <li>.</li>
                                    <li><a href="" class="boxed-content-title">Mã Voucher giảm giá</a></li>
                                </ul>
                                <div>
                                    <div>
                                        <br />
                                        <p style="margin-bottom: 0;">Đặt hàng và thu tiền tận nơi toàn quốc</p>
                                        <h5 class="boxed-content-title">(09) 1234 5678</h5>
                                    </div>
                                </div>
                                <br />
                                <h4>FAQ</h4>
                                <ul class="list-unstyled">
                                    <li><a href="/page/van-chuyen">Vận chuyển</a></li>
                                    <li><a href="/page/chinh-sach-doi-tra">Chính sách đổi trả</a></li>
                                    <li><a href="/page/chinh-sach-bao-hanh">Chính sách bảo hành</a></li>
                                    <li><a href="/page/khach-hang-vip">Khách hàng VIP</a></li>
                                    <li><a href="/page/doi-tac-cung-cap">Đối tác cung cấp</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10  col-12  mcenter">
                            <hr style="margin: 10px 0;" />
                            <p style="margin-bottom: 0;">&copy; 2022 - CÔNG TY CỔ PHẦN 4 THÀNH VIÊN TTPK</p>
                            <p style="margin-bottom: 0; font-size: 9px;">Địa chỉ: 475A - Điện Biên Phủ - Phường 25 - Quận Bình Thạnh - TP.HCM - Điện thoại: (09) 1234 5678 - Mua hàng: (09) 1234 5678 - Email: TTPK@Gmail.com</p>
                        </div>   
                    </div>
                </div>
            </div>
        </div>

        <script src="https://res.yame.vn/2022/Content/JsFramework.js"></script>

        <script src="https://res.yame.vn/2022/Scripts/OwlCarousel2/owl.carousel.min.js"></script>

        <script src="https://res.yame.vn/2022/Content/theme1.js"></script>

        <script src="https://res.yame.vn/2022/Scripts/app.js"></script>

        <!-- The core Firebase JS SDK is always required and must be listed first -->
        <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js"></script>

        <!-- TODO: Add SDKs for Firebase products that you want to use https://firebase.google.com/docs/web/setup#available-libraries -->
        <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-auth.js"></script>

        <script>
            // Your web app's Firebase configuration
            var firebaseConfig = {
                apiKey: "AIzaSyA-Do1DL6kUeFID4A_ejzZpx8kAWgyrfsI",
                authDomain: "yame-5cf79.firebaseapp.com",
                databaseURL: "https://yame-5cf79.firebaseio.com",
                projectId: "yame-5cf79",
                storageBucket: "yame-5cf79.appspot.com",
                messagingSenderId: "98846041174",
                appId: "1:98846041174:web:c253c8e2908bc8b57187f7",
                //languageCode: "vn"
            };
            // Initialize Firebase
            firebase.initializeApp(firebaseConfig);
            //set language
            firebase.auth().languageCode = 'vi';
        </script>
        <script>
            jQuery(function ($) {
                "use strict";

                //Preloader
                $(window).on('load', function () {

                });
            });

            $(document).ready(function () {
                firebase.auth().onAuthStateChanged(function (user) {
                    if (user) {

                    } else {

                    }
                });

                //footer owlCarousel
                $('#owl-dsCH').owlCarousel({
                    loop: true,
                    responsive: {
                        0: {
                            items: 1,
                            nav: false
                        },
                        600: {
                            items: 1,
                            nav: false
                        },
                        1000: {
                            items: 3,
                            nav: false
                        }
                    },
                    dots: false,
                    autoHeight: true,
                    autoWidth: true,
                    //center:true
                });

            });

            function __doLogout() {
                firebase.auth().signOut();
                window.location.replace($(location).attr('protocol') + '//' + $(location).attr('host') + "/member/dologout");
            }

        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#dsLookbook').owlCarousel({
                    loop: true,
                    autoplay: true,
                    autoplayTimeout: 4000,
                    autoplayHoverPause: false,
                    responsive: {
                        0: {
                            items: 1,
                            nav: false,
                            stagePadding: 40
                        },
                        600: {
                            items: 1,
                            stagePadding: 40,
                            nav: false
                        },
                        1000: {
                            items: 2,
                            nav: false,
                            loop: true
                        }
                    }
                });

                $('.dsHinhSanPham').owlCarousel({
                    loop: false,
                    autoplay: false,
                    dots: true,
                    responsive: {
                        0: {
                            items: 1,
                            nav: false
                        },
                        600: {
                            items: 1,
                            nav: false
                        },
                        1000: {
                            items: 1,
                            nav: false,
                        }
                    }
                });
                var dots = $('.owl-dots').css('position', 'absolute').css('bottom', '5px');
                dots.css('left', 'calc(50% - ' + dots.width() / 2 + 'px)');

                var dot = $('.owl-dot span').css('width', '5px').css('height', '5px');

                $('.dsHinhSanPham').mouseover(function () {
                    $(this).trigger('to.owl.carousel', [1, 700]);
                }).mouseleave(function () {
                    //reset from 1
                    $(this).trigger('to.owl.carousel', [0, 700]);
                });

            });
        </script>
        <script type="text/javascript">
            var google_tag_params = {
                dynx_pagetype: 'home'
            };
        </script>
        <script type="text/javascript">
            /* <![CDATA[ */
            var google_conversion_id = 880703804;
            var google_custom_params = window.google_tag_params;
            var google_remarketing_only = true;
            /* ]]> */
        </script>
        <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
        </script>
        <noscript>
        <div style="display: inline;">
            <img height="1" width="1" style="border-style: none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/880703804/?value=0&amp;guid=ON&amp;script=0" />
        </div>
        </noscript>

        <script src="https://res.yame.vn/Scripts/notify/notify.min.js"></script>

    </body>
</html>

<script>
            window._wpemojiSettings = {"baseUrl": "https:\/\/s.w.org\/images\/core\/emoji\/13.0.1\/72x72\/", "ext": ".png", "svgUrl": "https:\/\/s.w.org\/images\/core\/emoji\/13.0.1\/svg\/", "svgExt": ".svg", "source": {"concatemoji": "https:\/\/blueskytechco.com\/rubix\/wp-includes\/js\/wp-emoji-release.min.js?ver=5.7.6"}};
            !function (e, a, t) {
                var n, r, o, i = a.createElement("canvas"),
                        p = i.getContext && i.getContext("2d");
                function s(e, t) {
                    var a = String.fromCharCode;
                    p.clearRect(0, 0, i.width, i.height),
                            p.fillText(a.apply(this, e), 0, 0);
                    e = i.toDataURL();
                    return p.clearRect(0, 0, i.width, i.height),
                            p.fillText(a.apply(this, t), 0, 0), e === i.toDataURL()
                }
                function c(e) {
                    var t = a.createElement("script");
                    t.src = e, t.defer = t.type = "text/javascript",
                            a.getElementsByTagName("head")[0].appendChild(t)
                }
                for (o = Array("flag", "emoji"),
                        t.supports = {everything:!0, everythingExceptFlag:!0}, r = 0; r < o.length; r++)
                    t.supports[o[r]] = function (e) {
                        if (!p || !p.fillText)
                            return!1;
                        switch (p.textBaseline = "top", p.font = "600 32px Arial", e)
                        {
                            case"flag":
                                return s([127987, 65039, 8205, 9895, 65039],
                                        [127987, 65039, 8203, 9895, 65039])
                                        ? !1 : !s([55356, 56826, 55356, 56819],
                                                [55356, 56826, 8203, 55356, 56819]) && !s([55356, 57332, 56128, 56423, 56128, 56418, 56128, 56421, 56128, 56430, 56128, 56423, 56128, 56447],
                                        [55356, 57332, 8203, 56128, 56423, 8203, 56128, 56418, 8203, 56128, 56421, 8203, 56128, 56430, 8203, 56128, 56423, 8203, 56128, 56447]);
                            case"emoji":
                                return!s([55357, 56424, 8205, 55356, 57212], [55357, 56424, 8203, 55356, 57212])
                        }
                        return!1
                    }(o[r]),
                            t.supports.everything = t.supports.everything && t.supports[o[r]],
                            "flag" !== o[r] && (t.supports.everythingExceptFlag = t.supports.everythingExceptFlag && t.supports[o[r]]);
                t.supports.everythingExceptFlag = t.supports.everythingExceptFlag && !t.supports.flag, t.DOMReady = !1,
                        t.readyCallback = function () {
                            t.DOMReady = !0
                        },
                        t.supports.everything || (n = function () {
                            t.readyCallback()
                        }, a.addEventListener ? (a.addEventListener("DOMContentLoaded", n, !1),
                                e.addEventListener("load", n, !1)) : (e.attachEvent("onload", n),
                                a.attachEvent("onreadystatechange",
                                        function () {
                                            "complete" === a.readyState && t.readyCallback()
                                        })),
                                (n = t.source || {}).concatemoji ? c(n.concatemoji) : n.wpemoji && n.twemoji && (c(n.twemoji),
                                c(n.wpemoji)))
            }(window, document, window._wpemojiSettings);
</script>
