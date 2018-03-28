<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="/WEB-INF/views/HeaderFooter/header.jsp" %>

<div class="container">
    <br>

    <p class="lead">Product Details</p>


</div>

<div class="container" ng-app="cartApp">


    <div class="row">

        <div class="col-md-5"><img src="<c:url value="/resources/images/${product.productID}.png"/>" alt="Product-Image"
                                   style="width: 280px; height:400px"/></div>
        <div class="col-md-5">
            <h3><b>Name:</b>${product.name}</h3>
            <p><b>Description:</b>${product.description}</p>
            <p><b>Category:</b>${product.category}</p>
            <p><b>Condition:</b>${product.condition}</p>
            <P><b>Price:$</b>${product.price}</P>
            <p><b>Stock:</b>${product.instock}</p>
        </div>


    </div>

    <hr>
    <c:set var="role" scope="page" value="${param.role}"/>
    <c:set var="url" scope="page" value="/product/productList"/>
    <c:if test="${role='admin'}">
        <c:set var="url" scope="page" value="/admin/productInventory"/>
    </c:if>

    <p ng-controller="cartCtrl">
        <a href="<c:url value="${url}" />" class="btn btn-default">Back</a>
        <a href="#" class="btn btn-warning btn-large"
           ng-click="addToCart('${product.productID}')"><span
                class="glyphicon glyphicon-shopping-cart"></span>Order
            Now</a>
        <a href="<spring:url value="/cart" />"
           class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a>
    </p>

</div>


</div>
<%@include file="/WEB-INF/views/HeaderFooter/footer.jsp" %>