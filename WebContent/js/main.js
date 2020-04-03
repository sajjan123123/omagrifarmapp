$(document).ready(function() {
	 // Owl carousel code
	$('#slider').nivoSlider();
	
	$("#owl-example").owlCarousel({
	  	autoPlay : true
	});

	// Dropdown Visibility on hover
	$('li.dropdown').on('mouseover', function(){
	  		$(this).addClass('open');
	})

	.on('mouseout', function(){
		$(this).removeClass('open');
	});

	$("html").niceScroll({
		cursorcolor : "#90c322",
		cursorwidth : "10px" ,
		zindex: 9999 ,
		cursorborder: "none"	,
		cursorborderradius : "0" ,
		autohidemode: false,
	});
	
	// fade in #back-top

	$(window).scroll(function () {
		if ($(this).scrollTop() >800) {
			$('#back-top').fadeIn('slow');
		} else {
			$('#back-top').fadeOut('slow');
		}
	});

	// scroll body to 0px on click
	$('#back-top').click(function () {
		$('body,html').animate({
			scrollTop: 0
		}, 800);
		return false;
	});

	$('#myTab a').click(function (e) {
		e.preventDefault()
		$(this).tab('show')
	});
	
	function onclickFunction(aId){
		
		var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange=function() {
		    if (this.readyState == 4 && this.status == 200) {
		      var json_obj = $.parseJSON(this.responseText);//parse JSON
	        	// Add response in Modal body
	            $('.modal-body-cart').html(json_obj.message);
	            // Display Modal
	            $('#myModalAddedCart').modal('show'); 
				// Edit product Count at Notification and blink it
				$('#productCount').html(json_obj.count);
		    }else{
		    	alert("Sorry, Server error");
		    }
		  };
		  xhttp.open("GET", "/OmAgriFarmApp/cart?action=buy&id="+aId, true);
		  xhttp.send();
	}

});