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
<%-- 			</li>
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
			<%} %> --%>
			<li class="nav-heading">Pages</li>

			<li class="nav-item">
				<a class="nav-link collapsed" href="profilecontroller"> 
					<i class="bi bi-person"></i> 
					<span>Hồ sơ</span>
				</a>
			</li>	
			
			<li class="nav-item">
				<a class="nav-link collapsed" href="lichsumuahangcontroller"> 
					<i class="bi bi-clock-history"></i> 
					<span>Đơn mua</span>
				</a>
			</li>
			<!-- End Profile Page Nav -->

			<li class="nav-item">
				<a class="nav-link collapsed" href="giohangcontroller"> 
					<i class="bi bi-card-list"></i> 
					<span>Giỏ hàng</span>
				</a>
			</li>
	
		</ul>
	</aside>
	<!-- End Sidebar-->

	<!-- =============== Main ============== -->
	<main id="main" class="main" style="min-height: 625px;">

		<div class="pagetitle" style="margin-top: 30px;"></div>
		<!-- End Page Title -->

		<section class="section profile">
			<div class="row">
				<div class="col-xl-4">
					<div class="card">
						<div
							class="card-body profile-card pt-4 d-flex flex-column align-items-center">
							<img src="img/bsfbfs.jpg" alt="Profile" class="rounded-circle">
							<h2><%=kh.getHotenkh()%></h2>
						</div>
					</div>
				</div>

				<div class="col-xl-8">
					<div class="card">
						<div class="card-body pt-3">
							<!-- Bordered Tabs -->
							<ul class="nav nav-tabs nav-tabs-bordered">

								<li class="nav-item">
									<button name="profileOverview" class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-overview">Hồ sơ</button>
								</li>

								<li class="nav-item">
									<button name="profileEdit" class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Sửa hồ sơ</button>
								</li>

								<li class="nav-item">
									<button name="profileChangePassword" class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">Đổi mật	khẩu</button>
								</li>

							</ul>
							
							<div class="tab-content pt-4">

								<div name="profileOverview" class="tab-pane fade show profile-overview"	id="profile-overview">

									<%	
										//khachhangbean kh = (khachhangbean)session.getAttribute("dn");
										if (kh != null) {	
									%>
									<div class="row">
										<div class="col-lg-3 col-md-4 label ">Họ tên</div>
										<div class="col-lg-9 col-md-8"><%=kh.getHotenkh()%></div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Tên đăng nhập</div>
										<div class="col-lg-9 col-md-8"><%=kh.getTendangnhapkh()%></div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Địa chỉ</div>
										<div class="col-lg-9 col-md-8"><%=kh.getDiachikh()%></div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Số điện thoại</div>
										<div class="col-lg-9 col-md-8"><%=kh.getSodienthoaikh()%></div>
									</div>

									<div class="row">
										<div class="col-lg-3 col-md-4 label">Email</div>
										<div class="col-lg-9 col-md-8"><%=kh.getEmailkh()%></div>
									</div>
									<% } %>
								</div>

								<div name="profileEdit" class="tab-pane fade profile-edit pt-3" id="profile-edit">

									<!-- Profile Edit Form -->
									<%
										//khachhangbean kh = (khachhangbean)session.getAttribute("dn");
										if (kh != null) {
									%>
									<form method="post" action="suakhachhangcontroller">

										<div class="row mb-3">
											<label for="fullName"
												class="col-md-4 col-lg-3 col-form-label">Họ tên</label>
											<div class="col-md-8 col-lg-9">
												<input name="txtht" type="text" class="form-control" value="<%=kh.getHotenkh()%>">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Country" class="col-md-4 col-lg-3 col-form-label">Địa chỉ</label>
											<div class="col-md-8 col-lg-9">
												<input name="txtdc" type="text" class="form-control" value="<%=kh.getDiachikh()%>">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Address" class="col-md-4 col-lg-3 col-form-label">Số điện thoại</label>
											<div class="col-md-8 col-lg-9">
												<input name="txtsdt" type="text" class="form-control" value="<%=kh.getSodienthoaikh()%>">
											</div>
										</div>

										<div class="row mb-3">
											<label for="Phone" class="col-md-4 col-lg-3 col-form-label">Email</label>
											<div class="col-md-8 col-lg-9">
												<input name="txtemail" type="text" class="form-control" value="<%=kh.getEmailkh()%>">
											</div>
										</div>
										<div class="row mb-3 text-center mt-3 ">
										<%
											String q = request.getParameter("q");
											if (q != null){
												if (Long.parseLong(q) == 1) { %>
													<p class="text-danger" style="font-style: italic;">Không được để trống</p>
											<%} if (Long.parseLong(q) == 2) { %>
													<p class="text-danger" style="font-style: italic;">Cập nhật thành công</p>
											<%	
												}
											}
											%>
										</div>	
										<div class="text-center">
											<button type="submit" class="btn btn-primary">Cập nhật</button>
										</div>
									</form>
									<!-- End Profile Edit Form -->
									<% } %>
								</div>

								<div name="profileChangePassword" class="tab-pane fade pt-3" id="profile-change-password">
									<!-- Change Password Form -->
									<form method="post" action="suamatkhaukhachhangcontroller">

										<div class="row mb-3">
											<label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Mật khẩu hiện tại</label>
											<div class="col-md-8 col-lg-9">
												<input name="txtpass" type="password" class="form-control">
											</div>
										</div>

										<div class="row mb-3">
											<label for="newPassword" class="col-md-4 col-lg-3 col-form-label">Mật khẩu mới</label>
											<div class="col-md-8 col-lg-9">
												<input name="txtnewpass" type="password" class="form-control">
											</div>
										</div>

										<div class="row mb-3">
											<label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Nhập lại mật khẩu</label>
											<div class="col-md-8 col-lg-9">
												<input name="txtrenewpass" type="password" class="form-control">
											</div>
											<div class="row mb-3 text-center mt-3 ">
											<%
											String g = request.getParameter("p");
											if (g != null){
												if (Long.parseLong(g) == 1) { %>
												<p class="text-danger" style="font-style: italic;">Mật khẩu hiện tại không đúng. Vui lòng thử lại</p>
											<% } if (Long.parseLong(g) == 2) { %>
												<p class="text-danger" style="font-style: italic;">Mật khẩu mới không được trùng với mật khẩu hiện tại</p>
											<% } if (Long.parseLong(g) == 3) { %>
												<p class="text-danger" style="font-style: italic;">Nhập lại mật khẩu không đúng</p>
											<% } if (Long.parseLong(g) == 4) { %>
												<p class="text-danger" style="font-style: italic;">Đổi mật khẩu thành công</p>
											<%} if (Long.parseLong(g) == 5) { %>
												<p class="text-danger" style="font-style: italic;">Mật khẩu không được để trống</p>
											<%} %>
											<% } %>
											</div>
											<div class="text-center">
												<button type="submit" class="btn btn-primary">Xác nhận</button>
											</div>
									</form>
									<!-- End Change Password Form -->
								</div>
								
							</div>
						</div>
						<!-- End Bordered Tabs -->

					</div>
				</div>


			</div>
			<!-- </div> -->
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

		const TAB_ACTIVE_KEY = 'tab-active';
		const defaultActive = 'profileOverview';
		const tabActive = JSON.parse(localStorage.getItem(TAB_ACTIVE_KEY)) ?? defaultActive;
		console.log('tab active storage:', tabActive)
	
	
		const buttonBars = document.querySelectorAll('.card .nav-item .nav-link');
		const tabPanes = document.querySelectorAll('.tab-content .tab-pane');
	
		(() => {
		    tabPanes.forEach(tab => {
		        const tabId = tab.getAttribute('name');
		        if(tabId === tabActive)
		            tab.classList.add('active', 'show');
		        else tab.classList.remove('active', 'show');
		    })
	
		    buttonBars.forEach(btn => {
		        if(btn.getAttribute('name') === tabActive)
		            btn.classList.add('active');
		        else btn.classList.remove('active');
		    })
		})()
	
		buttonBars.forEach(btn => {
		  btn.addEventListener('click', () => {
		    const btnName = btn.getAttribute('name');
	
		    tabPanes.forEach(tab => {
		        const tabId = tab.getAttribute('name');
		        // console.log({tabId});
		        if(tabId === btnName) {
		            tab.classList.add('active', 'show');
		            localStorage.setItem(TAB_ACTIVE_KEY, JSON.stringify(tabId));
		        } 
		        else tab.classList.remove('active', 'show');
	
		    })
		  })
		})
	
	</script>





	<!-- ======== Script ========  -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous">
	</script>
	
	<script src="js/main.js"></script>

  </body>
</html>