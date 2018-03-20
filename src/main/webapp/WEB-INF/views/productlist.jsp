<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="/WEB-INF/views/HeaderFooter/header.jsp" %>



<div class="container">
    <br>

    <h1>All Products</h1>
        <p> All the listed products</p>

        <table class="table table-hover table-responsive">

            <thead class="thead-dark">
            <tr>
                <th>Image</th>
                <th>Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
            </tr>
            </thead>

            <c:forEach items="${productList}" var="product">

                <tr>
                    <td><img src="#" alt="productImage"></td>
                    <td>${product.name}</td>
                    <td>${product.category}</td>
                    <td>${product.condition}</td>
                    <td>$${product.price}</td>
                    <!--above $ for price tag, do not get confused with JSTL $ next to it -->
                </tr>


            </c:forEach>


        </table>



</div>
<!-- /.container -->




<%@include file="/WEB-INF/views/HeaderFooter/footer.jsp" %>