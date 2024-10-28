<%--
  Created by IntelliJ IDEA.
  User: Ritar
  Date: 10/28/2024
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<p>
    <a href="product?action=add">Thêm mới sản phẩm</a>
</P>
<table>
    <thead>
        <tr>
            <th>STT</th>
            <th>Tên</th>
            <th>Giá</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${products}" var="p" varStatus="loop">
            <tr>
                <td>${loop.count}</td>
                <td>${p.name}</td>
                <td>${p.price}</td>
                <td><a href="product?action=edit&id=${p.getId()}">Update</a></td>
                <td><a href="product?action=delete&id=${p.getId()}">Xóa</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
