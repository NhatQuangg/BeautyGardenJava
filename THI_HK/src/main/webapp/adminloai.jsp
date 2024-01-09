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
        <div class="col-lg-5">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">---</h5>

              <!-- Horizontal Form -->
              <%
				String maloai="";
              	String tenloai="";
               	if(request.getAttribute("ml")!=null ) {
              		maloai = (String)request.getAttribute("ml");
              		tenloai = (String)request.getAttribute("tl");
               	}
              %>
              <form method="post" action="adminloaicontroller">
                <div class="row mb-3">
                  <label for="" class="col-sm-3 col-form-label">Mã loại</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="" name="txtmaloai" value="<%=maloai%>">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="" class="col-sm-3 col-form-label">Tên loại</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="" name="txttenloai" value="<%=tenloai%>">
                  </div>
                </div>
				<div class="row mb-1 text-center">
				<% String kt = request.getParameter("kt");
                	if(kt != null){
                		if(Long.parseLong(kt)==1){ %>
                			<div class="alert alert-danger" role="alert">
  								Mã loại đã tồn tại
							</div>
                <%		}
                		if (Long.parseLong(kt)==2) { %>
                			<div class="alert alert-success" role="alert">
  								Thêm loại thành công
							</div>
                <% 		}
                	}
               	%>
				</div>
                <div class="text-center">
                  <button type="submit" class="btn btn-primary" value="Add" name="butadd">Thêm</button>
                  <button type="submit" class="btn btn-primary" value="Update" name="butupdate">Cập nhật</button>
                </div>
              </form><!-- End Horizontal Form -->

            </div>
          </div>

        </div>

        <div class="col-lg-7">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Danh sách</h5>

              <!-- Table with stripped rows -->
              <table class="table table-bordered table-hover">
                <thead>
                  <tr style="text-align: center; vertical-align: middle;">
                    <th scope="col">#</th>
                    <th scope="col">Mã loại</th>
                    <th scope="col">Tên loại</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody>
                <%
                	ArrayList<loaibean> ds = (ArrayList<loaibean>)request.getAttribute("dsloai");
                	int i=1;
                	for(loaibean loai: ds) {
                %>
                  <tr style="vertical-align: middle;">
                    <th scope="row" style="text-align: center;"><%=i++%></th>
                    <td style="text-align: center;"><%=loai.getMaloai() %></td>
                    <td><%=loai.getTenloai() %></td>
                    <td style="text-align: center;">
                    	<a href="adminloaicontroller?ml=<%=loai.getMaloai()%>&tl=<%=loai.getTenloai()%>&tab=chon">Chọn</a>
                    </td>
                    <td style="text-align: center;">
						<a href="adminloaicontroller?ml=<%=loai.getMaloai()%>&tab=xoa">Xóa</a>
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