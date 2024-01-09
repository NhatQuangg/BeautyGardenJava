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
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">Đơn mua</h5>
							<!-- Đã xác nhận -->
							<table class="table table-bordered">
								<thead>
									<tr style="text-align: center; vertical-align: middle;">
										<th scope="col" style="width: 50px;">MKH</th>
										<th scope="col" style="width: 145px;">Tên khách hàng</th>
										<th scope="col"  style="width: 430px;">Tên sản phẩm</th>
										<th scope="col" style="width: 100px;">Số lượng</th>
										<th scope="col">Ngày mua</th>
										<th scope="col">Giá</th>
										<th scope="col" style="width: 105px;">Thành tiền</th>
										<th scope="col" style="width: 90px;"></th>
									</tr>
								</thead>
								<tbody>
								<%
									ArrayList<orderbean> ds = (ArrayList<orderbean>)request.getAttribute("dshoadon");
									for(orderbean o: ds) {
								%>
									<tr style="vertical-align: middle;">
										<td style="text-align: center;"><%=o.getMakhachhang()%></td>
										<td style="text-align: center;"><%=o.getHotenkh()%></td>
										<td><%=o.getTensanpham()%></td>
										<td style="text-align: center;"><%=o.getSoluongmua() %></td>
										<td style="text-align: center;"><%=o.getNgaymua() %></td>
										<td style="text-align: center;"><%=o.getGiaString(o.getGia())%>₫</td>
										<td style="text-align: center;"><%=o.getGiaString(o.getThanhtien())%>₫</td>
										<td style="text-align: center;">
											<a href="adminordercontroller?mact=<%=o.getMachitiethoadon()%>">Xác nhận</a>
										</td>
									</tr>
									<%} %>
								</tbody>							
							</table>
							<!-- End Table with stripped rows -->
						</div>
					</div>
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