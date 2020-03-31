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
					<li class="active"><a href="path?action=aboutus">ABOUT US</a></li>
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
					<h1>About Us</h1>
					<p></p>
				</div>	<!-- /.col-md-4 -->
				<div class="col-md-8 hidden-xs">
					<ol class="breadcrumb pull-right">
					  	<li><a href="#">Home</a></li>
					  	<li>About Us</li>
					 </ol>
				</div> <!-- /.col-md-8 -->
			</div>	<!-- /.row -->
		</div>	<!-- /.container-->
	</section><!-- /Section -->


	<section id="blog">
		<div class="container">
			<div class="row">
				<div class="col-md-9 clearfix">
					<ul class="blog-zone">
					    <li>
					        <div class="blog-icon">
					        	<i class="fa  fa-pencil"></i>
					        </div>
					        <div class="blog-box">
					        	<img src="images/blog-1.jpg" alt="">
					            
					            <div class="blog-post-body clearfix">
						            <a href="blog-single.html">
					            		<h2>Ricebean black-eyed pea</h2>
						            </a>
					            	<div class="blog-post-tag">
						            	<div class="block">
						            		<i class="fa fa-clock-o"></i>
						            		<p>12 Jan,2014</p>
						            	</div>
						            	<div class="block">
						            		<i class="fa fa-user"></i>
						            		<p>Admin</p>
						            	</div>
						            	<div class="block">
						            		<i class="fa fa-tags"></i>
						            		<p>
						            			<a href="">Food Culture</a>,
						            			<a href="">Green Items</a>
						            		</p>
						            	</div>
						            	<div class="block">
						            		<i class="fa fa-comments"></i>
						            		<p>3 Comments</p>
						            	</div>
						            </div>
						            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, nostrum inventore debitis accusantium natus praesentium enim sequi culpa provident dignissimos veniam deserunt voluptatibus fugit delectus pariatur numquam optio quidem illo. Obcaecati, placeat, enim accusantium sunt inventore sed dolorum molestiae ab consequuntur voluptatem dolor necessitatibus reprehenderit adipisci explicabo hic quibusdam pariatur!</p>
						            <a href="blog-single.html" class="btn btn-default btn-transparent pull-right" role="button">
								        <span>Read More</span>
								    </a>
					            </div>
					        </div>	<!-- End of /.blog-box -->
					    </li>
					    <li>
					        <div class="blog-icon">
					        	<i class="fa  fa-video-camera"></i>
					        </div>

					        <!-- Youtube -->
					        <div class="blog-box">
					        	<iframe src="http://www.youtube.com/embed/mcw6j-QWGMo" frameborder="0" allowfullscreen="" width="100%" height="400px"></iframe>
					            
					            <div class="blog-post-body clearfix">
					            	<a href="blog-single.html">
					            		<h2>Youtube Video Post Type Example</h2>
					            	</a>
					            	<div class="blog-post-tag">
						            	<div class="block">
						            		<i class="fa fa-clock-o"></i>
						            		<p>12 Jan,2014</p>
						            	</div>
						            	<div class="block">
						            		<i class="fa fa-user"></i>
						            		<p>Admin</p>
						            	</div>
						            	<div class="block">
						            		<i class="fa fa-tags"></i>
						            		<p>
						            			<a href="">Food Culture</a>,
						            			<a href="">Green Items</a>
						            		</p>
						            	</div>
						            	<div class="block">
						            		<i class="fa fa-comments"></i>
						            		<p>3 Comments</p>
						            	</div>
						            </div>
						            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, nostrum inventore debitis accusantium natus praesentium enim sequi culpa provident dignissimos veniam deserunt voluptatibus fugit delectus pariatur numquam optio quidem illo. Obcaecati, placeat, enim accusantium sunt inventore sed dolorum molestiae ab consequuntur voluptatem dolor necessitatibus reprehenderit adipisci explicabo hic quibusdam pariatur!</p>
						            <a href="blog-single.html" class="btn btn-default btn-transparent pull-right" role="button">
								        <span>Read More</span>
								    </a>
					            </div>
					        </div>	<!-- End of /.blog-box -->
					    </li>
					    <li>
					       <div class="blog-icon">
					        	<i class="fa fa-music"></i>
					        </div>

					        <!-- Sound Cloud -->
					        <div class="blog-box">
					        	<iframe src="https://w.soundcloud.com/player/?url=https://soundcloud.com/haloproject/halo-scenes-from-the-four" frameborder="0" allowfullscreen="" width="100%" height="166"></iframe>
					            
					            <div class="blog-post-body clearfix">
					            	<a href="blog-single.html">
					            		<h2>Aduio Post Type Example</h2>
					            	</a>
					            	<div class="blog-post-tag">
						            	<div class="block">
						            		<i class="fa fa-clock-o"></i>
						            		<p>12 Jan,2014</p>
						            	</div>
						            	<div class="block">
						            		<i class="fa fa-user"></i>
						            		<p>Admin</p>
						            	</div>
						            	<div class="block">
						            		<i class="fa fa-tags"></i>
						            		<p>
						            			<a href="">Food Culture</a>,
						            			<a href="">Green Items</a>
						            		</p>
						            	</div>
						            	<div class="block">
						            		<i class="fa fa-comments"></i>
						            		<p>3 Comments</p>
						            	</div>
						            </div>
						            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, nostrum inventore debitis accusantium natus praesentium enim sequi culpa provident dignissimos veniam deserunt voluptatibus fugit delectus pariatur numquam optio quidem illo. Obcaecati, placeat, enim accusantium sunt inventore sed dolorum molestiae ab consequuntur voluptatem dolor necessitatibus reprehenderit adipisci explicabo hic quibusdam pariatur!</p>
						            <a href="blog-single.html" class="btn btn-default btn-transparent pull-right" role="button">
								        <span>Read More</span>
								    </a>
					            </div>
					        </div>
					    </li>
					  </ul>	<!-- End of /.blog-zone -->

					<!-- Pagination -->
					 <ul class="pagination pull-right">
					  	<li class="disabled"><a href="#">&laquo;</a></li>
					  	<li class="active"><a href="#">1 <span class="sr-only"></span></a></li>
					  	<li><a href="#">2</a></li>
					  	<li><a href="#">3</a></li>
					  	<li><a href="#">4</a></li>
					  	<li><a href="#">»</a></li>
					</ul>	<!-- End of /.pagination -->
				</div>	<!-- End of /.col-md-9 -->

				<div class="col-md-3">
					<div class="blog-sidebar">
						<div class="block">
							<h4>Catagories</h4>
							<div class="list-group">
								<a href="#" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									Italian Foods
								</a>
								<a href="#" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									Traditional Food
								</a>
								<a href="#" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									Indian Food
								</a>
								<a href="#" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									Spanish Food
								</a>
								<a href="#" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									Thai FoodN
								</a>
							</div>
						</div>	<!-- End of /.block -->
						<div class="block">
							<h4>Popular Posts</h4>
							<ul class="media-list">
							 	<li class="media">
							    	<a class="pull-left" href="#">
							      		<img class="media-object" src="images/post-img.png" alt="...">
							    	</a>
							    	<div class="media-body">
							      		<a href="" class="media-heading">
							      			Lorem ipsum dolor</a>
							    	  	<p>January 10,2014</p>
							    	</div>
							  	</li>	<!-- End of /.media -->
							  	<li class="media">
							    	<a class="pull-left" href="#">
							      		<img class="media-object" src="images/post-img-2.png" alt="...">
							    	</a>
							    	<div class="media-body">
							      		<a href="" class="media-heading">
							      			Mauris blandit aliquet</a>
							    	  	<p>January 10,2014</p>
							    	</div>
							  	</li>	<!-- End of /.media -->
							  	<li class="media">
							    	<a class="pull-left" href="#">
							      		<img class="media-object" src="images/post-img-3.png" alt="...">
							    	</a>
							    	<div class="media-body">
							      		<a href="" class="media-heading">
							      			Quisque velit nisi</a>
							    	  	<p>January 10,2014</p>
							    	</div>
							  	</li>	<!-- End of /.media -->
							</ul>	<!-- End of /.media-list -->
						</div>	<!-- End of /.block -->

						<div class="block">
							<h4>Tag Cloud</h4>
							<div class="tag-link">
								<a href="">BALLET</a>
								<a href="">BLOG</a>
								<a href="">CHRISTMAS</a>
								<a href="">ELEGANCE</a>
								<a href="">ELEGANT</a>
								<a href="">SHOPPING</a>
								<a href="">SHOP</a>
								<a href="">PHOTOGRAPHY</a>
							</div>	
						</div>	<!-- End of /.block -->
						
					</div>	<!-- End of /.blog-sidebar -->
				</div>	<!-- End of /.col-md-3 -->
			</div>	<!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</section>	<!-- End of /#Blog -->



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