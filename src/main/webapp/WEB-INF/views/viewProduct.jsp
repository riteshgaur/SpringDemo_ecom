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


</div>


</div>
<%@include file="/WEB-INF/views/HeaderFooter/footer.jsp" %>