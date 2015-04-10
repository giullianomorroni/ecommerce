<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Giulliano Morroni</title>

    <!-- Bootstrap Core CSS -->
    <link href="/ecommerce/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/ecommerce/static/css/shop-item.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
   <%@ include file="/WEB-INF/jsp/menu.jsp" %>

    <!-- Page Content -->
    <div class="container">
        <div class="row" style="margin-top: 80px;">
            <div class="col-md-3">
                <p class="lead">ecommerce</p>
                <div class="list-group">
                </div>
            </div>

            <div class="col-md-9">
            	<h1>Product Details</h1>
            	<h2>${product.name}</h2>
                       <div class="col-md-4">
	    	            <div class="thumbnail" style="margin-bottom: 0px;">
	        	            <img class="img-responsive" src="/ecommerce/static/images/${product.id}.jpg" alt="">
	            	        <div class="caption-full">
	                	        <h4 class="pull-right">R$ 
	                	        	<f:formatNumber maxFractionDigits="2">${product.price}</f:formatNumber>
	                	        </h4>
	                        	<p>${product.description}</p>
	                    	</div>
	                	</div>
		                <div class="well">
		                	<button class="btn-success" onclick="comprar(${product.id});">Comprar</button>
		                	<input type="number" id="quantity" value="1" min="1" max="99">
		                	<img alt="" src="/ecommerce/static/images/green-check-mark.png" style="margin-left: 10px; width: 30px; height: 30px; display: none;" id="${product.id}_check" >
		                </div>
		            </div>
            </div>
        </div>

    </div>
    <!-- /.container -->

    <div class="container">
        <hr>
        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; 2015</p>
                </div>
            </div>
        </footer>
    </div>
    <!-- /.container -->
    <!-- jQuery -->
    <script src="/ecommerce/static/js/jquery.js"></script>
    <script src="/ecommerce/static/js/main.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="/ecommerce/static/js/bootstrap.min.js"></script>
</body>

</html>
