<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/HeaderFooter/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <br>
            <h1>Add Product</h1>

            <p class="lead">Fill the below information to add a product:</p>
        </div>

        <form:form action="#" method="post" modelAttribute="product" enctype="multipart/form-data">

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="name" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="category" id="category"
                                                             value="Book"/>Book</label>
            <label class="checkbox-inline"><form:radiobutton path="category" id="category"
                                                             value="AudioBook"/>Audio Book</label>
            <label class="checkbox-inline"><form:radiobutton path="category" id="category"
                                                             value="E-Book"/>E-Book</label>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="description" id="description" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="price">Price</label>
            <form:input path="price" id="price" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="condition" id="condition"
                                                             value="new"/>New</label>
            <label class="checkbox-inline"><form:radiobutton path="condition" id="condition"
                                                             value="used"/>Used</label>
        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="status" id="status"
                                                             value="Avaialble"/>Avaialble
            </label>
            <label class="checkbox-inline"><form:radiobutton path="status" id="status"
                                                             value="NOTAvaialble"/>Not-Avaialble
            </label>
        </div>

        <div class="form-group">
            <label for="instock">Unit In Stock</label>
            <form:input path="instock" id="instock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="manufacturer" id="manufacturer" class="form-Control"/>
        </div>


        <div class="form-group">
            <label for="image">Upload Image</label>
            <form:input path="image" type="file" class="form:input"/>

        </div>


        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>

        </form:form>


        <%@include file="/WEB-INF/views/HeaderFooter/footer.jsp" %>
