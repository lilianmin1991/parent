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
	
	<!-- Ajax Contact Form JS -->
	<script type="text/javascript" src="js/jquery.ajax-contact-form.js"></script>	
	
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

<li>
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

<li class="current_page_item">
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
<h3> <span>Contact Us</span> </h3>
</div>
<div class="eight columns omega">
<nav class="breadcrumbs">
<ul>
<li>You are here:</li>
<li>
<a href="#">Home</a>
</li>
<li>Contact Us</li>
</ul>
</nav>
</div>
<div class="clearfix"></div>
</div><!-- page-title -->
</div><!-- container -->

<div class="container">

	<!-- begin google map --> 
			<div class="sixteen columns google-map">
				<div id="map_canvas" class="full-shadow" style="width: 100%; padding-top: 40%;">
				</div>
                <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=true"></script>
				<script src="js/jquery.gmap.min.js"></script>
				<script>
					jQuery('#map_canvas').gMap({
						maptype: 'ROADMAP',
						scrollwheel: false,
						zoom: 18,
						markers: [
							{
								address: 'Sidney', // Your Adress Here
								html: '',
								popup: false,
							}
						],
					});
				</script>
			</div>
    <!-- end google map -->
	
            <div class="clearfix"></div>

		
	        <!-- begin main -->
            <div class="twelve columns">
            <!-- begin contact form -->
            <h4 class="headline">Contact Us</h4>
            <p>We would be glad to have feedback from you. Drop us a line, whether it is a comment, a question, a work proposition or just a hello. You can use either the form below or the contact details on the right.</p>

		<!--
		#########################################
			- Ajax Contact Form / Start -
		#########################################
		-->
		<div class="ajax-contact-form">
			<div class="form">
			
				<div class="form-holder">
					<div class="notification canhide"></div>	
										
					<form id="frm_contact" name="frm_contact" action="contact.php" method="post">
						
						<div class="field">
							<label for="name">Name &amp; Surname <span class="required">*</span></label>
							<div class="inputs">
								<input class="aweform" type="text" id="name" name="name" />
							</div>  
						</div>
						
						<div class="field">
							<label for="email">E-mail Address <span class="required">*</span></label>
							<div class="inputs">
								<input class="aweform" type="text" id="email" name="email" />
							</div>  
						</div>
						
						<div class="field">
							<label for="phone">Phone <span class="required">*</span></label>
							<div class="inputs">
								<input class="aweform small" type="text" id="phone" name="phone" />
							</div>  
						</div>
						
						<div class="field">
							<label for="subject">Subject</label>
							<div class="inputs">
								<select class="aweform" id="subject" name="subject">
									<option value="General">General</option>
									<option value="Photograph Selection">Photograph Selection</option>
									<option value="Sales Department">Sales Department</option>
								</select>
							</div>  
						</div>
						
						<div class="field">
							<label for="message">Message <span class="required">*</span></label>
							<div class="inputs">
								<textarea class="aweform" id="message" name="message" rows="30" cols="5"></textarea>
							</div>  
						</div>
						
						<div class="field">
							<label for="verify">Are you human? <span class="required">*</span></label>
							<div class="inputs">
								<div class="captcha">
									<img src="tools/captcha/captcha.php" class="captcha-img" alt="Verification" width="200" height="70" />
									<img src="images/refresh.png" class="change-captcha" alt="Change Text" title="Change Text" width="16" height="16" />
									<br /><input class="aweform captcha autocomplete-off" type="text" id="verify" name="verify" />
								</div>								
							</div>  
						</div>
						
						<div class="form-submit">
							<button type="submit" id="submit" name="submit">Submit</button>   
						</div>
						
					</form>
					
				</div>
				
			</div>
			
		</div>
		<!--
		#########################################
			- Ajax Contact Form / End -
		#########################################
		-->
			
            </div>
            <!-- end main -->
            
            <!-- begin sidebar -->
            <div class="four columns sidebar">
                <h4 class="headline">Contact Info</h4>
                		<ul class="list contact">
						<li class="contact-address"><i class="fa fa-map-marker"></i><span><strong>Address:</strong> 103088, Ut wisi enim ad minim veniam, 27, of. 304</span></li>
						<li class="contact-phone"><i class="fa fa-phone"></i><span><strong>Phone:</strong> +1 (229) 991-22-11</span></li>
						<li class="contact-mail"><i class="fa fa-envelope"></i><strong>E-mail:</strong> <a href="#">mail@mail.com</a></li>
						<li class="contact-address"><i class="fa fa-clock-o"></i><span><strong>Business Hours:</strong><br> Monday-Friday: 9:<sup>00</sup> - 18:<sup>00</sup><br>
						Saturday: 10:<sup>00</sup> - 17:<sup>00</sup><br>
						Sunday: closed</span>
						</li>
					</ul>
            </div>
            <!-- end sidebar -->
				
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
	<p>Copyright &copy; 2018 <a href="#">Great Tilly</a>. More Templates <a href="Great Tilly" target="_blank" title="Great Tilly">Great Tilly</a> - Collect from <a href="Great Tilly" title="Great Tilly" target="_blank">Great Tilly</a>.</p>
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