<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  	<meta charset="utf-8">
  	<meta content="width=device-width, initial-scale=1.0" name="viewport">

	<title>Beauty Garden</title>

<!-- Favicons -->
<!-- <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon"> -->

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" 
  rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

  <link href="css/style.css" rel="stylesheet">

</head>
  <body>

	<main>
		<div class="container">
			<section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5 col-md-6 d-flex flex-column align-items-center justify-content-center">
							<div class="d-flex justify-content-center py-4">
								<a href="trangchucontroller" class="logo d-flex align-items-center w-auto"> 
									<img src="img/logo.png" alt=""> 
									<span class="d-none d-lg-block">BeautyGarden</span>
								</a>
							</div>
							<!-- End Logo -->

							<div class="card mb-3">
								<div class="card-body">
									<div class="pt-4 pb-2">
										<h5 class="card-title text-center pb-0">Đăng nhập</h5>
										<p class="text-center small">Nhập tên đăng nhập và mật khẩu của bạn</p>
									</div>
									<form class="row g-3 needs-validation" method="post" action="dangnhapxncontroller" id="form">
										<div class="col-12">
											<label for="yourUsername" class="form-label">Tên đăng nhập</label>
											<div class="input-group has-validation">
												<input type="text" name="txttdn" class="form-control" id="" required>
											</div>
										</div>
										<div class="col-12">
											<label for="yourPassword" class="form-label">Mật khẩu</label>
											<input type="password" name="txtmk" class="form-control" id="" required>
										</div>
										
										<div class="g-recaptcha" data-sitekey="6Lc1o7MnAAAAAGpuwl5hSz4Wm42AptZkuhGR5xIi"></div>
      									
										<p id="error" class="small mb-0 text-center text-danger" style="font-style: italic;"></p>
										
										<div class="col-12">
											<button class="btn btn-primary w-100" type="submit" name="b1">Đăng nhập</button>
										</div>
										<div class="col-12">
											<p class="small mb-0">
												Bạn chưa có tài khoản? <a href="dangki.jsp" style="font-style: italic;">Đăng kí</a>
											</p>
										</div>
										<%
											if(request.getParameter("kt")!=null) {
										%>
										<div class="col-12">
											<p class="small mb-0 text-center text-danger" style="font-style: italic;">
												Đăng nhập sai. Vui lòng thử lại
											</p>
										</div>		
										<%} %>								
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>	
		</div>
	</main>
	<!-- End #main -->


  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

 <script src="https://www.google.com/recaptcha/api.js" async defer></script>
  <script>

	window.onload = function() {
		let isvalue = false;
		const form = document.getElementById("form");
		const err = document.getElementById("error");
		let failedAttempts = 0;

		form.addEventListener("submit",	function(event) {
			event.preventDefault();

			const res = grecaptcha.getResponse();
			//console.log(res);

			if (res) {
				form.submit();
			} else {
				// tăng số lần tăng đăng nhập
				failedAttempts++;
				if (failedAttempts >= 3) {
					err.innerHTML = "Bạn đã nhập sai thông tin quá nhiều lần. Vui lòng thử lại sau.";
					form.querySelector('button[type="submit"]').disabled = true; // Vô hiệu hóa nút submit sau 3 lần nhập sai
				} else {
					err.innerHTML = "Vui lòng xác nhận rằng bạn không phải là robot.";
				}
			}
		});
	};
  </script>

  <!-- ======== Script ========  -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" 
  integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  <script src="js/main.js"></script>

  </body>
</html>