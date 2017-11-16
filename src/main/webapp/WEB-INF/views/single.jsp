<!DOCTYPE html>
<html lang="en">
<head>
<title>Single</title>
<!-- for-mobile-apps -->
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="/courseapp/resources/css/signin.css" rel="stylesheet" type="text/css" media="all" />

<link href="../resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../resources/css/homepage.css" rel="stylesheet" type="text/css" media="all" />
<link href="../resources/css/medile.css" rel='stylesheet' type='text/css' />
<link href="../resources/css/single.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="../resources/css/contactstyle.css" type="text/css" media="all" />
<link rel="stylesheet" href="../resources/css/faqstyle.css" type="text/css" media="all" />
<!-- news-css -->
<link rel="stylesheet" href="../resources/css/news.css" type="text/css" media="all" />
<!-- //news-css -->
<!-- list-css -->
<link rel="stylesheet" href="list-../resources/css/list.css" type="text/css" media="all" />
<!-- //list-css -->
<!-- font-awesome icons -->
<link rel="stylesheet" href="../resources/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script type="text/javascript" src="../resources/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!---<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>--->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="../resources/js/move-top.js"></script>
<script type="text/javascript" src="../resources/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="../resources/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="../resources/js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		  autoPlay: 3000, //Set AutoPlay to 3 seconds
	 
		  items : 5,
		  itemsDesktop : [640,5],
		  itemsDesktopSmall : [414,4]
	 
		});
	 
	}); 
</script> 
<script src="../resources/js/simplePlayer.js"></script>
<script>
	$("document").ready(function() {
		$("#video").simplePlayer();
	});
</script>

</head>
	
<body>
<link href="../resources/css/signin.css" rel="stylesheet" type="text/css" media="all" />
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="#"><img src="../resources/images/logo.png" width="400" />
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
							<li class="active"><a href="../home2">Home</a></li>
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
<div class="general_social_icons">
	<nav class="social">
		<ul>
			<li class="w3_twitter"><a href="#">Twitter <i class="fa fa-twitter"></i></a></li>
			<li class="w3_facebook"><a href="#">Facebook <i class="fa fa-facebook"></i></a></li>
			
		</ul>
  </nav>
</div>
<!-- single -->
<div class="single-page-agile-main">
<div class="container">
		<!-- /w3l-medile-movies-grids -->
			<div class="agileits-single-top">
				<ol class="breadcrumb">
				  <li><a href="../index.jsp">Home</a></li>
				  <li>Single</li>
				</ol>
			</div>
			<div class="single-page-agile-info">
                   <!-- /movie-browse-agile -->
                           <div class="show-top-grids-w3lagile">
				<div class="col-sm-8 single-left">
					<div class="song">
						<div class="song-info">
							<c:set var = "Category" value = "${fn:toUpperCase(movie.getCategory())}" />
							 <fmt:parseNumber var = "hour" integerOnly = "true" 
         						type = "number" value = "${movie.getLength()/60}" />
         						<fmt:parseNumber var = "min" integerOnly = "true" 
         						type = "number" value = "${movie.getLength()%60}" />
							<h3>${movie.getMovieName()}</h3><br>
							<p>${hour}HR ${min}MIN</p>   
							<p>${Category}</p>
							
					</div>
						<div class="video-grid-single-page-agileits">
							<div data-video="Mu41hu1a_8c" id="video"> <img src="../resources/images/movie1_8.jpg"  alt="" class="img-responsive" style="width:1300px; height:500px;"/> </div>
						</div>
					</div>
					<div class="song-grid-right">
						<div class="share">
							<p>OVERVIEW: ${movie.breifIntro}<br><br>
							<p>Director: <font size="2" face="arial" color="black">${movie.castMap.director }</font>													
														<br><br>
							<p>Writers: <font size="2" face="arial" color="black">${movie.castMap.writer }</font>
														<br><br>
							<p>Cast & Crew: <font size="2" face="arial" color="black">${movie.castMap.cast }</font>     
							<br><br>
							<input type="submit" value="Get Ticket" style="background: #4d4d4d4; color:#ffff;">

						
						</div>
					</div>
					<div class="clearfix"> </div>

					<div class="all-comments">
						<div class="all-comments-info">
							<a href="#">Comments</a>
							<br><br>
									<div class="block-stars" style="float:left;">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
							<div class="agile-info-wthree-box">
								<form>
									<br>
									<textarea style="float:clear;" placeholder="Message" required=""></textarea>
									<input type="submit" value="SEND">
									<div class="clearfix"> </div>
								</form>
							</div>
						</div>
						<div class="media-grids">
							<div class="media">
								<div class="media-left">
									<a href="#">
										<img src="../resources/images/user.jpg" title="One movies" alt=" " />
									</a>
								</div>
								<div class="media-body">
									<p>GOOD!</p>
									<span>View all posts by: CS595_Capstone_Project</a></span>
								</div>
							</div>
		
								

						</div>
					</div>
				</div>
		        <div class="col-md-4 single-right">
		        
					<h3>Stage Photo</h3>
					<br>
					
					<div class="single-grid-right">
						<div class="single-right-grids">
							<div class="col-md-4 single-right-grid-left">
								<c:forEach items="${photos}" var="photo"> 
							    <a href="single.jsp"><img src="../resources/images/${photo} " alt="" style="width:325px; height:150px;" /></a>
							</c:forEach>
							</div>																						
							<div class="clearfix"> </div>
							
						</div>
					</div>
				</div>
				

				
				<div class="clearfix"> </div>
			</div>
				<!-- //movie-browse-agile -->
				<!--body wrapper start-->
			<div class="w3_agile_banner_bottom_grid">
				<div id="owl-demo" class="owl-carousel owl-theme">
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-agile1">
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img src="../resources/images/Spider-Man_Homecoming_poster.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">Super Man: Home Coming</a></h6>							
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
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img src="../resources/images/Spider-Man_Homecoming_poster.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">Super Man: Home Coming</a></h6>							
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
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img src="../resources/images/Spider-Man_Homecoming_poster.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">Super Man: Home Coming</a></h6>							
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
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img src="../resources/images/Spider-Man_Homecoming_poster.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">Super Man: Home Coming</a></h6>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2017</p>
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
							<a href="single.jsp" class="hvr-shutter-out-horizontal"><img src="../resources/images/Spider-Man_Homecoming_poster.jpg" title="album-name" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="single.jsp">Super Man: Home Coming</a></h6>							
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
		<!--body wrapper end-->
						
							 
				</div>
				<!-- //w3l-latest-movies-grids -->
			</div>
				
		</div>
	<!-- //w3l-medile-movies-grids -->
	
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
<script src="../resources/js/bootstrap.min.js"></script>
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