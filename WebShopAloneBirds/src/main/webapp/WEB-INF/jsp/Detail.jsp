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

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
        <!-- End Style Css -->
    </head>

    <body>
        <!-- Start Menu</h1>-->

        <div class="site-wrap">
            <div  class="site-navbar bg-dark py-2 stickyDiv">
                <div class="search-wrap">
                    <div class="container">
                        <a href="#" class="search-close js-search-close"><span class="icon-close2"></span></a>
                        <form action="/search" method="post">
                            <input type="text" name="keyword" class="form-control" placeholder="Nhập sản phẩm cần tìm...">
                        </form>
                    </div>
                </div>
                <div class="container">
                    <div class="d-flex align-items-center justify-content-between">
                        <div class="logo">
                            <div class="site-logo">
                                <a href="/WebShopAloneBirds/" class="js-logo-clone">
                                    <img src="./images/logo.png" alt="" style="width: 66px;" />
                                </a>
                            </div>
                        </div>
                        <div class="main-nav d-none d-lg-block">
                            <nav class="site-navigation text-right text-md-center" role="navigation">
                                <ul class="site-menu js-clone-nav d-none d-lg-block">
                                    <li class="has-children">
                                        <a href="">CATEGORY</a>
                                        <ul class="dropdown">
                                            <c:forEach items="${list}" var="o">
                                                <li><a href="/WebShopAloneBirds/gallery?cid=${o.id}">${o.namec}</a></li> 
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
                            <c:forEach items="${acc}" var="o"><h2 style="color: hotpink;font-size: 20px;margin-top: 5px;margin-left: 30px; margin-bottom: -7px; font-weight: 400; "><span class="icon-user-o">: <i>${o.user}</i></h2></c:forEach>
                            <a href="javascript:;" class="icons-btn d-inline-block js-search-open"><span class="icon-search"></span></a>
                            <a class="icons-btn d-inline-block" href="Login"><span class="icon-user-o"> </span></a>
                            <a href="/cart/review" class="icons-btn d-inline-block bag">
                                <span class="icon-shopping-bag"></span>
                                <span class="number" id="NoOfItemsInCart">0</span>
                            </a>
                            
                            <a href="#" class="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none"><span class="icon-menu"></span></a>
                           
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Menu -->


            <section class="container" style="border: 10px solid pink; border-radius: 10px" style="margin-top: 100px;">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="left-sidebar">
                                <h2>Category</h2>
                                <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                                                    <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                    Sportswear
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="sportswear" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <ul>
                                                    <li><a href="">Nike </a></li>
                                                    <li><a href="">Under Armour </a></li>
                                                    <li><a href="">Adidas </a></li>
                                                    <li><a href="">Puma</a></li>
                                                    <li><a href="">ASICS </a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                                    <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                    Mens
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="mens" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <ul>
                                                    <li><a href="">Fendi</a></li>
                                                    <li><a href="">Guess</a></li>
                                                    <li><a href="">Valentino</a></li>
                                                    <li><a href="">Dior</a></li>
                                                    <li><a href="">Versace</a></li>
                                                    <li><a href="">Armani</a></li>
                                                    <li><a href="">Prada</a></li>
                                                    <li><a href="">Dolce and Gabbana</a></li>
                                                    <li><a href="">Chanel</a></li>
                                                    <li><a href="">Gucci</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                                                    <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                    Womens
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="womens" class="panel-collapse collapse">
                                            <div class="panel-body">
                                                <ul>
                                                    <li><a href="">Fendi</a></li>
                                                    <li><a href="">Guess</a></li>
                                                    <li><a href="">Valentino</a></li>
                                                    <li><a href="">Dior</a></li>
                                                    <li><a href="">Versace</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                             <c:forEach items="${list}" var="o">
                                                 <h4 style="padding-bottom: 5px;" class="panel-title"><a href="#">${o.namec}</a></h4>
                                                </c:forEach>  
                                            
                                        </div>
                                    </div>
                                    
                                </div><!--/category-products-->

                                <div class="brands_products"><!--brands_products-->
                                    <h2>Brands</h2>
                                    <div class="brands-name">
                                        <ul class="nav nav-pills nav-stacked">
                                            <li><a href=""> <span class="pull-right">(50)</span>Acne</a></li>
                                            <li><a href=""> <span class="pull-right">(56)</span>Grüne Erde</a></li>
                                            <li><a href=""> <span class="pull-right">(27)</span>Albiro</a></li>
                                            <li><a href=""> <span class="pull-right">(32)</span>Ronhill</a></li>
                                            <li><a href=""> <span class="pull-right">(5)</span>Oddmolly</a></li>
                                            <li><a href=""> <span class="pull-right">(9)</span>Boudestijn</a></li>
                                            <li><a href=""> <span class="pull-right">(4)</span>Rösch creative culture</a></li>
                                        </ul>
                                    </div>
                                </div><!--/brands_products-->

                                <div class="price-range"><!--price-range-->
                                    <h2>Price Range</h2>
                                    <div class="well">
                                        <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                                        <b>$ 0</b> <b class="pull-right">$ 600</b>
                                    </div>
                                </div><!--/price-range-->

                                <div class="shipping text-center"><!--shipping-->
                                    <img src="images//shipping.jpg" alt="" />
                                </div><!--/shipping-->

                            </div>
                        </div>

                        <div class="col-sm-9 padding-right">
                            <div class="product-details"><!--product-details-->
                                <div class="col-sm-5">
                                     <c:forEach items="${latest}" var="o">                                               
                                    <div class="">
                                        <img src="images/${o.image}" alt="" width="380px !important"/>
                                    </div>
                                    <div id="similar-product" class="carousel slide" data-ride="carousel">

                                        <!-- Wrapper for slides -->
                                        <div  class="carousel-inner">
                                            <div style="width: 500px" class="item active">
                                                <a href=""><img style="width: 80px;height:100px" src="images/m4.png" alt=""></a>
                                                <a href=""><img style="width: 80px;height:100px" src="images/m1.png" alt=""></a>
                                                <a href=""><img style="width: 80px;height:100px" src="images/m2.png" alt=""></a>
                                            </div>
                                            <div class="item">
                                              <a href=""><img style="width: 80px;height:100px" src="images/m4.png" alt=""></a>
                                                <a href=""><img style="width: 80px;height:100px" src="images/m2.png" alt=""></a>
                                                <a href=""><img style="width: 80px;height:100px" src="images/m2.png" alt=""></a>
                                            </div>
                                            <div class="item">
                                               <a href=""><img style="width: 80px;height:100px" src="images/m4.png" alt=""></a>
                                                <a href=""><img style="width: 80px;height:100px" src="images/m2.png" alt=""></a>
                                                <a href=""><img style="width: 80px;height:100px" src="images/m2.png" alt=""></a>
                                            </div>

                                        </div>

                                        <!-- Controls -->
                                        <a class="left item-control" href="#similar-product" data-slide="prev">
                                            <i class="fa fa-angle-left"></i>
                                        </a>
                                        <a class="right item-control" href="#similar-product" data-slide="next">
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>

                                </div>
                                <div class="col-sm-7">
                                    <div class="product-information"><!--/product-information-->
                                        
                                        <h2 style="color: hotpink !important">${o.name}</h2>
                                        <p style="color: lightpink !important">Web ID: ${o.id}</p>
                                        <img src="images/product-details/rating.png" alt="" />
                                        <span>
                                            <span style="color: pink !important">${o.price} USD</span>
                                            <label>Quantity:</label>
                                            <input type="text" value="3" />
                                            <button style="color: white !important; margin-top: 10px" type="button" class="btn btn-fefault cart">
                                                <i  class="fa fa-shopping-cart"></i>
                                                Add to cart
                                            </button>
                                        </span>
                                        <p><b>Availability:</b> In Stock</p>
                                        <p><b>Condition:</b> New</p>
                                        <p><b>Brand:</b> E-SHOPPER</p>
                                        <a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
                                    </div><!--/product-information-->
                                     </c:forEach>  
                                </div>
                            </div><!--/product-details-->

                            <div class="category-tab shop-details-tab"><!--category-tab-->
                                <div class="col-sm-12">
                                    <ul class="nav nav-tabs">
                                        <li><a href="#details" data-toggle="tab">Details</a></li>
                                        <li><a href="#companyprofile" data-toggle="tab">Company Profile</a></li>
                                        <li><a href="#tag" data-toggle="tab">Tag</a></li>
                                        <li class="active"><a href="#reviews" data-toggle="tab">Reviews (5)</a></li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane fade" id="details" >
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/gallery1.jpg" alt="" />
                                                        <h2>$56</h2>
                                                        <p>Easy Polo Black Edition</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/gallery2.jpg" alt="" />
                                                        <h2>$56</h2>
                                                        <p>Easy Polo Black Edition</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/gallery3.jpg" alt="" />
                                                        <h2>$56</h2>
                                                        <p>Easy Polo Black Edition</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/gallery4.jpg" alt="" />
                                                        <h2>$56</h2>
                                                        <p>Easy Polo Black Edition</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="companyprofile" >
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/gallery1.jpg" alt="" />
                                                        <h2>$56</h2>
                                                        <p>Easy Polo Black Edition</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/gallery3.jpg" alt="" />
                                                        <h2>$56</h2>
                                                        <p>Easy Polo Black Edition</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/gallery2.jpg" alt="" />
                                                        <h2>$56</h2>
                                                        <p>Easy Polo Black Edition</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/gallery4.jpg" alt="" />
                                                        <h2>$56</h2>
                                                        <p>Easy Polo Black Edition</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="tag" >
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/gallery1.jpg" alt="" />
                                                        <h2>$56</h2>
                                                        <p>Easy Polo Black Edition</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/gallery2.jpg" alt="" />
                                                        <h2>$56</h2>
                                                        <p>Easy Polo Black Edition</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/gallery3.jpg" alt="" />
                                                        <h2>$56</h2>
                                                        <p>Easy Polo Black Edition</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="images/home/gallery4.jpg" alt="" />
                                                        <h2>$56</h2>
                                                        <p>Easy Polo Black Edition</p>
                                                        <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade active in" id="reviews" >
                                        <div class="col-sm-12">
                                            <ul>
                                                <li><a href=""><i class="fa fa-user"></i>EUGEN</a></li>
                                                <li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
                                                <li><a href=""><i class="fa fa-calendar-o"></i>31 DEC 2014</a></li>
                                            </ul>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                                            <p><b>Write Your Review</b></p>

                                            <form action="#">
                                                <span>
                                                    <input type="text" placeholder="Your Name"/>
                                                    <input type="email" placeholder="Email Address"/>
                                                </span>
                                                <textarea name="" ></textarea>
                                                <b>Rating: </b> <img src="images/product-details/rating.png" alt="" />
                                                <button type="button" class="btn btn-default pull-right">
                                                    Submit
                                                </button>
                                            </form>
                                        </div>
                                    </div>

                                </div>
                            </div><!--/category-tab-->

                            <div class="recommended_items"><!--recommended_items-->
                                <h2 class="title text-center">recommended items</h2>

                                <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner">
                                        <div class="item active">	
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img src="images/m4.png" alt="" />
                                                            <h2>$56</h2>
                                                            <p>Easy Polo Black Edition</p>
                                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img src="images/m2.png" alt="" />
                                                            <h2>$56</h2>
                                                            <p>Easy Polo Black Edition</p>
                                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img src="images/m3.png" alt="" />
                                                            <h2>$56</h2>
                                                            <p>Easy Polo Black Edition</p>
                                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">	
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img src="images/m1.png" alt="" />
                                                            <h2>$56</h2>
                                                            <p>Easy Polo Black Edition</p>
                                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img src="images/m4.png" alt="" />
                                                            <h2>$56</h2>
                                                            <p>Easy Polo Black Edition</p>
                                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="product-image-wrapper">
                                                    <div class="single-products">
                                                        <div class="productinfo text-center">
                                                            <img src="images/m3.png" alt="" />
                                                            <h2>$56</h2>
                                                            <p>Easy Polo Black Edition</p>
                                                            <button type="button" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                                        <i class="fa fa-angle-left"></i>
                                    </a>
                                    <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                                        <i class="fa fa-angle-right"></i>
                                    </a>			
                                </div>
                            </div><!--/recommended_items-->

                        </div>
                    </div>
                </div>
            </section>


            <div class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-12 text-center mb-2">
                            <a href="/">
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

            <script src="js/jquery.js"></script>
            <script src="js/price-range.js"></script>
            <script src="js/jquery.scrollUp.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.prettyPhoto.js"></script>
            <script src="js/main1.js"></script>



    </body>
</html>

