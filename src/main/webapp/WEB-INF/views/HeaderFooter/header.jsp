<%--
  Created by IntelliJ IDEA.
  User: riteshgaur
  Date: 20/03/18
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>RG E-Com Shop!</title>


    <!-- Angular JS -->
    <%--<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>--%>
    <%--<script src="http://cdn.static.runoob.com/libs/angular.js/1.4.6/angular.min.js"></script>--%>
    <%--<script src="/resources/bootstrap4/js/angular.min.js"></script>--%>


    <script src="<c:url value="/resources/bootstrap4/js/angular.min.js"/>"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular-route.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/bootstrap4/css/bootstrap.css"/>" rel="stylesheet">

    <!-- Open-iconic -->
    <link href="<c:url value="/resources/bootstrap4/font/css/open-iconic-bootstrap.css"/>" rel="stylesheet">

    <!-- Custom styles
     this template -->
    <link href="<c:url value="/resources/bootstrap4/carousel.css"/>" rel="stylesheet">
</head>

<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">Logo</a>
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
                    <a class="nav-link" href="<c:url value="/productlist"/>">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/admin"/>">Admin</a>
                </li>
            </ul>
            <form class="form-inline mt-2 mt-md-0">
                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
</header>
