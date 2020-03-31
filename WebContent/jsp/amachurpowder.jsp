<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Food Code Proudly Presents By Themexpert</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

	<!-- Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700' rel='stylesheet' type='text/css'>

	<!-- Css -->
	<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" />
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">

	<!-- jS -->
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
	<script src="js/owl.carousel.min.js" type="text/javascript"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/main.js" type="text/javascript"></script>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	
	<script>
	
		function onclickFunction(aId){
		    $.ajax({
		        type: "get",
		        url: "/OmAgriFarmApp/cart?action=buy",
		        data: {
		            id:aId
		        },
		        success: function (data){
		            alert(data);
		        },
		        error: function (xhr, ajaxOptions, thrownError){
	
		        }
		    });
		    return false;
		}
	
	</script>
	
</head>
<body>


<!-- TOP HEADER Start
    ================================================== -->
	
	<section id="top">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<p class="contact-action"><i class="fa fa-phone-square"></i>IN CASE OF ANY QUESTIONS, CALL THIS NUMBER: <strong>+91 9448130647</strong></p>
				</div>
				<div class="col-md-3 clearfix">
					<ul class="login-cart">
						<li>
							<div class="cart dropdown">
						  		<a data-toggle="dropdown" href="#" class="notification"><i class="fa fa-shopping-cart"></i>Cart <span id="productCount" class="badge">${ sessionScope.productCount }</span></a>
					  			<div class="dropdown-menu dropup">
					  				<span class="caret"></span>
						  			<ul class="media-list">

									</ul>
									<a  href="path?action=checkout"> <button class="btn btn-primary btn-sm"> Checkout </button> </a>
							    </div>
							</div>
						</li>
					</ul>
				</div>
				<div class="col-md-2">
					<div class="search-box">
						<div class="input-group">
					    	<input placeholder="Search Here" type="text" class="form-control">
					      	<span class="input-group-btn">
					        	<button class="btn btn-default" type="button"></button>
					      	</span>
					    </div><!-- /.input-group -->
					</div><!-- /.search-box -->
				</div>
			</div> <!-- End Of /.row -->
		</div>	<!-- End Of /.Container -->

	
	<!-- MODAL Start
    	================================================== -->

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
		    	<div class="modal-content">
		    		<div class="modal-header">
		        		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		        		<h4 class="modal-title" id="myModalLabel">Introduce Yourself</h4>
		      		</div>
			      	<div class="modal-body clearfix">

						<form action="#" method="post" id="create-account_form" class="std">
							<fieldset>
								<h3>Create your account</h3>
								<div class="form_content clearfix">
									<h4>Enter your e-mail address to create an account.</h4>
									<p class="text">
										<label for="email_create">E-mail address</label>
										<span>
											<input placeholder="E-mail address"  type="text" id="email_create" name="email_create" value="" class="account_input">
					                    </span>
									</p>
									<p class="submit">
										<button class="btn btn-primary">Create Your Account</button>
									</p>
								</div>
							</fieldset>
						</form>
			      		<form action="" method="post" id="login_form" class="std">
							<fieldset>
								<h3>Already registered?</h3>
								<div class="form_content clearfix">
									<p class="text">
									<label for="email">E-mail address</label>
										<span><input placeholder="E-mail address" type="text" id="email" name="email" value="" class="account_input"></span>
									</p>
									<p class="text">
									<label for="passwd">Password</label>
										<span><input placeholder="Password" type="password" id="passwd" name="passwd" value="" class="account_input"></span>
									</p>
									<p class="lost_password">
										<a href="#popab-password-reset" class="popab-password-link">Forgot your password?</a>
									</p>
									<p class="submit">
										<button class="btn btn-success">Log in</button>
									</p>
								</div>
							</fieldset>
						</form>
			      	</div>
			      	<div class="modal-footer">
			        	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      	</div>
		    	</div>
		  	</div>
		</div>	
	</section>  <!-- End of /Section -->
	


	<!-- LOGO Start
    ================================================== -->
	
	<header>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<a href="#">
						<img src="images/logofarm.png" alt="logo">
					</a>
				</div>	<!-- End of /.col-md-12 -->
			</div>	<!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</header> <!-- End of /Header -->

	

		<!-- MENU Start
    ================================================== -->

	<nav class="navbar navbar-default">
		<div class="container">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		    </div> <!-- End of /.navbar-header -->

<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      	<ul class="nav navbar-nav nav-main">
		        	<li><a href="path?action=home">HOME</a></li>
					<li><a href="path?action=aboutus">ABOUT US</a></li>
					<li class="dropdown">
						<a href="#">PRODUCTS<span class="caret"></span></a>
						<ul class="dropdown-menu">
						    <li><a  href="path?action=alphonso">Alphonso Mango</a></li>
							<li><a  href="path?action=mallika">Mallika Mango</a></li>
							<li><a  href="path?action=dassehri">Dassehri Mango</a></li>
							<li><a  href="path?action=kaser">Kesar Mango</a></li>
							<li><a  href="path?action=jaggery">Jaggery</a></li>
							<li><a  href="path?action=jaggerypowder">Jaggery powder</a></li>
							<li><a  href="path?action=amachurpowder">Amachur powder</a></li>
							<li><a  href="path?action=jam">Jam</a></li>
							<li><a  href="path?action=mangopapad">Mango papad</a></li>
						</ul>
					</li> <!-- End of /.dropdown -->
					<li><a href="path?action=products">ORDER</a></li>
					<li><a href="path?action=contact">CONTACT US</a></li>
		        </ul> <!-- End of /.nav-main -->
		    </div>	<!-- /.navbar-collapse -->
		</div>	<!-- /.container-fluid -->
	</nav>	<!-- End of /.nav -->



<!-- breadcrumb Start
    ================================================== -->

	<section id="topic-header">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<h1>Products Details</h1>
					<p></p>
				</div>	<!-- /.col-md-4 -->
				<div class="col-md-8 hidden-xs">
					<ol class="breadcrumb pull-right">
					  	<li><a href="#">Home</a></li>
					  	<li><a href="#">Products</a></li>
						<li><a href="#">Mango Products</a></li>
					  	<li class="active">Amachur Powder</li>
					</ol>
				</div> <!-- /.col-md-8 -->
			</div>	<!-- /.row -->
		</div>	<!-- /.container-->
	</section><!-- /Section -->





	<section id="single-product">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="single-product-img">
						<img src="images/singleamachur.jpg" alt="not">
					</div>

				</div> <!-- End of /.col-md-5 -->
				<div class="col-md-7">
					<div class="block">
						<div class="product-des">
							<h4>Amachur Powder</h4>
							<p class="price">$380</p>
							<p>&emsp;Amchoor or aamchur or amchur, also referred to as mango powder, is a fruity spice powder made from dried unripe green mangoes and is used as a citrusy seasoning.
							It is mostly produced in India, and is used to flavor foods and add the nutritional benefits of mangoes when the fresh fruit is out of season.<br><br>
							&emps;It has a honey-like fragrance and a sour fruity flavor and is a tart pale-beige-to-brownish powder.
							It is used in dishes where acidity is required, in stir fried vegetable dishes, soups, curries, and to tenderize meat and poultry.
							It is used to add a fruit flavor without adding moisture, or as a souring agent, and lends an acidic brightness to the foods it is applied to.<br><br>
							&emsp;Amchoor is a predominant flavoring agent used in Indian dishes, prominently in the Northern parts of India where it is used to add a sour tangy fruity flavor without moisture.
							It is used to flavor samosa and pakora fillings, stews and soups, fruit salads and pastries, curries, chutneys, pickles and dals and to tenderize meats, poultry, and fish.
							It is added to marinades for meat and poultry as an enzymatic tenderizer and lends its sourness to chutneys and pickles.</p>
							<a class="view-link" href="#"><i class="fa fa-plus-circle"></i>Add To Cart</a>
						</div>	<!-- End of /.product-des -->
					</div> <!-- End of /.block -->
				</div>	<!-- End of /.col-md-4 -->
			</div>	<!-- End of /.row -->
			<br>
			<br>
			<br>
		</div>	<!-- End of /.Container -->
	</section> <!-- End of /.Single-product -->

	<!-- FOOTER Start
    ================================================== -->

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="block clearfix">
						<a href="#">
							<img src="images/logofarmfoot.png" alt="" hspace="20">
						</a>
						<p>
							Our goal is serve Organic products and <br>&nbsp;save human life with harmful disease.
						</p>
					</div>	<!-- End Of /.block -->
				</div> <!-- End Of /.Col-md-4 -->
				<div class="col-md-4">
					<div class="block">
					</div>
				</div>
				<div class="col-md-4">
					<div class="block">
						<h4>GET IN TOUCH</h4>
						<p ><i class="fa  fa-map-marker"></i> <span>FARM Address:</span>Dharwad Road, Dharwad</p>
						<p ><i class="fa  fa-map-marker"></i> <span>HOME Address:</span>Maratha Colony, <br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&nbsp;&nbsp;Near Ganesh Temple, Dharwad</p>
						<p> <i class="fa  fa-phone"></i> <span>Phone:</span>+91 9448130647 <br> &emsp;&emsp;&emsp;&emsp; &emsp;&nbsp;&nbsp;+91 9481014060</p>
 
						<p class="mail"><i class="fa  fa-envelope"></i>Eamil: <span>gangahosmani@gmail.com</span></p>
					</div>	<!-- End Of /.block -->
				</div> <!-- End Of Col-md-3 -->
			</div> <!-- End Of /.row -->
		</div> <!-- End Of /.Container -->
	</footer> <!-- End Of Footer -->
	
	<a id="back-top" href="#"></a>
</body>
</html>