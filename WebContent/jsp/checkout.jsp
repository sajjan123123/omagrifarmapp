<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="totalPrice" value="0"></c:set>
<c:set var="totalProducts" value="0"></c:set>

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
	<link rel="stylesheet" href="css/owl.theme.css">
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
		        url: "/OmAgriFarmApp/cart?action=buyAtCart",
		        data: {
		            id:aId
		        },
		        success: function (data){
		        	// Add response in Modal body
		            $('.modal-body-cart').html("Added to Cart Successfully");
		            // Display Modal
		            $('#myModalAddedCart').modal('show'); 
		        },
		        error: function (xhr, ajaxOptions, thrownError){
	
		        }
		    });
		    return false;
		}
	
	</script>
	
</head>
<body>


<!-- Modal -->
  <div class="modal fade" id="myModalAddedCart" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Cart Info</h4>
        </div>
        <div class="modal-body-cart clearfix">

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

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
					<li>       </li>
					<li>       </li>
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
					<li><a href="path?action=test">TEST CODE</a></li>
		        </ul> <!-- End of /.nav-main -->
		    </div>	<!-- /.navbar-collapse -->
		</div>	<!-- /.container-fluid -->
	</nav>	<!-- End of /.nav -->



	<!-- ORDERS ITEMS Start
    ================================================== -->

	<section id="catagorie">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="block">
						<h1 style="
						    margin-top: 10px;
						    padding-bottom: 5px;
						    font-size: 30px;
						    text-transform:  uppercase;
						    font-weight: 1000">
							Shopping Cart</h1>
						<div class="row" id="updatecart_details">
							<div class="col-lg-9 col-md-9 col-sm-7">
						   		<div class="row userInfo">
						  			<div class="col-xs-12 col-sm-12">
							  			<span id="cart_value_change">
											<div class="cartContent w100"  >
												<table class="table table-bordered cartTable table-responsive" style="width:100%" id="tabe" >
													<tbody>
														<tr class="CartProduct cartTableHeader">
																		<td width="18%">Image</td>
																		<td width="23%">Product</b></td>
																		<!--<td class="back3 name">Size</td>-->
																		<!--<td width="28%">Quantity </td>-->
																	
																		<td width="15%" >Quantity (KG)</td>
																		<!--<td width="12%" style="display:none;">Tax Amount</td>-->
																		<td width="15%" style="display:none;"></td>
																		<td width="12%">Total Cost</td>
																		<td width="2%"  >Remove Item</td>
																		
														</tr>
														
							<c:set var="productTotal" value="0"></c:set>
							<c:forEach var="item" items="${sessionScope.cart }">
								<c:set var="productTotal" value="${item.product.price * item.quantity }"></c:set>
								<c:set var="totalPrice" value="${ totalPrice + productTotal }"></c:set>
								<c:set var="totalProducts" value="${ totalProducts + 1 }"></c:set>
				
														<tr class="CartProduct" >
															<td class="CartProductThumb" style=""  align="center">
																<div>
																	<span class="cart_img" align="center">
																	<img src="${item.product.photo}"  width="100" id="cartimg" >
																	</span>
																</div>
															</td>
															<td style=""> 
																<div class="CartDescription">
													               <p > <a>${item.product.name}</a> </p>
																   <p  style="font-size:12px;"><b>Price </b>&nbsp;:&nbsp;${item.product.price}</p>
													               <!--    <span class="size">12 x 1.5 L</span>
													               <div class="price"><span>$8.80</span>--></div>
													            </div>
													         </td>
													         <td style="" >
													         
													         
													         <div class="input-group">
														          <span class="input-group-btn">
														              <a href="${pageContext.request.contextPath }/cart?action=minusOneAtCart&id=${item.product.id}" 
														              onclick="return confirm('Are you sure, you want to decrease quantity by 1 KG?')"> <button type="button" class="btn btn-primary btn-number"  >
														                <span class="glyphicon glyphicon-minus"></span>
														              </button> </a>
														          </span>
														          <input type="text" readonly name="quant[2]" class="form-control input-number" value="${item.quantity}" min="1" max="100">
														          <span class="input-group-btn">
														              <a href="${pageContext.request.contextPath }/cart?action=buyAtCart&id=${item.product.id}" > <button type="button"  class="btn btn-success btn-number">
														                  <span class="glyphicon glyphicon-plus"></span>
														              </button> </a>
														          </span>
														      </div>
													         
															 		
															</td>
															<td class="price" style="" >${productTotal}</td>
															<td class="delete" style="vertical-align: middle;">
												    			<a title="Delete" href="${pageContext.request.contextPath }/cart?action=remove&id=${item.product.id}" 
												    			onclick="return confirm('Are you sure, you want to delete it?')"> <i class="fa fa-trash-o" style="font-size: 17px;color:red;"></i>
																&nbsp; </a>
															</td>
														</tr>
										</c:forEach>				
														
													</tbody>
												</table>
											</div>
										</span>
				
                    <!--cartContent-->

						                <div class="cartFooter w100">
						                	<div class="box-footer">
						                    	<div class="pull-left"><a href="path?action=products" class="btn btn-primary buttonfooter"> <i
						                                    class="fa fa-arrow-left"></i> &nbsp; Continue shopping </a>
						                         </div>
						                         <div class="pull-right">
						                             <a href="path?action=products" onclick="proceedcheckout(78.00,30);" class="btn btn-primary buttonfooter" id="checkoutprocess" style="background:#000!important;border: none!important;color:#FFF!important"> &nbsp; Proceed Checkout&nbsp;<i
						                                    class="fa fa-arrow-right"></i>
						                             </a>
						                         </div>
						                    </div>
						                </div>

                   <!--/ cartFooter -->

					                </div>
					            </div>
					            
				  <!--/row end-->
            
                    		</div>
                    		<div class="col-lg-3 col-md-3 col-sm-5 rightSidebar" >
					            <div class="contentBox">
					                <div class="w100 costDetails">
					                    <div class="table-block" id="order-detail-content">
					                    	<a class="btn btn-primary btn-lg btn-block cartone "title="checkout"
					                       		style="margin-bottom:20px;cursor:initial"> 
					                          	<img src="https://goodroots.in/modules/Themes/images/invoice.png" width="30px">&nbsp;&nbsp;Cart Total
					                        </a>
					
						                    <div class="w100 cartMiniTable" style="padding:0px;">
						                    	<table id="cart-summary" class="std table table-bordered" style=" font-size: 14px;font-weight:bold;">
		                                			<tbody>
														<tr >
						                                    <td >Total Products<br/><small style="color: #1c7ce2d9 !important;font-weight:  bold;display:none;">[Total Weight (in grams) -<span id="total-weight">0&nbsp;gms</span>]</small></td>
						                                    <td class="price" style=" font-size: 14px;width:38%" ><span id="total-products"> </span> ${ totalProducts } </td>
						                                </tr>
						                                <tr >
						                                    <td> Total Amount</td>
						                                    <td class=" site-color" style=" font-size: 14px;"  ><span id="grosstot" style="
						   									 font-weight: bold;"></span>
						   									 ${ totalPrice } </td>
						                                </tr>
		                               				</tbody>
					                                <tbody>
					                                </tbody>
				                            	</table>
	                        				</div>
                    					</div>
                					</div>
            					</div>
            					
            <!-- End popular -->

        					</div>
        					
        <!--/rightSidebar-->

    					</div>
    					
    <!--/row-->

						<div style="clear:both"></div>
					
	<!-- /.main-container -->
						
					</div>	<!-- End of /.block --> 
				</div>	<!-- End of /.col-md-12 -->
			</div>	<!-- End of /.row -->
		</div>	<!-- End of /.container -->
	</section>	<!-- End of Section -->

<br>
<br>
<br>

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