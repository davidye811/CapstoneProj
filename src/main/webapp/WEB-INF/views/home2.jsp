<!DOCTYPE html>
<html lang="en">
<head>
<title>NEW MOVIE THEATRE</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/homepage.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="resources/css/contactstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="resources/css/faqstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="resources/css/button.css" type="text/css" media="all" />
<link href="resources/css/single.css" rel='stylesheet' type='text/css' />
<link href="resources/css/medile.css" rel='stylesheet' type='text/css' />
<!-- banner-slider -->
<link href="resources/css/jquery.slidey.min.css" rel="stylesheet">
<!-- //banner-slider -->
<!-- pop-up -->
<link href="resources/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="resources/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- Redesign Base styles -->
<link rel="stylesheet" type="text/css" href="https://images.fandango.com/r1.0.256/styles/commerce/redesign/foundation.css"/>
<link rel="stylesheet" type="text/css" href="https://images.fandango.com/r1.0.256/styles/commerce/redesign/base.css"/>
<link rel="stylesheet" type="text/css" href="https://images.fandango.com/r1.0.256/styles/commerce/redesign/layout.css"/>
<link rel="stylesheet" type="text/css" href="https://images.fandango.com/r1.0.256/styles/commerce/redesign/buttons.css"/>

<!-- Redesign Commerce Specific styles -->
<link rel="stylesheet" type="text/css" href="https://images.fandango.com/r1.0.256/styles//commerce/redesign/commerce.css"/>

<!-- banner-bottom-plugin -->
<link href="resources/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="js/owl.carousel.js"></script>

<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		  autoPlay: 3000, //Set AutoPlay to 3 seconds
	 
		  items : 5,
		  itemsDesktop : [640,4],
		  itemsDesktopSmall : [414,3]
	 
		});
	 
	}); 
</script> 
<!-- //banner-bottom-plugin -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="index.html"><img src="logo.png" width="400"></a>
			</div>
			<div class="w3l_sign_in_register">
				<ul>
					<li><a href="#" data-toggle="modal" data-target="#myModal">sign up</a></li>
					<li><a href="#" data-toggle="modal" data-target="#myModal">Sign in</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Sign In & Sign Up
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">Click Me</div>
							  </div>
							  <div class="form">
								<h3>Login to your account</h3>
								<form action="#" method="post">
								  <input type="text" name="Username" placeholder="Username" required="">
								  <input type="password" name="Password" placeholder="Password" required="">
								  <input type="submit" value="Login">
								</form>
							  </div>
							  <div class="form">
								<h3>Create an account</h3>
								<form action="#" method="post">
								  <input type="text" name="Username" placeholder="Username" required="">
								  <input type="password" name="Password" placeholder="Password" required="">
								  <input type="email" name="Email" placeholder="Email Address" required="">
								  <input type="text" name="Phone" placeholder="Phone Number" required="">
								  <input type="submit" value="Register">
								</form>
							  </div>
							  <div class="cta"><a href="#">Forgot your password?</a></div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script>
		$('.toggle').click(function(){
		  // Switches the Icon
		  $(this).children('i').toggleClass('fa-pencil');
		  // Switches the forms  
		  $('.form').animate({
			height: "toggle",
			'padding-top': 'toggle',
			'padding-bottom': 'toggle',
			opacity: "toggle"
		  }, "slow");
		});
	</script>
<!-- //bootstrap-pop-up -->
<!-- nav -->
	<div class="movies_nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.html">Home</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" >Movies</a>
							</li>
							<li><a href="contact.html">About us</a></li>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
<!-- //nav -->

<br>



<!-- banner-bottom -->
<div id="siteContainer">
        <div id="headerContainer" class="purchase detail on-order" name="HeaderContainer">
    
            







</div>
     </div>
        <div id="container" class="commonContainer">
            
            <div class="row">
                <div class="main">
                    <div class="module-standard">
                <div id="params">
                    <input name="RowCountHidden" type="hidden" id="RowCountHidden" value="198177949">
                    <input name="MovieDetailIdHidden" type="hidden" id="MovieDetailIdHidden" value="200536">
                    <input name="TmsIdHidden" type="hidden" id="TmsIdHidden" value="AAIUE">
                    <input name="ShowDateHidden" type="hidden" id="ShowDateHidden" value="10/19/2017 7:30:00 PM">
                    <input name="ShowTimeHidden" type="hidden" id="ShowTimeHidden">
                    <input name="ShowTimeListHidden" type="hidden" id="ShowTimeListHidden">
                </div>
                 
                     <section class="refundsExchanges">
                         





<div id="lb_worryFreeTickets" class="reveal-modal" data-reveal="" data-dismissmodalclass="close">
	
	
	<div class="lb_footer">
		Have more questions? Read our 
		<a target="_blank" href="http://www.fandango.com/help#refunds--exchanges">FAQs</a>
		or reach out to our 
		<a target="_blank" href="http://fandango.custhelp.com/app/ask">customer service team</a>.
	</div>
</div>

                     </section>
                 
                
                

                

            <section>
                                
                    <div id="tqpSection" class="showtime">
                        <h2 class="header-secondary">HOW MANY TICKETS?</h2>

	                    
                       
                        <span id="IDRequiredMessage">
		                    <div class="reservedMessage">You can request up to 9 reserved seats per transaction.</div><table class="section quantityTable">
                                
		                            <tbody class="ticketTypeTable" id="Reserved">    
                                            
			                                
			                                   
				                                   
				                                        
				                                    
			                                   
			                                
					                        
                                        
				                            
						                            <tr>
							                            <th class="ticketType">
    							                            <input type="hidden" name="AreaRepeater$ctl00$TicketRepeater$ctl00$TicketCode" id="AreaRepeater_TicketRepeater_0_TicketCode_0" value="5">
										    <input type="hidden" name="AreaRepeater$ctl00$TicketRepeater$ctl00$TicketCategory" id="AreaRepeater_TicketRepeater_0_TicketCategory_0" value="Adult">
								                            <input type="hidden" name="pricecode" value="5">
								                            <input type="hidden" name="pricedesc" value="General">
								                            <input type="hidden" name="price" value="10.7500">
                                                            
								                            General
                                                            <input type="hidden" name="quantityControlName" id="quantityControlName" value="AreaRepeater_TicketRepeater_0_quantityddl_0">
								                            <input type="hidden" name="itemTotalControlName" id="itemTotalControlName" value="AreaRepeater_TicketRepeater_0_ItemTotal_0">
							                            </th>
							                            <td class="numberofTickets">
                                                            <select name="AreaRepeater$ctl00$TicketRepeater$ctl00$quantityddl" id="AreaRepeater_TicketRepeater_0_quantityddl_0" tabindex="1" class="qtyDropDown" onchange="javascript: ticketTotal(this);">
	<option value="0">0</option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>

</select>
									                        
							                            </td>
							                            <td class="timesX">x</td>
							                            <td class="pricePerTicket">$10.75</td>
							                            <td class="equals">=</td>
							                            <td class="rowTotal"><input name="AreaRepeater$ctl00$TicketRepeater$ctl00$ItemTotal" type="text" id="AreaRepeater_TicketRepeater_0_ItemTotal_0" style="border:0px" class="sub" size="8" readonly="readonly" tabindex="-1" value="$0.00"></td>
						                            </tr>
					                            
						                            <tr>
							                            <th class="ticketType">
    							                            <input type="hidden" name="AreaRepeater$ctl00$TicketRepeater$ctl01$TicketCode" id="AreaRepeater_TicketRepeater_0_TicketCode_1" value="2">
										    <input type="hidden" name="AreaRepeater$ctl00$TicketRepeater$ctl01$TicketCategory" id="AreaRepeater_TicketRepeater_0_TicketCategory_1" value="Child">
								                            <input type="hidden" name="pricecode" value="2">
								                            <input type="hidden" name="pricedesc" value="Child/Senior">
								                            <input type="hidden" name="price" value="8.0000">
                                                            
                                                                <span class="specialNote">*</span>
                                                            
								                            Child/Senior
                                                            <input type="hidden" name="quantityControlName" id="quantityControlName" value="AreaRepeater_TicketRepeater_0_quantityddl_1">
								                            <input type="hidden" name="itemTotalControlName" id="itemTotalControlName" value="AreaRepeater_TicketRepeater_0_ItemTotal_1">
							                            </th>
							                            <td class="numberofTickets">
                                                            <select name="AreaRepeater$ctl00$TicketRepeater$ctl01$quantityddl" id="AreaRepeater_TicketRepeater_0_quantityddl_1" tabindex="2" class="qtyDropDown" onchange="javascript: ticketTotal(this);">
	<option value="0">0</option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
	<option value="8">8</option>
	<option value="9">9</option>

</select>
									                        
							                            </td>
							                            <td class="timesX">x</td>
							                            <td class="pricePerTicket">$8.00</td>
							                            <td class="equals">=</td>
							                            <td class="rowTotal"><input name="AreaRepeater$ctl00$TicketRepeater$ctl01$ItemTotal" type="text" id="AreaRepeater_TicketRepeater_0_ItemTotal_1" style="border:0px" class="sub" size="8" readonly="readonly" tabindex="-1" value="$0.00"></td>
						                            </tr>
					                            
		                                </tbody>
                                    
		                    </table>
                            
                                <div class="specialNote">*Valid ID may be required for theater admittance.</div>
                            
                        </span>
		                
		                
		                <input type="hidden" name="inputTotal" id="inputTotal" value="$0.00">
		                <input type="hidden" name="pricecode" value="^">
		                <input type="hidden" name="pricedesc" value="N/A">
		                <input type="hidden" name="price" value="100">
		                <input type="hidden" name="quantity" value="0">
		                <input type="hidden" name="inputSubtotal" value="0">
		                <input type="hidden" name="loewsreserved" value="0">
		                <input type="hidden" name="areacode" value="">
		                <input type="hidden" name="quantityControlName" value="">
		                <input type="hidden" name="itemTotalControlName" id="itemTotalControlName" value="">		
		                <input type="hidden" name="surcharge" value="0">
		                <input type="hidden" name="resvFee" value="0">
		                <input type="hidden" name="fee" value="1.5000">
		                <input type="hidden" name="isMac" value="False">
		                <input type="hidden" name="arraysize" value="1">
		                <input type="hidden" name="isNetscape6" value="False">
		                <input type="hidden" name="isIE" value="False">
		                <input type="hidden" name="isNetscape7" value="False">
                    </div>
                                
            </section>
                        


            
                <div class="buttonContainer">
					<button onclick="__doPostBack('NewCustomerCheckoutButton','')" id="NewCustomerCheckoutButton" type="button" class="button primary medium">Continue to Seat Selection</button>                 
                </div>
            
                
            
            </div>   
                </div><!--end main-->
            <div class="side">                   
                

<div class="module-standard module-timer">  
    <div id="timer"><span class="timerText">Time to complete your order: </span><span class="countdown" id="countdownTimer">6:20</span></div>
</div>
<div class="module-standard">  
    <div id="movieTicketSummary"> 
    
    <div class="message note remove"></div>

    <div class="moviePoster">
        <img id="moviePosterImage" alt="" src="https://images.fandango.com/r1.0.256/ImageRenderer/180/272/redesign/static/img/default_poster_128x190.png/200536/images/masterrepository/fandango/200536/gstrm_vert_revmain_dom_2764.jpg">
    </div>
    <div class="movieInfo"> 
        <ul class="movie-specs">
            <li class="title"><h3 id="movieTitle">Geostorm</h3></li>
            <li class="info"><span id="ratingInfo" class="emptyCheck">PG-13</span><span id="ratingSeparator" class="separator emptyCheck">, </span><span class="emptyCheck" id="runtimeInfo">1 hr 49 min</span></li>
        </ul>
 
        <ul class="movie-other-specs">
            <li><h2 id="movieDate">Thursday, Oct 19 </h2></li>
            <li>
                <h2 id="movieTime">7:30 PM</h2>
                <span class="reserved"></span>                
	            <div class="emptyCheck remove" id="lateNightShowtimeMesg"></div>
                
                <p class="newShowtime">
                    <a href="ticketboxoffice.aspx?mid=200536&amp;tid=AAIUE">Select new showtime</a>
                </p>
                
                <div class="amenities">
                    
                        <a class="amenityPopup" id="0" title="" data-amenitypopupdata="Reserved Seating takes the guaranteed seat that Fandango promises on all orders a step further and ensures you have one of the best seats in the auditorium.">Reserved seating</a>  
                        
                         | <a class="amenityPopup" id="1" title="" data-amenitypopupdata="Closed Captioning devices display a movie's dialogue and sound effects as text; captions are not shown on the main screen.  Devices available by request.">Closed caption</a>  
                        
                         | <a class="amenityPopup" id="2" title="" data-amenitypopupdata="<b>Closed caption</b></br>
Closed Captioning devices display a movie's dialogue and sound effects as text; captions are not shown on the main screen. Devices available by request.
</br></br>
<b>DV</b></br>
Descriptive Video devices provide audio descriptions of the movie to accommodate the needs of visually impaired guests. Devices available by request.">Accessibility devices available</a>  
                        
                </div>
                       
            </li>
            
        </ul>

        <ul class="movie-other-specs">
            <li><h2 id="theaterName">CineLux Scotts Valley Café and Lounge</h2></li>
            <li id="theaterAddress"><a id="maplink" href="http://www.fandango.com/maps/drivingdirections.aspx?category=ticketboxoffice_secure&amp;label=CineLux Scotts Valley Café and Lounge&amp;icontitles=yes&amp;streetaddress=&amp;zip=&amp;iconid=213&amp;level=8&amp;state=&amp;height=295&amp;country=CA&amp;city=&amp;tid=AAIUE&amp;mouse_mode=center&amp;width=400" target="_blank" class="emptyCheck">226 Mount Hermon Road<br>Scotts Valley, CA 95066</a> </li>



            
            
                <li class="auditorium"><h2 id="auditoriumInfo" class="emptyCheck">Auditorium 6</h2></li>
                <li class="seats remove"><div id="selectedSeatIDsLabel">Seats:</div> <div id="selectedSeatIDs"></div></li>
            

            
            <li class="theaterNotes">
                <h2 class="emptyCheck remove" id="notesHeader"></h2>
                <div class="emptyCheck remove" id="notesBody"></div>
            </li>
            <li class="agePolicy emptyCheck"><a href="http://tickets.fandango.com/AgePolicy.aspx?chainID=516&amp;tid=AAIUE" onclick="customPopup('http://tickets.fandango.com/AgePolicy.aspx?chainID=516&amp;tid=AAIUE', 'Fandango - Age Policy',400,295);return false;">Cinelux Theatres Age Policy</a></li>
        </ul>
    </div>
</div>
</div>                  
                <div class="module-standard module-cutout">  
                    <p><a class="help helplink" href="javascript:customPopup('http://www.fandango.com/help?category=generalquestions&amp;question=1','Help',1200,875);return false;" onclick="customPopup('http://www.fandango.com/help?category=generalquestions&amp;question=1','Help',1200,875);return false;">Need Help With Checkout?</a></p>                
                </div>
            </div> 
        </div>
    </div>
<!-- end container-->

        
<!-- Facebook Script-->




<!-- NBCU Script Include -->
<div class="nbcuPixels" id="nbcuPixels">

</div>


        



<!-- SiteCatalyst code version: H.23.6.
Copyright 1996-2011 Adobe, Inc. All Rights Reserved
More info available at http://www.omniture.com -->



<!-- End SiteCatalyst code version: H.23.6. -->
        















        
        
        <input name="LoyaltyInfoLoadedHidden" type="hidden" id="LoyaltyInfoLoadedHidden">
    </div>
<!-- //banner-bottom -->

<!-- //banner-bottom -->
	
<!-- //banner-bottom -->
<div class="general_social_icons">
	<nav class="social">
		<ul>
			<li class="w3_twitter"><a href="#">Twitter <i class="fa fa-twitter"></i></a></li>
			<li class="w3_facebook"><a href="#">Facebook <i class="fa fa-facebook"></i></a></li>			  
		</ul>
  </nav>
</div>
<!-- footer -->
	<div class="footer">
			<div class="w3ls_footer_grid">
						<h2>Subscribe to us</h2>
						<div class="w3ls_footer_grid_left1_pos">
							<form action="#" method="post">
								<input type="email" name="email" placeholder="Your email..." required="">
								<input type="submit" value="Send">
							</form>
						</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-5 w3ls_footer_grid1_left">
				<p>Copyright &copy; 2017 Fall NPU Capstone Project DDWY.</p>
			</div>
			<div class="clearfix"> </div>
	</div>
<!-- //footer -->

<!-- Bootstrap Core JavaScript -->

<script>

$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- //Bootstrap Core JavaScript -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>