<!DOCTYPE html>

<html lang="en">
<head>
<title>NEW MOVIE THEATRE</title>
<!-- for-mobile-apps -->
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="/courseapp/resources/css/homepage.css" rel="stylesheet" type="text/css" media="all" />

<link href="/courseapp/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="/courseapp/resources/css/signin.css" rel="stylesheet" type="text/css" media="all" />
<link href="/courseapp/resources/css/homepage.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="/courseapp/resources/css/contactstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="/courseapp/resources/css/faqstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="/courseapp/resources/css/button.css" type="text/css" media="all" />
<link href="/courseapp/resources/css/single.css" rel='stylesheet' type='text/css' />
<link href="/courseapp/resources/css/medile.css" rel='stylesheet' type='text/css' />
<!-- banner-slider -->
<link href="/courseapp/resources/css/jquery.slidey.min.css" rel="stylesheet">
<!-- //banner-slider -->
<!-- pop-up -->
<link href="/courseapp/resources/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="/courseapp/resources/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="/courseapp/resources/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- banner-bottom-plugin -->
<link href="/courseapp/resources/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="/courseapp/resources/js/owl.carousel.js"></script>
<script type="text/javascript" src="/courseapp/resources/js/move-top.js"></script>
<script type="text/javascript" src="/courseapp/resources/js/easing.js"></script>
<link href="/courseapp/resources/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="/courseapp/resources/js/owl.carousel.js"></script>

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

<!-- header 
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="../home2"><img src="resources/images/logo.png" width="400"></a>
				<li><a href="#" data-toggle="modal" data-target="#myModal">log out</a></li>
				
			</div>
			<div class="w3l_sign_in_register">
		 <c:if test="${sessionScope.Account!=null}">
				<ul>
					<li>welcome:<c:out value="${sessionScope.Account.accountName}"/></li>
					<li><a href="/courseapp/logout" data-toggle="modal" data-target="#myModal">log out</a></li>
				
					</ul>
			</c:if>
			<c:if test="${sessionScope.Account==null}">
				<ul>
					<li><a href="#" data-toggle="modal" data-target="#myModal">sign up</a></li>
					<li><a href="#" data-toggle="modal" data-target="#myModal">Sign in</a></li>
				</ul>
				</c:if>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>-->
<!-- //header -->
<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="#"><img src="resources/images/logo.png" width="400" />
				</a>
			</div>
			<div class="w3l_sign_in_register">
				 <c:if test="${sessionScope.Account!=null}">
				<ul>
					<li>welcome:<c:out value="${sessionScope.Account.accountName}"/></li>
					<li><a href="/courseapp/logout" data-toggle="modal" data-target="#myModal">log out</a></li>
				
					</ul>
			</c:if>
			<c:if test="${sessionScope.Account==null}">
				<ul>
					<li><a href="#" id="signbtn">sign in & sign up</a></li>
				</ul>
				</c:if>
				
			</div>
			<div class="clearfix"> </div>
		</div>
</div>
<!-- bootstrap-pop-up -->
<div id="login-bg">
	<div class="login-wrap" id="login">
		<div class="login-html">
			
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked /><label for="tab-1" class="tab">Sign In</label>
			<input id="tab-2" type="radio" name="tab" class="sign-up" /><label for="tab-2" class="tab">Sign Up</label>
			<div class="login-form">
				<div class="sign-in-htm">
					<form action="/courseapp/login" method="post">
					<div class="group">
						<label for="user" class="label">User Name</label>
						<input id="user" type="text" class="input" name= "accountName"/>
					</div>
					<div class="group">
						<label for="pass" class="label">Password</label>
						<input id="pass" type="password" class="input" name="password" data-type="password" />
					</div>
					<div class="group">
						<input id="check" type="checkbox" class="check" checked />
						<label for="check"><span class="icon"></span> Remember Password</label>
					</div>
					<div class="group">
						<input type="submit" class="button" value="Sign In" />
					</div>
					<div class="hr"></div>
					<div class="foot-lnk">
						<a href=" ">Forget Password?</a>
					</div>
					</form>
				</div>
				<div class="sign-up-htm">
				<form action="/courseapp/registNewAccount" method="post">
					<div class="group">
						<label for="user" class="label">User Name</label>
						<input id="user" type="text" class="input" name ="accountName" />
					</div>
					<div class="group">
						<label for="pass" class="label">Password</label>
						<input id="pass" type="password" class="input" data-type="password" name = "password"  />
					</div>
					<div class="group">
						<label for="pass" class="label">Confirm Password</label>
						<input id="pass" type="password" class="input" data-type="password"  />
					</div>
					<div class="group">
						<label for="pass" class="label">Email</label>
						<input id="pass" type="text" class="input" name ="email" />
					</div>
					<div class="group">
						<input type="submit" class="button" value="Sign Up"/>
					</div>
					</form>
					<div class="hr"></div>
					<div class="foot-lnk">
						<label for="tab-1">Already A Member?</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<script>	
		var modal = document.getElementById('login-bg');
		 modal.style.display = "none";
		var btn = document.getElementById("signbtn");
		btn.onclick = function() {
    		modal.style.display = "block";
		}
		window.onclick = function(event) {
    		if (event.target == modal) 
    		{
       			 modal.style.display = "none";
       		}
		}
	</script>
<!-- //bootstrap-pop-up -->
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
							<li class="active"><a href="home2">Home</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" >Movies</a>
							</li>
							<li><a href="list.html">About us</a></li>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
<!-- //nav -->
<div class="slideshow-container">
  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
    <img src="resources/images/spider-man-homecoming-banner.jpg" style="width:100%">
    <div class="txt">Spider-Man: Homecoming is a 2017 American superhero film based on the Marvel Comics character Spider-Man, co-produced by Columbia Pictures and Marvel Studios, and distributed by Sony Pictures Releasing.</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
    <img src="resources/images/spider-man-homecoming-banner.jpg" style="width:100%">
    <div class="txt">Spider-Man: Homecoming is a 2017 American superhero film based on the Marvel Comics character Spider-Man, co-produced by Columbia Pictures and Marvel Studios, and distributed by Sony Pictures Releasing.</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
    <img src="resources/images/spider-man-homecoming-banner.jpg" style="width:100%">
    <div class="txt">Spider-Man: Homecoming is a 2017 American superhero film based on the Marvel Comics character Spider-Man, co-produced by Columbia Pictures and Marvel Studios, and distributed by Sony Pictures Releasing.</div>
  </div>

  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>
<script>
var slideIndex = 0;
showSlides(slideIndex);

function plusSlides(n) {
  changeSlides(slideIndex += n);
}

function currentSlide(n) {
  changeSlides(slideIndex = n);
}

function changeSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1} 
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none"; 
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block"; 
  dots[slideIndex-1].className += " active";
}
function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none"; 
    }
    for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1} 
    slides[slideIndex-1].style.display = "block"; 
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="w3_agile_banner_bottom_grid">
				<h4>Top Rated</h4> 	<!-- !!!!!todo -->
			
			
				<div id="owl-demo" class="owl-carousel owl-theme">
					<c:forEach items="${requestScope.movieList}" var="movie">
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="singlepage/${movie.getMovieId()}" class="hvr-shutter-out-horizontal"><img src="/courseapp/resources/images/${movie.getImgPath()}" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="singlepage/${movie.getMovieId()}">${movie.getMovieName()}</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2017</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
				
			</div>			
		</div>
	</div>
<!-- //banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="w3_agile_banner_bottom_grid">
				<h4>Top Rated</h4>
				<div id="owl-demo" class="owl-carousel owl-theme">
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="resources/images/Spider-Man_Homecoming_poster.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">Spider Man:Homecoming</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2017</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="resources/images/Spider-Man_Homecoming_poster.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">name</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2017</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="resources/images/Spider-Man_Homecoming_poster.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">name</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2017</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="resources/images/Spider-Man_Homecoming_poster.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">Light B/t Oceans</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.html" class="hvr-shutter-out-horizontal"><img src="resources/images/Spider-Man_Homecoming_poster.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.html">name</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2017</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>			
		</div>
	</div>
<!-- //banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="w3_agile_banner_bottom_grid">
				<h4>You Might Like</h4>
			</div>			
		</div>
	</div>
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