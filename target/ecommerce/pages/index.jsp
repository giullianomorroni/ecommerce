<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">ecommerce</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">Ajuda</a>
                    </li>
                    <li>
                        <a href="#">Produtos</a>
                    </li>
                    <li>
                        <a href="#">Carrinho</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">
        <div class="row" style="margin-top: 80px;">
            <div class="col-md-3">
                <p class="lead">ecommerce</p>
                <div class="list-group">
                    <a href="#" class="list-group-item active">Categoria 1</a>
                    <a href="#" class="list-group-item">Categoria 2</a>
                    <a href="#" class="list-group-item">Categoria 3</a>
                </div>
            </div>

            <div class="col-md-9">
	            <div class="col-md-4">
    	            <div class="thumbnail" style="margin-bottom: 0px;">
        	            <img class="img-responsive" src="/ecommerce/static/images/1.jpg" alt="">
            	        <div class="caption-full">
                	        <h4 class="pull-right">R$1.99</h4>
                    	    <h4><a href="#">Product Name</a>
                        	</h4>
                        	<p>See more snippets like these online store reviews</p>
                    	</div>
                	</div>
	                <div class="well">
	                </div>
	            </div>
	            
	            <div class="col-md-4">    
	                <div class="thumbnail" style="margin-bottom: 0px;">
        	            <img class="img-responsive" src="/ecommerce/static/images/2.jpg" alt="">
            	        <div class="caption-full">
                	        <h4 class="pull-right">R$1.99</h4>
                    	    <h4><a href="#">Product Name</a>
                        	</h4>
                        	<p>See more snippets like these online store reviews</p>
                    	</div>
                	</div>
	                <div class="well">
	                </div>
	            </div>
	            
	            <div class="col-md-4">
	                <div class="thumbnail" style="margin-bottom: 0px;">
        	            <img class="img-responsive" src="/ecommerce/static/images/3.jpg" alt="">
            	        <div class="caption-full">
                	        <h4 class="pull-right">R$1.99</h4>
                    	    <h4><a href="#">Product Name</a>
                        	</h4>
                        	<p>See more snippets like these online store reviews</p>
                    	</div>
                	</div>
	                <div class="well">
	                </div>
	            </div>
	            
	            <div class="col-md-4">    
	                <div class="thumbnail" style="margin-bottom: 0px;">
        	            <img class="img-responsive" src="/ecommerce/static/images/4.jpg" alt="">
            	        <div class="caption-full">
                	        <h4 class="pull-right">R$1.99</h4>
                    	    <h4><a href="#">Product Name</a>
                        	</h4>
                        	<p>See more snippets like these online store reviews</p>
                    	</div>
                	</div>
	                <div class="well">
	                </div>
	            </div>
	            
	            <div class="col-md-4">    
	                <div class="thumbnail" style="margin-bottom: 0px;">
        	            <img class="img-responsive" src="/ecommerce/static/images/5.jpg" alt="">
            	        <div class="caption-full">
                	        <h4 class="pull-right">R$1.99</h4>
                    	    <h4><a href="#">Product Name</a>
                        	</h4>
                        	<p>See more snippets like these online store reviews</p>
                    	</div>
                	</div>
	                <div class="well">
	                	<button class="btn-success" onclick="adicionarAoCarrinho(5);">Comprar</button>
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
