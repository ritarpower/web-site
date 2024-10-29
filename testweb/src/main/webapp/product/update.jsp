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
    <title>Edit Product</title>
</head>
<body>
<h1>Chỉnh sửa sản phẩm</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="product">Quay lại danh sách sản phẩm</a>
</p>
<form method="post">
    <fieldset>
        <legend>Thông tin sản phẩm</legend>
        <table>
            <tr>
                <td>Tên mới: </td>
                <td><input type="text" name="name" id="name" value="${requestScope['product'].getName()}"></td>
            </tr>
            <tr>
                <td>Giá mới: </td>
                <td><input type="number" name="price" id="price" value="${requestScope['product'].getPrice()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Xác nhận"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
