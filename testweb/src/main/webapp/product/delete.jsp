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
    <title>Delete Product</title>
</head>
<body>
<h1>Xóa sản phẩm</h1>
<p>
    <a href="product">Quay lại danh sách sản phẩm</a>
</p>
<form method="post">
    <h3>Bạn chắc chắn muốn xóa?</h3>
    <fieldset>
        <legend>Thông tin sản phẩm</legend>
        <table>
            <tr>
                <td>Id: </td>
                <td>${requestScope["product"].getId()}</td>
            </tr>
            <tr>
                <td>Tên sản phẩm: </td>
                <td>${requestScope["product"].getName()}</td>
            </tr>
            <tr>
                <td>Giá: </td>
                <td>${requestScope["product"].getPrice()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Xác nhận"></td>
                <td><a href="product">Quay lại danh sách sản phẩm</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
