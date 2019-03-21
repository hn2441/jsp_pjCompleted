<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<%@ page isErrorPage="true" %>

<html>
<!-- 에러 처리하는 페이지 -->
<head>
<title>Error</title>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="no-sidebar is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header" class="wrapper">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="index.html">에러페이지</a>
				</h1>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="#">Dropdown</a>
						<ul>
							<li><a href="#">Lorem ipsum</a></li>
							<li><a href="#">Magna veroeros</a></li>
							<li><a href="#">Etiam nisl</a></li>
							<li><a href="#">Sed consequat</a>
								<ul>
									<li><a href="#">Lorem dolor</a></li>
									<li><a href="#">Amet consequat</a></li>
									<li><a href="#">Magna phasellus</a></li>
									<li><a href="#">Etiam nisl</a></li>
									<li><a href="#">Sed feugiat</a></li>
								</ul></li>
							<li><a href="#">Nisl tempus</a></li>
						</ul></li>
					<li><a href="left-sidebar.html">Left Sidebar</a></li>
					<li><a href="right-sidebar.html">Right Sidebar</a></li>
					<li class="current"><a href="no-sidebar.html">No Sidebar</a></li>
				</ul>
			</nav>

		</section>

		<!-- Main -->
		<div id="main" class="wrapper style2">
			<!-- <div class="title">No Sidebar</div> -->
			<div class="container">

				<!-- Content -->
				<div id="content">
					<article class="box post">
						<header class="style1">
							<h2>
								<!-- 로그인<br class="mobile-hide" /> -->
								에러 페이지입니다.
								에러 코드 : <%= exception.getClass().getName() %>
								에러 내용 : <%= exception.getMessage() %>
							</h2>
						</header>
						<!-- <a href="#" class="image featured">
										<img src="images/pic01.jpg" alt="" />
									</a> -->

				</article>
			</div>

		</div>
	</div>

	

	<!-- Footer -->
	<section id="footer" class="wrapper">
		
		<div class="container">
			
			<div class="row">
				<div class="col-6 col-12-medium">

					<!-- Contact Form -->
					<section>
						<form method="post" action="#">
							<div class="row gtr-50">
								<div class="col-6 col-12-small">
									<input type="text" name="name" id="contact-name"
										placeholder="Name" />
								</div>
								<div class="col-6 col-12-small">
									<input type="text" name="email" id="contact-email"
										placeholder="Email" />
								</div>
								<div class="col-12">
									<textarea name="message" id="contact-message"
										placeholder="Message" rows="4"></textarea>
								</div>
								<div class="col-12">
									<ul class="actions">
										<li><input type="submit" class="style1" value="Send" /></li>
										<li><input type="reset" class="style2" value="Reset" /></li>
									</ul>
								</div>
							</div>
						</form>
					</section>

				</div>
				<div class="col-6 col-12-medium">

					<!-- Contact -->
					<section class="feature-list small">
						<div class="row">
							<div class="col-6 col-12-small">
								<section>
									<h3 class="icon fa-home">Mailing Address</h3>
									<p>
										Untitled Corp<br /> 1234 Somewhere Rd<br /> Nashville, TN
										00000
									</p>
								</section>
							</div>
							<div class="col-6 col-12-small">
								<section>
									<h3 class="icon fa-comment">Social</h3>
									<p>
										<a href="#">@untitled-corp</a><br /> <a href="#">linkedin.com/untitled</a><br />
										<a href="#">facebook.com/untitled</a>
									</p>
								</section>
							</div>
							<div class="col-6 col-12-small">
								<section>
									<h3 class="icon fa-envelope">Email</h3>
									<p>
										<a href="#">info@untitled.tld</a>
									</p>
								</section>
							</div>
							<div class="col-6 col-12-small">
								<section>
									<h3 class="icon fa-phone">Phone</h3>
									<p>(000) 555-0000</p>
								</section>
							</div>
						</div>
					</section>

				</div>
			</div>
			<div id="copyright">
				<ul>
					<li>&copy; Untitled.</li>
					<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</div>
		</div>
	</section>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>