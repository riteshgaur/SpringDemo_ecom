<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/HeaderFooter/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <br>
            <h1>Product Inventory Page</h1>

            <p class="lead">This is the product inventory page!</p>
        </div>

        <table class="table table-hover table-responsive">

            <thead class="thead-dark">
            <tr>
                <th>Image</th>
                <th>Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th>Delete</th>
                <th>Details</th>

            </tr>
            </thead>

            <c:forEach items="${products}" var="product">

                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productID}.png"/>" alt="Product-Image"
                             style="width: 100px"/></td>
                    <td>${product.name}</td>
                    <td>${product.category}</td>
                    <td>${product.condition}</td>
                    <td>$${product.price}</td>
                    <!--above $ for price tag, do not get confused with JSTL $ next to it -->

                    <td><a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productID}"/>">
                        <img src="<c:url value="/resources/bootstrap4/svg/circle-x.svg"/>" alt="icon name"
                             style="width: 16px; height: 16px"></a></td>
                    <td><a href="<spring:url value="/productList/viewProduct/${product.productID}"/>">
                        <img src="<c:url value="/resources/bootstrap4/svg/aperture.svg"/>" alt="icon name"
                             style="width: 16px; height: 16px"></a>
                    </td>
                </tr>
                </tr>


            </c:forEach>


        </table>


        <a href="<spring:url value="/admin/productInventory/addProduct" />" class="btn btn-primary">Add Product</a>

        <%@include file="/WEB-INF/views/HeaderFooter/footer.jsp" %>
