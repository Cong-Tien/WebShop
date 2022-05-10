<%-- 
    Document   : dicts-list.jsp
    Created on : Mar 11, 2022, 6:55:35 PM
    Author     : dt_ng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta charset="UTF-8">
        <title>My Dictionary</title>
    </head>
    <body>
        <table width="80%" border="1">
            <tr>
                <th width="30%">Word</th>
                <th width="70%">Description</th>
            </tr>
            <c:forEach items="${words.entrySet()}" var="w">
                <tr>
                    <td>${w.getKey()}</td>
                    <td>${w.getValue()}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
