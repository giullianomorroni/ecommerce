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

            <div class="col-md-9" id="items">
            	<h2>Shopping Cart</h2>
            	<c:forEach var="product" items="${shoppingCart.products}">
		            <div class="col-md-3">
	    	            <div class="thumbnail" style="margin-bottom: 0px;">
	        	            <img class="img-responsive" src="/ecommerce/static/images/${product.id}.jpg" alt="">
	            	        <div class="caption-full">
	                    	    <h4><a href="/ecommerce/product/${product.id}">${product.name}</a></h4>
	                    	    <h3>
	                	        Total R$ <f:formatNumber maxFractionDigits="2">${product.total}</f:formatNumber>
	                    		</h3>
	                    	</div>
	                	</div>
		                <div class="well">
		                	<h4> Quantidade ${product.quantity} </h4>
		                	<button class="btn-danger" onclick="aumentarOuDiminuirQuantidadeItem(${product.id},false)" style="width:50px; margin-right: 10px;font-size: 40px;">-</button>
		                	<button class="btn-success" onclick="aumentarOuDiminuirQuantidadeItem(${product.id},true)" style="width:50px; margin-left: 10px;font-size: 40px;">+</button>
		                </div>
		            </div>
            	</c:forEach>
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
