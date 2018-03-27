<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: riteshgaur
  Date: 27/03/18
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@include file="/WEB-INF/views/HeaderFooter/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <br>
            <h1>Administrator page</h1>

            <p class="lead">This is the administrator page!</p>
        </div>

        <h3>
            <a href="<c:url value="/admin/productInventory" />">Product Inventory</a>
        </h3>

        <p>Here you can view, check and modify the product inventory!</p>

<%@include file="/WEB-INF/views/HeaderFooter/footer.jsp" %>