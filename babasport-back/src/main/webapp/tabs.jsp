<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>EVOLVE</title>
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="css/style.css">

    <!-- JS
  ================================================== -->
    <script src="js/jquery-1.8.2.min.js" type="text/javascript"></script> <!-- jQuery -->
	<script src="js/jquery.easing.1.3.js" type="text/javascript"></script> <!-- jQuery easing -->
	<script src="js/modernizr.custom.js" type="text/javascript"></script> <!-- Modernizr -->
    <script src="js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script> <!-- tabs, toggles, accordion -->
    <script src="js/custom.js" type="text/javascript"></script> <!-- jQuery initialization -->
  
    <!-- Responsive Menu -->
    <script src="js/jquery.meanmenu.js"></script> 
    <script>
    jQuery(document).ready(function () {
    jQuery('header nav').meanmenu();
    });
    </script>
	
	<!-- Prety photo -->
	<script src="js/jquery.prettyPhoto.js"></script>
	<script>
		$(document).ready(function(){
			$("a[data-gal^='prettyPhoto']").prettyPhoto();
		});
	</script>

	<!-- Tooltip -->
    <script src="js/tooltip.js"></script>

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">

</head>
<body>



	<!-- Primary Page Layout
	================================================== -->

<header class="header">
<div class="container">
<div class="logos columns">
<h1 class="logo"><a href="index.jsp"><img src="images/logo.png" alt="EVOLVE" /></a></h1>
</div><!-- logo -->

<div class="twelve columns">
<nav class="main_menu">

<ul>
<li>
<a href="index.jsp">
Home
<div class="sub">
Get Started
</div>
</a>
<ul>
<li><a href="index.jsp">Home Version 1</a></li>
<li><a href="index-2.jsp">Home Version 2</a></li>
<li><a href="index-3.jsp">Home Version 3</a></li>
<li><a href="index-4.jsp">Home Version 4</a></li>
<li><a href="index-5.jsp">Home Version 5</a></li>
<li><a href="index-6.jsp">Home Version 6</a></li><li><a href="http://www.weidea.net">More</a></li>
</ul>
</li>

<li>
<a href="about-us.jsp">
Pages
<div class="sub">
Page Formats
</div>
</a>
<ul>
<li><a href="about-us.jsp">About Us</a></li>
<li><a href="about-us-2.jsp">About Us 2</a></li>
<li><a href="about-me.jsp">About Me</a></li>
<li><a href="services.jsp">Services</a></li>
<li><a href="services-2.jsp">Services 2</a></li>
<li><a href="meet-the-team.jsp">Meet The Team</a></li>
<li><a href="meet-the-team-2.jsp">Meet The Team 2</a></li>
<li><a href="faq.jsp">FAQ</a></li>
<li><a href="full-width-page.jsp">Full Width Page</a></li>
<li><a href="page-right-sidebar.jsp">Right Sidebar</a></li>
<li><a href="page-left-sidebar.jsp">Left Sidebar</a></li>
<li><a href="404-error-page.jsp">404 Error Page</a></li>
</ul>
</li>

<li class="current_page_item">
<a href="#">
Shortcodes
<div class="sub">
Useful Shortcodes
</div>
</a>
<ul>
<li><a href="tabs.jsp">Tabs</a></li>
<li><a href="buttons.jsp">Buttons</a></li>
<li><a href="dropcaps.jsp">Dropcaps</a></li>
<li><a href="accordion-toggles.jsp">Accordion & Toggles</a></li>
<li><a href="grid-columns.jsp">Grid Columns</a></li>
<li><a href="images.jsp">Images</a></li>
<li><a href="video.jsp">Video</a></li>
</ul>
</li>

<li>
<a href="portfolio-2-columns.jsp">
Portfolio
<div class="sub">
Awesome Stuff
</div>
</a>
<ul>
<li><a href="portfolio-1-column.jsp">1 Column</a></li>
<li><a href="portfolio-2-columns.jsp">2 Columns</a></li>
<li><a href="portfolio-3-columns.jsp">3 Columns</a></li>
<li><a href="portfolio-4-columns.jsp">4 Columns</a></li>
<li><a href="single-project-half.jsp">Single Project Half</a></li>
<li><a href="single-project-wide.jsp">Single Project Wide</a></li>
</ul>
</li>

<li>
<a href="blog-large.jsp">
The Blog
<div class="sub">
News & Events
</div>
</a>
<ul>
<li><a href="blog-large.jsp">Large Image</a></li>
<li><a href="blog-medium.jsp">Medium Image</a></li>
<li><a href="blog-post.jsp">Single Post</a></li>
</ul>
</li>

<li>
<a href="contact.jsp">
Contact US
<div class="sub">
Write Message
</div>
</a>
</li>
</ul>

</nav><!-- navigation -->
</div>
<div class="clearfix"></div>
</div>
</header><!-- header -->

<div class="container">
<div class="sixteen columns page-title">
<div class="eight columns alpha">
<h3> <span>Tabs</span> </h3>
</div>
<div class="eight columns omega">
<nav class="breadcrumbs">
<ul>
<li>You are here:</li>
<li>
<a href="#">Home</a>
</li>
<li>
Tabs
</li>
</ul>
</nav>
</div>
<div class="clearfix"></div>
</div><!-- page-title -->
</div><!-- container -->

<div class="container">

	<div class="twelve columns">

                <div class="tabs">
                    <ul class="nav clearfix">
                        <li><a href="#ta1"><i class="fa fa-laptop"></i>Tab Title 1</a></li>
                        <li><a href="#ta2"><i class="fa fa-gift"></i>Tab Title 2</a></li>
                        <li><a href="#ta3"><i class="fa fa-css3"></i>Tab Title 3</a></li>
                    </ul>
                    <div id="ta1" class="tab">
                        <img src="images/services/services4.jpg" style="float:left; width:180px; margin:0 10px 0 0; padding:4px; border: 1px solid #DDDDDD; border-radius: 4px; background-color: #FFFFFF;">
                        <p><span style="color: #04BFEA;">Sed ut perspiciatis</span> unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explica. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system.</p>
						<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rational encounter consequences that are extremely painful.</p>
                    </div>
                    
                    <div id="ta2" class="tab">
						<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explica. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings.</p>
						<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rational encounter consequences that are extremely painful.</p>
				    <div class="twelve columns">
					<div class="six columns alpha">
					<ul class="list iconok circle">
						<li>Duis aute irure dolor in reprehenderit voluptate.</li>
						<li>Lorem Ipsum is simply dummy text of printing.</li>
						<li> Excepteur sint occaecat cupidatat proident.</li>
						<li>Sed ut perspiciatis unde omnis iste natus.</li>
					</ul>
					</div>
				    <div class="six columns omega">
					<ul class="list iconok circle">
						<li>Duis aute irure dolor in reprehenderit voluptate.</li>
						<li>Lorem Ipsum is simply dummy text of printing.</li>
						<li> Excepteur sint occaecat cupidatat proident.</li>
						<li>Sed ut perspiciatis unde omnis iste natus.</li>
					</ul>
					</div>
					</div>
					</div>
					
                    <div id="ta3" class="tab">
						<p><strong>Sed ut perspiciatis</strong> unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explica. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings.</p>
						<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rational encounter consequences that are extremely painful.</p>
                    </div>
                </div>
				
	<div class="clearfix"></div>
	<div class="separator"></div>
	
                <div class="tabs">
                    <ul class="nav clearfix">
                        <li><a href="#ta1">Tab Title Without Icon 1</a></li>
                        <li><a href="#ta2">Tab Title 2</a></li>
                        <li><a href="#ta3">Tab Title 3</a></li>
                    </ul>
                    <div id="ta1" class="tab">
                        <p><span style="color: #04BFEA;">Sed ut perspiciatis</span> unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explica. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system.</p>
						<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rational encounter consequences that are extremely painful.</p>
                    </div>
                    
                    <div id="ta2" class="tab">
                        <img src="images/services/services4.jpg" style="float:left; width:180px; margin:0 10px 0 0; padding:4px; border: 1px solid #DDDDDD; border-radius: 4px; background-color: #FFFFFF;">
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur.</p>
					</div>
					
                    <div id="ta3" class="tab">
						<p><strong>Sed ut perspiciatis</strong> unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explica. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rational encounter consequences that are extremely painful.</p>
                    </div>
                </div>
				
	</div>
	
            	<!-- Sidebar -->
				<div class="four columns sidebar">
					<!-- Latest Projects -->
					<h3 style="margin-bottom: 20px;">Latest Projects</h3>
					<div class="latest-project">
						<div class="latest-project-item">
							<a href="#"><img src="images/portfolio/rp-1.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="images/portfolio/rp-2.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="images/portfolio/rp-3.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="images/portfolio/rp-4.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="images/portfolio/rp-5.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="images/portfolio/rp-6.jpg" alt=""></a>
						</div>
					</div>
					<!-- End Latest Project -->
					<!-- Twitter Widget -->
					<h3>Twitter Widget</h3>
					<div class="twitter">
						<ul>
							<li>
							<span>Et harum quidem rerum facilis est et expedita distinctio <a href="#" class="link">http://twitter.com</a></span>
							<span class="twit-date">Jan 7, 2013</span>
							</li>
							<li>
							<span>Nam libero tempore, cum soluta nobis est eligendi :) <a href="#" class="link">http://twitter.com</a></span>
							<span class="twit-date">Jan 7, 2013</span>
							</li>
						</ul>
					</div>
					<!-- End Twitter Widget -->
				</div>
				<!-- End Sidebar -->
				
				<div class="clearfix"></div>

				
</div><!-- container -->

	<footer class="footer">
    <div class="container">
	<div class="footer-top clearfix">
	<div class="four columns">
	<h3>About Us</h3>
	<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</p>
    <p>Vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui.</p>
	</div>
	<div class="four columns">
						<h3>Latest Tweets</h3>
						<div class="twitter">
							<ul>
								<!-- Twitter Message 1 -->
								<li>
									<span>Sed ut perspiciatis unde omnis iste natus error sit voluptatem <a href="#" class="link">http://twitter.com</a></span>
									<span class="twit-date">Jan 7, 2013</span>
								</li>
								<!-- Twitter Message 2 -->
								<li>
									<span>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aliquid :) <a href="#" class="link">http://twitter.com</a></span>
									<span class="twit-date">Jan 7, 2013</span>
								</li>
							</ul>
						</div>
</div>
<div class="four columns">
<h3>Flickr Stream</h3>
						<div class="latest-project">
							<div class="latest-project-item">
								<a href="#"><img src="images/elements/rp-1.jpg" alt=""></a>
							</div>
							<div class="latest-project-item">
								<a href="#"><img src="images/elements/rp-2.jpg" alt=""></a>
							</div>
							<div class="latest-project-item">
								<a href="#"><img src="images/elements/rp-3.jpg" alt=""></a>
							</div>
							<div class="latest-project-item">
								<a href="#"><img src="images/elements/rp-4.jpg" alt=""></a>
							</div>
							<div class="latest-project-item">
								<a href="#"><img src="images/elements/rp-5.jpg" alt=""></a>
							</div>
							<div class="latest-project-item">
								<a href="#"><img src="images/elements/rp-6.jpg" alt=""></a>
							</div>
						</div>
</div>
<div class="four columns">
						<h3>Contact Information</h3>
						<ul class="list contact" style="margin-bottom: 15px;">
							<li class="contact-address"><i class="fa fa-map-marker"></i><span>103088. Ut wisi enim ad minim veniam, quis nostrud.</span></li>
							<li class="contact-mail"><i class="fa fa-envelope"></i><a class="link" href="#">mail@mail.com</a></li>
							<li class="contact-phone"><i class="fa fa-phone"></i><span>+1 (229) 991-22-11</span></li>
							<li class="contact-address"><i class="fa fa-clock-o"></i><span>Monday-Friday: 9:<sup>00</sup> - 18:<sup>00</sup><br>
							Saturday: 10:<sup>00</sup> - 17:<sup>00</sup><br>
							Sunday: closed</span>
							</li>
						</ul>
		
<div class="tooltips">			
			<ul class="social-icons-footer">
				<li><a href="#" data-rel="tooltip" title="Twitter"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#" data-rel="tooltip" title="Facebook"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#" data-rel="tooltip" title="Google+"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#" data-rel="tooltip" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
				<li><a href="#" data-rel="tooltip" title="LinkedIn"><i class="fa fa-linkedin"></i></a></li>
				<li><a href="#" data-rel="tooltip" title="Dribbble"><i class="fa fa-dribbble"></i></a></li>
				<li><a href="#" data-rel="tooltip" title="RSS"><i class="fa fa-rss"></i></a></li>
			</ul>
</div>

</div>
	</div><!-- footer-top -->
	</div>

	<div class="container">
	<div class="footer-bottom clearfix">
	<div class="eight columns">
	<p>Copyright &copy; 2018 <a href="#">Great Tilly</a>. More Templates <a href="#" target="_blank" title="Great Tilly">Great Tilly</a> - Collect from <a href="#" title="ç½é¡µæ¨¡æ¿" target="_blank">ç½é¡µæ¨¡æ¿</a>.</p>
	</div>
	<div class="eight columns">
	<nav class="footer-nav">
<ul>
<li>
<a class="first" href="index.jsp">Home</a>
/
</li>
<li>
<a href="#">Shortcodes</a>
/
</li>
<li>
<a href="portfolio-2-columns.jsp">Portfolio</a>
/
</li>
<li>
<a href="blog-large.jsp">Blog</a>
/
</li>
<li>
<a href="contact.jsp">Contact</a>
</li>
</ul>
</nav>
</div>
</div><!-- footer-bottom -->
</div>
	
</footer><!-- footer -->

<!-- End Document
================================================== -->
</body>
</html>