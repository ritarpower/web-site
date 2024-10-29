<%--
  Created by IntelliJ IDEA.
  User: Ritar
  Date: 10/28/2024
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View Product</title>
</head>
<body>
<h1>Thông tin chi tiết sản phẩm</h1>
<p>
    <a href="/">Quay lại danh sách sản phẩm</a>
</p>
<table>
    <tr>
        <td>Tên sản phẩm: </td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Giá: </td>
        <td>${requestScope["product"].getPrice()}</td>
    </tr>
</table>
</body>
</html>
