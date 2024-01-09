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


	<!-- Google Fonts -->
	<link href="https://fonts.gstatic.com" rel="preconnect">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" 
 	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	<!-- <script src="//cdn.ckeditor.com/4.22.1/standard/ckeditor.js"></script> -->
	
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
	
	<link href="css/style.css" rel="stylesheet">
	
	<!-- Tắt tăng giảm trong thẻ input -->
	<style type="text/css">
		input[type=number]::-webkit-inner-spin-button {
   				-webkit-appearance: none;
  		}
	</style>
	
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
              <h5 class="card-title">---</h5>

              <!-- Horizontal Form -->
			<%
			String maloai = "";
			String masanpham = "";
			String tensanpham = "";
			Long soluong = (long)-1;
			Long gia = (long)-1;
			//String tomtat = "";
			//String thongtinsanpham = "";
			if(request.getAttribute("msp")!=null) {
				maloai = (String)request.getAttribute("ml");
				masanpham = (String)request.getAttribute("msp");
				tensanpham = (String)request.getAttribute("tsp");
				soluong = Long.parseLong((String)request.getAttribute("sl"));
				gia = Long.parseLong((String)request.getAttribute("g"));
			}
			%>

              <form method="post" action="adminsanphamcontroller" enctype="multipart/form-data">
                 <div class="row mb-3">
                  <label for="" class="col-sm-3 col-form-label">Mã loại</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="" name="txtmaloai" value="<%=maloai%>">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="" class="col-sm-3 col-form-label">Mã sản phẩm</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="" name="txtmsp" value="<%=masanpham%>">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="" class="col-sm-3 col-form-label">Tên sản phẩm</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="" name="txttsp" value="<%=tensanpham%>">
                  </div>
                </div>
                <div class="row mb-3">
                  <label for="" class="col-sm-3 col-form-label">Số lượng</label>
                  <div class="col-sm-9">
                    <input type="number" min="0" class="form-control" id="" name="txtsl" value="<%=soluong==-1?"":soluong%>">
                  </div>
                </div>
				<div class="row mb-3">
					<label for="" class="col-sm-3 col-form-label">Giá</label>
					<div class="col-sm-9">
						<input type="number" min="0" class="form-control" id="" name="txtgia" value="<%=gia==-1?"":gia%>">
					</div>
				</div>
				<div class="row mb-3">
					<label for="" class="col-sm-3 col-form-label">Ảnh</label>
					<div class="col-sm-9">
						<input type="file" name="txtanh">
					</div>
				</div>			
				<div class="row mb-3">
					<label for="" class="col-sm-3 col-form-label">Tóm tắt</label>
					<div class="col-sm-9">
						<textarea type="text" rows="1" class="form-control" id="txttomtat" name="txttomtat"></textarea>
						<%-- <input type="text" class="form-control" id="" name="txttomtat" value="<%=tomtat%>"> --%>
					</div>
				</div>
				<div class="row mb-3">
					<label for="" class="col-sm-3 col-form-label">Thông tin sản phẩm</label>
					<div class="col-sm-9">
						<textarea type="text"  rows="2" class="form-control" id="txtttsp" name="txtttsp" value=""></textarea>
						<%-- <input type="text" class="form-control" id="" name="txtttsp" value="<%=thongtinsanpham%>"> --%>
					</div>
				</div>
				<%
					String kt = request.getParameter("kt");
					if (kt != null){
						if (Long.parseLong(kt) == 1) { %>
							<div class="alert alert-danger" role="alert">
  								Mã sản phẩm đã tồn tại
							</div>
				<% 		} if (Long.parseLong(kt) == 2) { %>
						<div class="alert alert-success" role="alert">
  								Thêm sản phẩm thành công
						</div>
				<% 		}if (Long.parseLong(kt) == 4) { %>
						<div class="alert alert-danger" role="alert">
  								Mã loại hoặc Mã sản phẩm không tồn tại
						</div>
				<% 		}
					}
				%>
				<div class="text-center">
                  <button type="submit" class="btn btn-primary" value="Add" name="butadd">Thêm</button>
                  <button type="submit" class="btn btn-primary" value="Update" name="butupdate">Cập nhật</button>
                </div>
              </form><!-- End Horizontal Form -->

            </div>
          </div>

        </div>

        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Danh sách</h5>

              <!-- Table with stripped rows -->
              <table class="table table-bordered table-hover">
                <thead>
                  <tr style="text-align: center; vertical-align: middle;">
                    <th scope="col">#</th>
                    <th scope="col">Mã sản phẩm</th>
                    <th scope="col" >Tên sản phẩm</th>
                    <th scope="col">Số lượng</th>
                    <th scope="col">Giá</th>
                    <th scope="col">Ảnh</th>
                    <th scope="col" style="width: 105px;">Ngày nhập</th>
                    <th scope="col">Mã loại</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody>
                <%
                	ArrayList<sanphambean> ds = (ArrayList<sanphambean>)request.getAttribute("dssanpham");
                	int i=1;
	                for(sanphambean sp: ds) {
                %>
                  <tr style="vertical-align: middle;">
                    <th scope="row"><%=i++%></th>
                    <td style="text-align: center;"><%=sp.getMasanpham() %></td>
                    <td><%=sp.getTensanpham() %></td>
                    <td style="text-align: center;"><%=sp.getSoluong() %></td>
                    <td style="text-align: center;"><%=sp.getGiaString(sp.getGia())%>₫</td>
                    <td>
                    	<img src="<%=sp.getAnh()%>" style="width:50px;">
                    </td>
                    <td ><%=sp.getNgaynhap() %></td>
                    <td style="text-align: center;"><%=sp.getMaloai() %></td>
                    <td style="text-align: center;">
						<a href="adminchitietcontroller?msp=<%=sp.getMasanpham()%>">
							Chi tiết
						</a>
					</td>
					<td style="text-align: center;">
						<a href="adminsanphamcontroller?msp=<%=sp.getMasanpham()%>&tsp=<%=sp.getTensanpham()%>&sl=<%=sp.getSoluong()%>&g=<%=sp.getGia()%>&ml=<%=sp.getMaloai()%>&tab=chon">
							Chọn 
						</a>
					</td>
					<td style="text-align: center;">
						<a href="adminsanphamcontroller?msp=<%=sp.getMasanpham()%>&tab=xoa">Xóa</a>
					</td>
				</tr>
                  <%
                  }
                  %>
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
	<script>
	  CKEDITOR.replace('txttomtat');
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