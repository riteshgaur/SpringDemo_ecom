<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>RG E-Com Shop!</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/bootstrap4/css/bootstrap.css"/>" rel="stylesheet">

</head>

<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">Carousel</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="<c:url value="/"/> ">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
            <form class="form-inline mt-2 mt-md-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
</header>

<br>

<div class="container-fluid">
    <div class="container">

        <h1>All Products</h1>
        <p> All the listed products</p>

        <table class="table table-hover table-responsive table-bordered">

            <thead class="thead-dark">
            <tr>
                <th>Photo Thumb</th>
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
                    <td>${product.category}</td>
                    <td>${product.price}</td>
                </tr>


            </c:forEach>









        </table>


    </div>


</div>
<!-- /.container -->


<!-- FOOTER -->
<footer class="container">
    <p class="float-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017-2018 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
</footer>
</main>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<c:url value="/resources/bootstrap4/js/jquery-3.3.1.min.js" /> integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>
window.jQuery || document.write('<script src="<c:url value="/resources/bootstrap4/js/jquery-3.3.1.min.js"/><\/script>')
</script>

<script src="<c:url value="/resources/bootstrap4/js/bootstrap.js" />" </script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->

</body>

</html>
