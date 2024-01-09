<%@page import="bean.orderbean"%>
<%@page import="bean.lichsumuahangbean"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.sanphambean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Beauty Garden</title>

<!-- Favicons -->
<!-- <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon"> -->

	<!-- Google Fonts -->
	<link href="https://fonts.gstatic.com" rel="preconnect">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" 
 	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	<script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>	
	<link href="css/style.css" rel="stylesheet">
</head>
  <body>
	<!-- ======= Header ======= -->
	<header id="header" class="header fixed-top d-flex align-items-center">

		<div class="d-flex align-items-center justify-content-between">
			<a href="trangchucontroller" class="logo d-flex align-items-center"> 
				<img src="img/logo.png" alt="">
				<span class="d-none d-lg-block">BeautyGarden</span>
			</a> 
			<i class="bi bi-list toggle-sidebar-btn"></i>
		</div>
		<!-- End Logo -->
	
	</header>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar" >
		<ul class="sidebar-nav" id="sidebar-nav">
			<li class="nav-item">
				<a class="nav-link collapsed" href=""> 
					<i class="bi bi-circle"></i> 
					<span>Quản lý</span>
				</a>
			</li>

			<li class="nav-item">
				<a class="nav-link collapsed" href="adminordercontroller"> 
					<i class="bi bi-circle"></i> 
					<span>Order</span>
				</a>
			</li>

			<li class="nav-item">
				<a class="nav-link collapsed" href="adminloaicontroller"> 
					<i class="bi bi-circle"></i> 
					<span>Quản lý danh mục</span>
				</a>
			</li>

			<li class="nav-item">
				<a class="nav-link collapsed" href="adminsanphamcontroller"> 
					<i class="bi bi-circle"></i> 
					<span>Quản lý sản phẩm</span>
				</a>
			</li>			
			
		</ul>
	</aside>
	<!-- End Sidebar-->

	<!-- =============== Main ============== -->
	<main id="main" class="main" style="min-height: 625px;">
		<section class="section">
			<div class="row align-items-top">
				<div class="col-lg-12">

					<!-- Card with an image on left -->
					<%
					ArrayList<sanphambean> ds = (ArrayList<sanphambean>)request.getAttribute("dssanpham");
					for(sanphambean sp: ds){
					%>
					<div class="card mb-3">
						<div class="row g-0">
							<div class="col-md-5" style="text-align: center;">
								<img src="<%=sp.getAnh()%>" class="img-fluid rounded-start"	alt="...">
							</div>
							<div class="col-md-7">
								<div class="card-body">
									<h5 class="card-title" style="margin-top: 25px;"><%=sp.getTensanpham() %></h5>
									<h5 class="card-title" style="color: #199427; font-size: 20px;">Giá: <%=sp.getGiaString(sp.getGia())%>₫</h5>
									<p class="card-text"><%=sp.getTomtat() %></p>
								</div>
							</div>
							<div class="col-md-12 mt-2" style="padding: 25px;">
								<p><%=sp.getThongtinsanpham() %></p>
							</div>
						</div>
					</div>
					<!-- End Card with an image on left -->
					<%} %>
				</div>


			</div>
		</section>

	</main>

	<!-- ===================== Footer ====================== -->
	<footer id="footer" class="footer">
		<div class="copyright">&copy; Copyright 
			<strong><span>QuangNguyen</span></strong>. All Rights Reserved
		</div>
	</footer>
	<!-- End Footer -->

	<!-- Nút lên đầu trang -->
	<a href="#" class="back-to-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>
	<script>
	  //CKEDITOR.replace('txttomtat');
	  CKEDITOR.replace('txtttsp');
	</script>
	<!-- ======== Script ========  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
	<script src="js/main.js"></script>

  </body>
</html>