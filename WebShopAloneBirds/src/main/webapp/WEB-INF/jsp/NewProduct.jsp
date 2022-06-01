<%-- 
    Document   : dicts-add-word.jsp
    Created on : Mar 11, 2022, 7:58:38 PM
    Author     : dt_ng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>My Dictionary</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    </head>
    <body>    
    <div style="margin-left:200px;margin-top: 100px"  class="modal-dialog">
            <div style="width:450px" class="modal-content">
                <form:form  method="POST" modelAttribute="word" enctype="multipart/form-data">

                    <div style="background-color: pink; color: white;" class="modal-header d-inline-block">						
                        <h4 class="modal-title"><i>New Product</i></h4>

                    </div>
                    <div class="modal-body">
                        <div class="form-group">              
                            <input  style="margin-left: 50px;background-color: lightpink;color: pink; border: 2px solid lightpink; height:0.1px!important;width: 250px;font-size: 0.1px ;border-radius: 20px" value="1" name="id" type="text" class="form-control" readonly required>
                        </div>
                        <div class="form-group">
                            <label style="color: hotpink;">Name</label>
                             <td><form:input path="word" style="border-radius: 20px;border:2px solid pink;width:400px" type="text" class="form-control" /></td>                          
                        </div>
                        <div class="form-group">
                            <label style="color: hotpink;">Image</label>
                             <form:input path="img" style="border-radius: 20px;border:2px solid pink;width:400px" type="file" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label style="color: hotpink;">Image_ad</label>
                            <form:input style="border-radius: 20px;border:2px solid pink;width:400px"  class="form-control" path="img_ad"  type="file" />
                        </div>
                        <div  class="form-group">
                            <label style="color: hotpink;">Price</label>
                            <td><form:input path="description" style="border-radius: 20px;border:2px solid pink;width:400px" name="price" type="text" placeholder="Insert Price" class="form-control"/></td>
                        </div>

                       <div class="form-group">
                                <label style="color: hotpink;">Category</label>
                                <form:select style="width:200px;height: 35px;border-radius: 20px;border:2px solid pink" path="cate" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${list}" var="o">
                                        <option value="${o.id}"> &nbsp &nbsp ${o.namec}</option>
                                    </c:forEach>
                                </form:select>
                            </div>

                    </div>
                    <div class="modal-footer">
                        <input style="background-color: lightpink;border-radius: 30px !important;" type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input style="background-color: hotpink;border-radius: 30px !important;" type="submit" class="btn btn-success" value="Add">
                    </div>

                </form:form>            
            </div>
        <a style="padding-left: 370px; padding-bottom: -100px" href="/WebShopAloneBirds/Manager"> <u>Back to List</u></a>     
        </div>
        <div>
            <a href="/WebShopAloneBirds/Manager">            <img  class="d-block" style="float: right; margin-top: -500px; width: 500px; height: 500px;margin-right: 150px" src="https://i.pinimg.com/originals/55/78/7f/55787f0fa5ccdf796050870d42c32ada.jpg"/>
</a>
        </div>
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="https://cmsv2.yame.vn/uploads/f2c7c59c-b524-4610-bcdd-684022bf7774/THUMB-LOOKBOOK-1-CH%e1%bb%ae.jpg?quality=80&amp;w=700&amp;h=0" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img src="https://cmsv2.yame.vn/uploads/62b0e1bc-e88d-49aa-a511-a1ec406cb36b/thumbmoban.jpg?quality=80&amp;w=700&amp;h=0" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    ...
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  <a style="margin-left:40px; background-color: pink" href=""  class="btn btn-success" data-toggle="modal"> <span>back</span></a>

  <!--   <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">                      
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>

                        <form:form  method="POST" modelAttribute="word" enctype="multipart/form-data">
                            <tr>
                                <td>Name</td> 
                                <td><form:input id="wordId" path="word" /></td>
                            </tr>
                            <tr>
                                <td>Price</td>
                                <td><form:input id="desId" path="description" /></td>
                            </tr>
                            <div class="form-group">
                                <label>Image</label>
                                <form:input  name="image" class="form-control" path="img" type="file" />
                            </div>
                            <div class="form-group">
                                <label>Image_ad</label>
                                <form:input  name="image_ad" class="form-control" path="img_ad"  type="file" />
                            </div>
                            <div class="form-group">
                                <label style="color: hotpink;">Category</label>
                                <form:select style="width:200px;height: 35px;border-radius: 20px;border:2px solid pink" path="cate" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${list}" var="o">
                                        <option value="${o.id}"> &nbsp &nbsp ${o.namec}</option>
                                    </c:forEach>
                                </form:select>
                            </div>
                            

                        </div>
                        <div class="modal-footer">
                            <input type="submit" class="btn btn-success" value="Save">
                            <a style="margin-left:40px; background-color: pink" href="/WebShopAloneBirds/Manager"  class="btn btn-success" data-toggle="modal"> <span>back</span></a>
                        </div>
                    </form:form>                       
                </div>

            </div>
        </div>

    </div> -->
    </body>
</html>
