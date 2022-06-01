<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
    <head>
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
        <link href="csss/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div  class="col-sm-9 ">
                           
                            <a href="/WebShopAloneBirds/Manager">  
                            <h2 style="color:pink; margin-bottom: 30px; font-size: 50px;margin-left:30px" ><b><i>List Product</i></b></h2>
                            </a>
                            
                        </div>
                        <div style="margin-top:50px" class="col-sm-3">
                      <a style="margin-left:100px; background-color: pink" href="dicts/add"  class="btn btn-success" data-toggle="modal"> <span>New Product</span></a>
                      <a Style="display:block; padding-left: 110px" href="/WebShopAloneBirds/">
                                <u><i>Back to Home</u></i>
                            </a>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                           
                            <th>ID</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Image_ad</th>
                            <th>Price</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${product}" var="o">
                            <tr>
                                
                                <td>${o.id}</td>
                                <td>${o.name}</td>
                                <td>
                                    <img src="./images/${o.image}" style="height:270px;">
                                </td>
                                <td>
                                    <img src="./images/${o.image_ad}" style="height:270px;">
                                </td>
                                <td>${o.price} $</td>
                                <td>
                                    <a href="/WebShopAloneBirds/LoadEdit?eid=${o.id}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="/WebShopAloneBirds/delete?did=${o.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                            <!-- MOdal Delete -->
                        <div id="deleteEmployeeModal" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form>
                                        <div class="modal-header">						
                                            <h4 class="modal-title">Delete Product</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        </div>
                                        <div class="modal-body">					
                                            <p>Are you sure you want to delete these Records?</p>
                                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                                        </div>
                                        <div class="modal-footer">
                                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                            <form action="/WebShopAloneBirds/delete?did=${o.id}">
                                            <input  type="submit" class="btn btn-danger" value="Delete">
                                            </form>
                                           
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    </tbody>
                </table>
               
            </div>
        </div>
        <!-- Add Product -->
        <div  id="addEmployeeModal" class="modal fade">
            
            <div style="margin-right:-50px;margin-top: 150px"  class="modal-dialog">
                <div style="width:450px" class="modal-content">
                    <form action="newproduct" method="post">
                        
                        <div style="background-color: pink; color: white;" class="modal-header d-inline-block">						
                            <h4 class="modal-title"><i>New Product</i></h4>
                          
                        </div>
                        <div class="modal-body">
                             <div class="form-group">              
                                 <input  style="margin-left: 50px;background-color: lightpink;color: pink; border: 2px solid lightpink; height:0.1px!important;width: 250px;font-size: 0.1px ;border-radius: 20px" value="1" name="id" type="text" class="form-control" readonly required>
                            </div>
                            <div class="form-group">
                                <label style="color: hotpink;">Name</label>
                                    <input style="border-radius: 20px;border:2px solid pink;width:400px"  name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label style="color: hotpink;">Image</label>
                                <input style="border-radius: 20px;border:2px solid pink;width:400px" name="image" type="file" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label style="color: hotpink;">Image_ad</label>
                                <input style="border-radius: 20px;border:2px solid pink;width:400px" name="image_ad" type="file" class="form-control" required>
                            </div>
                            <div  class="form-group">
                                <label style="color: hotpink;">Price</label>
                                <input style="border-radius: 20px;border:2px solid pink;width:400px" name="price" type="type" placeholder="Insert Price" class="form-control" required>
                            </div>
                            
                            <div class="form-group">
                                <label style="color: hotpink;">Category</label>
                                <select style="width:200px;height: 35px;border-radius: 20px;border:2px solid pink" name="category"  class="form-select" aria-label="Default select example">
                                    <c:forEach items="${cate}" var="o">
                                        <option value="${o.id}"> &nbsp &nbsp ${o.namec}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input style="background-color: lightpink;border-radius: 30px !important;" type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input style="background-color: hotpink;border-radius: 30px !important;" type="submit" class="btn btn-success" value="Add">
                        </div>
                    
                    </form>
                </div>
            </div>
        </div>
       
      
       <script src="js/manager.js" type="text/javascript"></script>
        <script>
               
        </script>
    </body>
</html>