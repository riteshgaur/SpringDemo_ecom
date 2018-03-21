<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="/WEB-INF/views/HeaderFooter/header.jsp" %>

<div class="container">
    <br>

    <p class="lead">Product Details</p>


</div>

<div class="container">


    <div class="row">

        <div class="col-md-5"><img src="#" alt="Image" style="width: 100%; height: 300px%"></div>
        <div class="col-md-5">
            <h3>${product.name}</h3>
            <p>${product.description}</p>
            <p>${product.category}</p>
            <p>${product.condition}</p>
            <P>$${product.price}</P>
            <p>${product.instock}</p>
        </div>

    </div>


</div>


</div>
<%@include file="/WEB-INF/views/HeaderFooter/footer.jsp" %>