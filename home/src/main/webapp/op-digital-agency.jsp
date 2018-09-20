﻿<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--[if IE 8]><html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]>
<!--><html class="no-js" lang="en"><!--<![endif]-->
<head>

	<!-- Basic Page Needs
	================================================== -->
	<meta charset="utf-8">
	<title>Funky Template by IG Design</title>
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Mobile Specific Metas
	================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="theme-color" content="#212121"/>
    <meta name="msapplication-navbutton-color" content="#212121"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="#212121"/>

	<!-- Web Fonts 
	================================================== -->
	<link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>
	<link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"/>
	<link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet"/>	
	
	<!-- CSS
	================================================== -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/mind-icons-line.css"/>
	<link rel="stylesheet" href="css/funky-style.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/owl.transitions.css"/>
	<link rel="stylesheet" href="css/colors/color-green.css"/>
			
	<!-- Favicons
	================================================== -->
	<link rel="icon" type="image/png" href="favicon.png">
	<link rel="apple-touch-icon" href="apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="apple-touch-icon-114x114.png">
	
	
</head>
<body class="royal_preloader">	
	
	<div id="royal_preloader"></div>

	
	<!-- Nav and Logo
	================================================== -->
	
	<div id="menu-wrap" class="cbp-af-header black-menu-background-1st-trans menu-fixed-padding menu-shadow">
		<div class="container">
			<div class="row">
				<div class="col-md-12">	
					<nav class="navbar navbar-toggleable-md navbar-inverse bg-inverse bg-faded">
						<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavMenuMain" aria-controls="navbarNavMenuMain" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<a class="navbar-brand" href="index.jsp">
							<img src="img/logo-light.png" alt="" class="">
						</a>
						<div class="collapse navbar-collapse justify-content-end" id="navbarNavMenuMain">
							<ul class="navbar-nav">
								<li class="nav-item">
									<a href="#home" class="nav-link">Home</a>
								</li>
								<li class="nav-item">
									<a href="#about" class="nav-link">We Are</a>
								</li>
								<li class="nav-item">
									<a href="#testimonials" class="nav-link">Virtues</a>
								</li>
								<li class="nav-item">
									<a href="#work" class="nav-link">Work</a>
								</li>
								<li class="nav-item">
									<a href="#blog" class="nav-link">Journal</a>
								</li>
								<li class="nav-item">
									<a href="#contact" class="nav-link">Say Hello</a>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link colored-prim" href="#" id="navbarDropdownMenuLink-lng" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										USA
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink-lng">
										<a class="dropdown-item" href="#">Serbian</a>
										<a class="dropdown-item" href="#">French</a>
										<a class="dropdown-item" href="#">Spanish</a>
									</div>
								</li>
								<li class="nav-item icons-item-menu">
									<a class="nav-link ml-4" href="#"><i class="fa fa-heart"></i></a>
								</li>
								<li class="nav-item dropdown icons-item-menu">
									<a class="nav-link" href="#" id="navbarDropdownMenuLink-shop" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<i class="fa fa-shopping-bag"></i>
									</a>
									<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink-shop">
										<div class="drop-shop-block">
											<span class="close"></span>
											<img src="img/shop1.jpg" alt="" class="rounded">
											<h6>Shop item one</h6>
											<div class="clearfix"></div>
											<p>2 x $47.00</p>
											<div class="clearfix"></div>
											<div class="dropdown-divider"></div>
										</div>
										<div class="drop-shop-block">
											<span class="close"></span>	
											<img src="img/shop2.jpg" alt="" class="rounded">
											<h6>Shop item two</h6>
											<div class="clearfix"></div>
											<p>1 x $72.00</p>
											<div class="clearfix"></div>
											<div class="dropdown-divider"></div>
										</div>
										<div class="clearfix"></div>
										<p><span>Subtotal:</span> <strong>$166.00</strong></p>
										<div class="clearfix"></div>
										<div class="dropdown-divider"></div>
										<button class="btn btn-default btn-sm float-left">view cart</button>
										<button class="btn btn-primary btn-sm float-right">checkout</button>
										<div class="clearfix"></div>
									</div>
								</li>
								<li class="nav-item icons-item-menu modal-search">
									<a class="nav-link" href="#" data-toggle="modal" data-target="#Modal-search"><i class="fa fa-search"></i></a>
								</li>
							</ul>
						</div>
					</nav>		
				</div>
			</div>	
		</div>		
	</div>
	
	
	<!-- Search -->
	<div class="modal fade default search-modal" id="Modal-search" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header justify-content-end">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true"></span>
					</button>
				</div>
				<div class="modal-body">
					<div class="hero-center-wrap move-top">
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-md-6">
									<input type="search" value="" placeholder="Search" class="form-control" />
									<button class="btn btn-primary btn-icon btn-round" type="submit" value="search">
										<i class="fa fa-search"></i>
									</button>
								</div>
							</div>	
						</div>	
					</div>	
				</div>
			</div>
		</div>
	</div>





	

	<!-- Primary Page Layout
	================================================== -->

		<!-- Hero Block
		================================================== -->
	<div class="section" id="home">
	
		<div class="section full-height-2">
			<div class="parallax" style="background-image: url('img/parallax-hero-1.jpg')"></div>
			<div class="grey-fade-over"></div>
			<div class="hero-center-wrap z-bigger">
				<div class="container color-white hero-text parallax-fade-top">
					<div class="row">
						<div class="col-md-6">	
							<h2 class="color-white">Unique and truly<br>responsive!</h2>
							<div class="subtext mt-4">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people.</div>
							<a href="#scroll-top" class="btn btn-primary btn-simple btn-round btn-long mt-5 scroll" >discover more</a>
						</div>
					</div>	
				</div>
			</div>
		</div>

		<!-- Services Block
		================================================== -->
		
		<div class="section pt-5 pt-md-0 pb-5 pb-md-0 background-white z-bigger-2">
			<div class="container">
				<div class="row">
					<div class="col-md-4 transform-y-120">	
						<div class="services-box-1 background-white drop-shadow">
							<i class="funky-ui-icon icon-Conference"></i>
							<h5 class="mt-3">Grow Your Audience</h5>	
							<p class="mt-3 mb-4">Above all good design must primarily serve people.</p>
							<a href="#" class="btn-link btn-primary">read more</a>	
						</div>
					</div>
					<div class="col-md-4 transform-y-120 mt-4 mt-md-0">	
						<div class="services-box-1 background-white drop-shadow">
							<i class="funky-ui-icon icon-Aerobics"></i>
							<h5 class="mt-3">A Jump Start</h5>	
							<p class="mt-3 mb-4">Above all good design must primarily serve people.</p>	
							<a href="#" class="btn-link btn-primary">read more</a>	
						</div>
					</div>
					<div class="col-md-4 transform-y-120 mt-4 mt-md-0">	
						<div class="services-box-1 background-white drop-shadow">
							<i class="funky-ui-icon icon-Dove"></i>	
							<h5 class="mt-3">Brands To Life</h5>	
							<p class="mt-3 mb-4">Above all good design must primarily serve people.</p>
							<a href="#" class="btn-link btn-primary">read more</a>		
						</div>
					</div>
				</div>	
			</div>		
		</div>

	</div>
	
	<div class="section" id="about">	
		
		<!-- Counter Block
		================================================== -->
		
		<div class="section padding-top-bottom-small background-dark over-hide" id="scroll-top">
			<div class="container">
				<div class="row">
					<div class="col-md-3">	
						<div class="counter-wrap dark">
							<p><span class="counter-numb small-2">8.819</span></p>
							<h6>lines of code</h6>
						</div>		
					</div>
					<div class="col-md-3 mt-4 mt-md-0">	
						<div class="counter-wrap dark">
							<p><span class="counter-numb small-2">4.768</span></p>
							<h6>projects finished</h6>
						</div>		
					</div>
					<div class="col-md-3 mt-4 mt-md-0">	
						<div class="counter-wrap dark">
							<p><span class="counter-numb small-2">7.307</span></p>
							<h6>coups of coffee</h6>
						</div>		
					</div>
					<div class="col-md-3 mt-4 mt-md-0">	
						<div class="counter-wrap dark">
							<p><span class="counter-numb small-2">5.921</span></p>
							<h6>working hours</h6>
						</div>		
					</div>
				</div>	
			</div>		
		</div>

		<!-- Services 2 Block
		================================================== -->
		
		<div class="section padding-top-bottom background-white over-hide">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-8">	
						<div class="main-title text-center">
							<div class="main-subtitle-top mb-4">welcome to funky</div>
							<h3>Your brand is how your customers see your business.</h3>
							<div class="main-subtitle-bottom mt-3">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people. </div>	
						</div>
					</div>
					<div class="clear"></div>
					<div class="col-md-4">	
						<div class="services-box-2 text-center" data-scroll-reveal="enter bottom move 40px over 0.8s after 0.2s">
							<i class="funky-ui-icon icon-Compass-2"></i>
							<h6 class="mt-4">Design Process</h6>	
							<p class="mt-3">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people.</p>	
						</div>
					</div>
					<div class="col-md-4 mt-4 mt-md-0">	
						<div class="services-box-2 text-center" data-scroll-reveal="enter bottom move 40px over 0.8s after 0.2s">
							<i class="funky-ui-icon icon-Check-2"></i>
							<h6 class="mt-4">Digital Assets</h6>	
							<p class="mt-3">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people.</p>	
						</div>
					</div>
					<div class="col-md-4 mt-4 mt-md-0">	
						<div class="services-box-2 text-center" data-scroll-reveal="enter bottom move 40px over 0.8s after 0.2s">
							<i class="funky-ui-icon icon-Board"></i>
							<h6 class="mt-4">Market Behaviors</h6>	
							<p class="mt-3">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people.</p>	
						</div>
					</div>
				</div>	
			</div>		
		</div>

		<!-- Separator Line
		================================================== -->
		
		<div class="section padding-top-bottom-1">
			<div class="container">	
				<div class="row">
					<div class="col-md-12">	
						<div class="separator-wrap">	
							<span class="separator"><span class="separator-line dashed"></span></span>
						</div>
					</div>
				</div>
			</div>		
		</div>

		<!-- Call To Action Block
		================================================== -->
		
		<div class="section padding-top-bottom-small background-white over-hide">
			<div class="container">
				<div class="row">
					<div class="col-md-12">	
						<div class="call-box-1 text-center" data-scroll-reveal="enter bottom move 40px over 0.8s after 0.2s">
							<h5 class="mb-4">Enjoy your web-site, filled with the things you care about.</h5>
							<p>our presentation, 0:48 min</p>
							<button data-toggle="modal" data-target="#Modal-video" type="button" class="video-button mx-auto mt-4"><i class="fa fa-play"></i></button>
						</div>		
					</div>
				</div>	
			</div>		
		</div>

		<!-- Modal With Video
		================================================== -->	
		
		<div class="modal fade default search-modal" id="Modal-video" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header justify-content-end">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true"></span>
						</button>
					</div>
					<div class="modal-body">
						<div class="hero-center-wrap move-top">
							<div class="container">
								<div class="row justify-content-center">
									<div class="col-md-8">
										<div class="video-section">
											<figure class="vimeo rounded-2 over-hide"> 
												<a href="https://player.vimeo.com/video/219627581">
													<img src="img/video-2.jpg" alt="image" class="rounded-2 over-hide" />
												</a>
											</figure>
										</div>
									</div>
								</div>	
							</div>	
						</div>	
					</div>
				</div>
			</div>
		</div>

	</div>
	
	<div class="section" id="testimonials">

		<!-- Testimonials Block With Parallax Background Image
		================================================== -->	
		
		<div class="section padding-top-bottom over-hide">
			<div class="parallax-1" style="background-image: url('img/parallax-1.jpg')"></div>
			<div class="grey-fade-over"></div>
			<div class="container z-bigger">
				<div class="row">
					<div class="customNavigation">
						<a class="prev-testimonials"><i class="fa fa-angle-left"></i></a>
						<a class="next-testimonials"><i class="fa fa-angle-right"></i></a>
					</div>
					<div id="owl-testimonials" class="owl-carousel owl-theme">											 
						<div class="item">								 
							<div class="testimonials-box-1 background-on-dark dark">
								<img  src="img/t1.jpg" alt="" />
								<p class="mt-4 mb-5">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people.</p>
								<h6>Anna Furius</h6>
								<p><span>Alliance Motosport</span></p>
							</div>	
						</div>											
						<div class="item">						 
							<div class="testimonials-box-1 background-on-dark dark">
								<img  src="img/t2.jpg" alt="" />
								<p class="mt-4 mb-5">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people.</p>
								<h6>Alex Andrews</h6>
								<p><span>Creativity Media</span></p>
							</div>	
						</div>											
						<div class="item"> 						 
							<div class="testimonials-box-1 background-on-dark dark">
								<img  src="img/t3.jpg" alt="" />
								<p class="mt-4 mb-5">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people.</p>
								<h6>Frank Furius</h6>
								<p><span>Alliance Motosport</span></p>
							</div>	
						</div>												
						<div class="item"> 						 
							<div class="testimonials-box-1 background-on-dark dark">
								<img  src="img/t4.jpg" alt="" />
								<p class="mt-4 mb-5">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people.</p>
								<h6>Marco Kulis</h6>
								<p><span>Guide Magazin</span></p>
							</div>	
						</div>						
					</div>
				</div>	
			</div>	
		</div>

		<!-- Content With Images Block
		================================================== -->
		
		<div class="section padding-top-bottom background-white">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-12">
						<img src="img/content-1.jpg" alt="" class="img-fluid rounded img-raised">	
					</div>
					<div class="col-lg-1 col-md-12"></div>
					<div class="col-lg-6 col-md-12 mt-5 mt-lg-0 mt-xl-5">	
						<div class="main-title no-subtitle">
							<div class="main-subtitle-top mb-4">start your business</div>
							<h3 class="mb-0">We build brands!</h3>	
						</div>
						<p class="lead mb-5">Some people think design means how it looks. But of course, if you dig deeper, it's really how it works. Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people. Some people think design means how it looks.</p>
						<a href="contact-map.jsp" class="btn btn-primary btn-simple btn-round btn-long">get in touch</a>
					</div>
				</div>	
			</div>	
		</div>

	</div>
	
	<div class="section" id="work">

		<!-- Separator Line
		================================================== -->
		
		<div class="section padding-top-bottom-1">
			<div class="container">	
				<div class="row">
					<div class="col-md-12">	
						<div class="separator-wrap">	
							<span class="separator"><span class="separator-line dashed"></span></span>
						</div>
					</div>
				</div>
			</div>		
		</div>

		<!-- Portfolio Block
		================================================== -->
		
		<div class="section padding-top background-white">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-8">	
						<div class="main-title text-center">
							<div class="main-subtitle-top mb-4">latest work</div>
							<h3>We take pride in delivering only the best.</h3>
							<div class="main-subtitle-bottom mt-3">we do magic</div>	
						</div>
					</div>
					<div class="clear"></div>
					<div class="col-md-12">
						<div class="grid-filter">
							<ul class="filter">
								<li><a href="#" class="current" data-filter="*" title="">all</a></li>
								<li><a href="#" data-filter=".branding" title="">branding</a></li>
								<li><a href="#" data-filter=".photo" title="">photo</a></li>
								<li><a href="#" data-filter=".motion" title="">motion</a></li>
							</ul>
						</div>
					</div>
				</div>	
			</div>		
			<div class="grid-wraper with-margin clearfix">			
				<div class="grid-box float-inline third with-margin branding">
					<a href="project-image.jsp">
						<div class="portfolio-box-1 rounded">	
							<img  src="img/portfolio/grid/1.jpg" alt="" />	
							<div class="portfolio-mask-1"></div>
							<h5>Project Name</h5>
							<p>we do magic</p>
						</div>	
					</a>
				</div>	
				<div class="grid-box float-inline third with-margin photo motion">
					<a href="project-image.jsp">
						<div class="portfolio-box-1 rounded">		
							<img  src="img/portfolio/grid/2.jpg" alt="" />
							<div class="portfolio-mask-1"></div>
							<h5>Project Name</h5>
							<p>we do magic</p>
						</div>	
					</a>	
				</div>	
				<div class="grid-box float-inline third with-margin branding">
					<a href="project-image.jsp">
						<div class="portfolio-box-1 rounded">	
							<img  src="img/portfolio/grid/3.jpg" alt="" />	
							<div class="portfolio-mask-1"></div>
							<h5>Project Name</h5>
							<p>we do magic</p>
						</div>	
					</a>	
				</div>	
				<div class="grid-box float-inline third with-margin photo motion">
					<a href="project-image.jsp">
						<div class="portfolio-box-1 rounded">	
							<img  src="img/portfolio/grid/4.jpg" alt="" />	
							<div class="portfolio-mask-1"></div>
							<h5>Project Name</h5>
							<p>we do magic</p>
						</div>	
					</a>	
				</div>	
				<div class="grid-box float-inline third with-margin motion">
					<a href="project-image.jsp">
						<div class="portfolio-box-1 rounded">	
							<img  src="img/portfolio/grid/5.jpg" alt="" />
							<div class="portfolio-mask-1"></div>
							<h5>Project Name</h5>
							<p>we do magic</p>
						</div>	
					</a>		
				</div>	
				<div class="grid-box float-inline third with-margin branding photo">
					<a href="project-image.jsp">
						<div class="portfolio-box-1 rounded">	
							<img  src="img/portfolio/grid/6.jpg" alt="" />	
							<div class="portfolio-mask-1"></div>
							<h5>Project Name</h5>
							<p>we do magic</p>
						</div>
					</a>	
				</div>
			</div>
		</div>

		<!-- Logos Block
		================================================== -->
			
		<div class="section padding-top-bottom-small background-dark over-hide">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<a href="#">
							<img  src="img/logos/white1.png" class="img-120 mx-auto" alt="" />
						</a>
					</div>
					<div class="col-md-2 mt-4 mt-md-0">
						<a href="#">
							<img  src="img/logos/white2.png" class="img-120 mx-auto" alt="" />
						</a>
					</div>
					<div class="col-md-2 mt-4 mt-md-0">
						<a href="#">
							<img  src="img/logos/white3.png" class="img-120 mx-auto" alt="" />
						</a>
					</div>
					<div class="col-md-2 mt-4 mt-md-0">
						<a href="#">
							<img  src="img/logos/white4.png" class="img-120 mx-auto" alt="" />
						</a>
					</div>
					<div class="col-md-2 mt-4 mt-md-0">
						<a href="#">
							<img  src="img/logos/white5.png" class="img-120 mx-auto" alt="" />
						</a>
					</div>
					<div class="col-md-2 mt-4 mt-md-0">
						<a href="#">
							<img  src="img/logos/white6.png" class="img-120 mx-auto" alt="" />
						</a>
					</div>
				</div>
			</div>		
		</div>

	</div>
	
	<div class="section" id="blog">

		<!-- Blog Block
		================================================== -->
				
		<div class="section padding-top-bottom background-grey over-hide">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-8">	
						<div class="main-title text-center">
							<div class="main-subtitle-top mb-4">latest news</div>
							<h3>Add your creation to relevant collections.</h3>
							<div class="main-subtitle-bottom mt-3">you inspired me</div>	
						</div>
					</div>
					<div class="clear"></div>	
					<div class="blog-slider-wrap mb-4" data-scroll-reveal="enter bottom move 40px over 0.8s after 0.2s">
						<div class="customNavigation">
							<a class="prev-blog"><i class="fa fa-angle-left"></i></a>
							<a class="next-blog"><i class="fa fa-angle-right"></i></a>
						</div>
						<div id="owl-blog" class="owl-carousel owl-theme">											 
							<div class="item">								 
								<div class="blog-box-1 background-white drop-shadow">
									<a href="post.jsp"><h5>Don’t get lost.</h5></a>
									<p class="mt-3">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people.</p>
									<div class="separator-wrap pt-3">	
										<span class="separator"><span class="separator-line"></span></span>
									</div>
									<div class="author-wrap mt-5">	
										<img  src="img/t1.jpg" alt="" />
										<p> by <a href="#">Anna Furius</a></p>
									</div>
								</div>	
							</div>											
							<div class="item">						 
								<div class="blog-box-1 background-white drop-shadow">
									<a href="post.jsp"><h5>Moments from a life.</h5></a>
									<p class="mt-3">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people.</p>
									<div class="separator-wrap pt-3">	
										<span class="separator"><span class="separator-line"></span></span>
									</div>
									<div class="author-wrap mt-5">
										<img  src="img/t2.jpg" alt="" />
										<p> by <a href="#">Alex Andrews</a></p>
									</div>
								</div>	
							</div>											
							<div class="item"> 						 
								<div class="blog-box-1 background-white drop-shadow">
									<a href="post.jsp"><h5>Content together.</h5></a>
									<p class="mt-3">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people.</p>
									<div class="separator-wrap pt-3">	
										<span class="separator"><span class="separator-line"></span></span>
									</div>
									<div class="author-wrap mt-5">
										<img  src="img/t3.jpg" alt="" />
										<p> by <a href="#">Frank Furius</a></p>
									</div>
								</div>	
							</div>												
							<div class="item"> 						 
								<div class="blog-box-1 background-white drop-shadow">
									<a href="post.jsp"><h5>Modern webdesign.</h5></a>
									<p class="mt-3">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people.</p>
									<div class="separator-wrap pt-3">	
										<span class="separator"><span class="separator-line"></span></span>
									</div>
									<div class="author-wrap mt-5">
										<img  src="img/t4.jpg" alt="" />
										<p> by <a href="#">Marco Kulis</a></p>
									</div>
								</div>	
							</div>												
							<div class="item"> 						 
								<div class="blog-box-1 background-white drop-shadow">
									<a href="post.jsp"><h5>How you'll see it.</h5></a>
									<p class="mt-3">Design must reflect the practical and aesthetic in business but above all... good design must primarily serve people.</p>
									<div class="separator-wrap pt-3">	
										<span class="separator"><span class="separator-line"></span></span>
									</div>
									<div class="author-wrap mt-5">
										<img  src="img/t2.jpg" alt="" />
										<p> by <a href="#">Alex Andrews</a></p>
									</div>
								</div>	
							</div>					
						</div>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-4 mt-5 mg-auto" data-scroll-reveal="enter bottom move 40px over 0.8s after 0.2s">
						<a href="blog-grid.jsp" class="btn btn-primary btn-simple btn-round btn-long">visit our blog</a>
					</div>
				</div>		
			</div>		
		</div>

	</div>
	
	<div class="section" id="contact">

		<!-- Call To Action Block
		================================================== -->
			
		<div class="section padding-top-bottom background-white over-hide">
			<div class="container">
				<div class="row">
					<div class="col-md-12">	
						<div class="call-box-2 text-center" data-scroll-reveal="enter bottom move 40px over 0.8s after 0.2s">
							<h2 class="mb-3">Are You Ready?</h2>
							<a href="contact-planner.jsp" class="btn-link btn-primary">let's work</a>						
						</div>		
					</div>
				</div>	
			</div>		
		</div>

		<!-- Separator Line
		================================================== -->
		
		<div class="section padding-top-bottom-1">
			<div class="container">	
				<div class="row">
					<div class="col-md-12">	
						<div class="separator-wrap">	
							<span class="separator"><span class="separator-line dashed"></span></span>
						</div>
					</div>
				</div>
			</div>		
		</div>

	</div>

	<!-- Footer Light Block
	================================================== -->
	
	<div class="section padding-top over-hide footer-1">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<h6>Home concepts</h6>
					<ul class="list-style">
						<li><a href="digital-agency.jsp">Digital Agency</a></li>
						<li><a href="design-studio.jsp">Design Studio</a></li>
						<li><a href="app-landing.jsp">App Landing</a></li>
						<li><a href="personal-portfolio.jsp">Personal Portfolio</a></li>
						<li><a href="corporate.jsp">Home Corporate</a></li>
					</ul>
				</div>
				<div class="col-md-3 mt-4 mt-md-0">
					<h6>Picked Pages</h6>
					<ul class="list-style">
						<li><a href="portfolio-grid-3col.jsp">Portfolio Grid</a></li>
						<li><a href="portfolio-masonry-3col.jsp">Portfolio Masonry</a></li>
						<li><a href="blog-grid.jsp">Blog Grid</a></li>
						<li><a href="careers-listing.jsp">Careers Listing</a></li>
						<li><a href="contact-map.jsp">Contact Map</a></li>
					</ul>
				</div>
				<div class="col-md-3 mt-4 mt-md-0">
					<h6>Interesting</h6>
					<ul class="list-style">
						<li><a href="about-company.jsp">About</a></li>
						<li><a href="services.jsp">Services</a></li>
						<li><a href="contact-modern.jsp">Contact</a></li>
						<li><a href="shop-grid-sidebar.jsp">Shop</a></li>
						<li><a href="create-account.jsp">Create Account</a></li>
					</ul>
				</div>
				<div class="col-md-3 mt-4 mt-md-0">
					<h6>Subscribe</h6>
					<div class="subscribe-wrap">
						<input type="text" value="" placeholder="Email address" class="form-control" />
						<button class="btn btn-primary btn-icon subscribe-footer" type="submit" value="">
							<i class="fa fa-angle-right"></i>
						</button>
						<p class="mt-1"><small>* we promise that we won´t spam you!</small></p>
					</div>	
				</div>
			</div>
		</div>	
		<div class="container scd-foot padding-top-small padding-bottom-smaller">
			<div class="row">
				<div class="col-md-6">
					<p>© 2018 Funky. Powerd with <i class="fa fa-heart"></i> by <a href="https://themeforest.net/user/ig_design/portfolio?ref=IG_design" target="_blank">IG Design</a>!</p>
				</div>
				<div class="col-md-6">
					<ul class="footer-social">
						<li class="twitter">
							<a href="#">Tw</a>
						</li>
						<li class="facebook">
							<a href="#">Fb</a>
						</li>
						<li class="google">
							<a href="#">G+</a>
						</li>
						<li class="vimeo">
							<a href="#">Vm</a>
						</li>
					</ul>
				</div>
			</div>
		</div>	
	</div>
	

	<div class="scroll-to-top"><i class="fa fa-angle-up"></i></div>
	
	<!-- JAVASCRIPT
    ================================================== -->
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/royal_preloader.min.js"></script> 
	<script type="text/javascript" src="js/tether.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/plugins.js"></script> 
	<script type="text/javascript" src="js/custom/custom-op-digital-agency.js"></script>  
<!-- End Document
================================================== -->
</body>
</html>