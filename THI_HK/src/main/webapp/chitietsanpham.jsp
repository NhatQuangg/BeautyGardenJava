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
		
		<!-- Tìm kiếm -->
		<div class="search-bar">
			<form class="search-form d-flex align-items-center" method="post" action="trangchucontroller">
 				<input type="text" placeholder="Tìm kiếm" name="txttim">
				<button type="submit" title="Tìm kiếm" name="but1">
					<i class="bi bi-search"></i>
				</button>
			</form>
		</div>
		<!-- End Search Bar -->
		
		<nav class="header-nav ms-auto">
			<ul class="d-flex align-items-center">
				<!-- Icon search -->
				<li class="nav-item d-block d-lg-none">
					<a class="nav-link nav-icon search-bar-toggle" href="#"> 
						<i class="bi bi-search"></i>
					</a>
				</li>
				<!-- End Search Icon-->

				<li class="nav-item dropdown">
					<a class="nav-link nav-icon" href="giohangcontroller"> 
						<i class="bi bi-cart"></i>
						<span class="badge bg-primary badge-number"> 
						<%
						 /* giohangbo gh = null; */
						 // Neu co hang trong gio thi:
						 if (session.getAttribute("gh") != null) {
						 	// luu session ra 1 bien
						 	giohangbo gh = (giohangbo) session.getAttribute("gh");
						 	// duyet ds trong bien gh
						 	int n = gh.ds.size();
						 	out.print(n);
						 } else
						 	out.print(0);
						 %>
					</span>
					</a>
					<!-- End Notification Icon -->
				</li>
				<!-- End Notification Nav -->

				<li class="nav-item dropdown pe-3">
					<!-- Profile Image -->
 					<%
						khachhangbean kh = (khachhangbean)session.getAttribute("dn");
						if(kh!=null) {
					%>
					<a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown"> 
						<img src="img/bsfbfs.jpg" alt="" class="rounded-circle"> 
						<span class="d-none d-md-block dropdown-toggle ps-2"><%=kh.getHotenkh()%></span>
					</a> 
					<!-- End Profile Image Icon -->

					<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li class="dropdown-header">
							<h6><%=kh.getHotenkh() %></h6>
						</li>
						<li><hr class="dropdown-divider"></li>
						
						<!-- Profile -->
						<li>
							<a class="dropdown-item d-flex align-items-center" href=""> 
								<i class="bi bi-person"></i> 
								<span>Hồ sơ của tôi</span>
							</a>
						</li>
						<li><hr class="dropdown-divider"></li>
						
						<!-- Profile -->
						<li>
							<a class="dropdown-item d-flex align-items-center" href="lichsumuahangcontroller"> 
								<i class="bi bi-clock-history"></i> 
								<span>Đơn mua</span>
							</a>
						</li>						
						<li><hr class="dropdown-divider"></li>
						
						<!-- Đăng xuất -->
						<li>
							<a class="dropdown-item d-flex align-items-center" href="dangxuatcontroller"> 
								<i class="bi bi-box-arrow-right"></i> <span>Đăng xuất</span>
							</a>
						</li>
					</ul>
					<%} else { %>
					<a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">  
						<span class="d-none d-md-block dropdown-toggle" style="margin-right: 10px;">Tài khoản</span>
					</a> 		
					<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">	
						<!-- Profile -->
						<li>
							<a class="dropdown-item d-flex align-items-center" href="dangnhapcontroller"> 
								<i class="bi bi-box-arrow-in-right"></i>
								<span>Đăng nhập</span>
							</a>
						</li>
						<li><hr class="dropdown-divider"></li>
						
						<!-- Đăng xuât -->
						<li>
							<a class="dropdown-item d-flex align-items-center" href="dangkicontroller"> 
								<i class="bi bi-card-list"></i> <span>Đăng kí</span>
							</a>
						</li>
					</ul>							
					<%} %>	
					<!-- End Profile Dropdown Items -->
				</li>
				<!-- End Profile Nav -->
			</ul>
		</nav>
		<!-- End Icons Navigation -->
	</header>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar" >
		<ul class="sidebar-nav" id="sidebar-nav">
			<li class="nav-item">
				<a class="nav-link collapsed" href="trangchucontroller"> 
					<i class="bi bi-circle"></i> 
					<span>Trang chủ</span>
				</a>
			</li>
			<% 
				ArrayList<loaibean> dsloai = (ArrayList<loaibean>)request.getAttribute("dsloai");
				for(loaibean loai: dsloai) {
			%>
			<li class="nav-item">
				<a class="nav-link collapsed" href="trangchucontroller?ml=<%=loai.getMaloai()%>"> 
					<i class="bi bi-circle"></i> 
					<span><%=loai.getTenloai()%></span>
				</a>
			</li>
			<%} %>

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
					ArrayList<sanphambean> ds = (ArrayList<sanphambean>)request.getAttribute("dssp");
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
									<span class="d-block" style="font-style: italic;"><%=sp.getSoluong()%> sản phẩm có sẵn</span>
									<p class="card-text"><%=sp.getTomtat() %></p>
									<a href="giocontroller?msp=<%=sp.getMasanpham()%>&tsp=<%=sp.getTensanpham()%>&gia=<%=sp.getGia()%>&anh=<%=sp.getAnh()%>">
										<button class="btn btn-primary ms-1" style="font-size: 16px;">Đặt mua</button>
									</a>
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

	<!-- ======== Script ========  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
	<script src="js/main.js"></script>

  </body>
</html>