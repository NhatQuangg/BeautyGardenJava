<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	
	<title>Admin Beauty Garden</title>
	
	<!-- Favicons -->
	<!-- <link href="assets/img/favicon.png" rel="icon">
	<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"> -->

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
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">BeautyGarden</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-cart"></i>
            <span class="badge bg-primary badge-number">4</span>
          </a><!-- End Notification Icon -->



        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">Quang Nguyá»n</span>
          </a>
          <!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>Nháº­t Quang</h6>
              <span>Web Designer</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header>
  <!-- End Header -->

  <!-- ======= Sidebar (Thanh bÃªn cáº¡nh) ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link collapsed" href="index.html">
          <i class="bi bi-circle"></i>
          <span>Admin</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="index.html">
          <i class="bi bi-circle"></i>
          <span>Quáº£n lÃ½ loáº¡i</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="index.html">
          <i class="bi bi-circle"></i>
          <span>Quáº£n lÃ½ sáº£n pháº©m</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="index.html">
          <i class="bi bi-circle"></i>
          <span>Lá»ch sá»­ mua hÃ ng</span>
        </a>
      </li>

      <li class="nav-heading">Pages</li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="users-profile.html">
          <i class="bi bi-person"></i>
          <span>Profile</span>
        </a>
      </li><!-- End Profile Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="pages-register.html">
          <i class="bi bi-card-list"></i>
          <span>Register</span>
        </a>
      </li><!-- End Register Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="pages-login.html">
          <i class="bi bi-box-arrow-in-right"></i>
          <span>Login</span>
        </a>
      </li><!-- End Login Page Nav -->
    </ul>

  </aside>
  <!-- End Sidebar-->

  <main id="main" class="main">
    
    <!-- Page title -->
    <div class="pagetitle">
      <!-- <h1>Carousel</h1> -->
      <nav>
        <ol class="breadcrumb">
          <h5 class="breadcrumb-item active">Admin</h5>
        </ol>
      </nav>
    </div>
    <!-- End Page Title -->

    <section class="section">
      <div class="row">

        <div class="col-sm-6 col-md-3">

          <div class="card">
            <img src="/img/San_pham_moi_ve/Kem-duong-Dr_Sunmi-HA-Plus-Cream(1).jpg" class="" alt="...">
            <div class="card-body">
              <p class="mt-1 line">Add to your carousel to animate slides jga Add to your carousel to animate slides </p>
              <span style="color: #199427; font-weight: 600; font-size: 18px;">89,000â«</span>
              <button class="btn btn-primary float-end" style="font-size: 14px;">Äáº·t mua</button>
            </div>
          </div>

        </div>

        <div class="col-sm-6 col-md-3">

          <div class="card">
            <img src="/img/San_pham_moi_ve/Kem-duong-Dr_Sunmi-HA-Plus-Cream(1).jpg" class="" alt="...">
            <div class="card-body">
              <p class="mt-1">Add to your carousel to animate slides </p>
              <span style="color: #199427; font-weight: 600; font-size: 18px;">89,000â«</span>
              <button class="btn btn-primary float-end" style="font-size: 14px;">Äáº·t mua</button>
            </div>
          </div>

        </div>

        <div class="col-sm-6 col-md-3">

          <div class="card">
            <img src="/img/San_pham_moi_ve/Kem-duong-Dr_Sunmi-HA-Plus-Cream(1).jpg" class="" alt="...">
            <div class="card-body">
              <p class="mt-1">Add to your carousel to animate slides </p>
              <span style="color: #199427; font-weight: 600; font-size: 18px;">89,000â«</span>
              <button class="btn btn-primary float-end" style="font-size: 14px;">Äáº·t mua</button>
            </div>
          </div>

        </div>

        <div class="col-sm-6 col-md-3">

          <div class="card">
            <img src="/img/San_pham_moi_ve/Kem-duong-Dr_Sunmi-HA-Plus-Cream(1).jpg" class="" alt="...">
            <div class="card-body">
              <p class="mt-1">Add to your carousel to animate slides </p>
              <span style="color: #199427; font-weight: 600; font-size: 18px;">89,000â«</span>
              <button class="btn btn-primary float-end" style="font-size: 14px;">Äáº·t mua</button>
            </div>
          </div>

        </div>
         
        <div class="col-sm-6 col-md-3">

          <div class="card">
            <img src="/img/San_pham_moi_ve/Kem-duong-Dr_Sunmi-HA-Plus-Cream(1).jpg" class="" alt="...">
            <div class="card-body">
              <p class="mt-1">Add to your carousel to animate slides </p>
              <span style="color: #199427; font-weight: 600; font-size: 18px;">89,000â«</span>
              <button class="btn btn-primary float-end" style="font-size: 14px;">Äáº·t mua</button>
            </div>
          </div>

        </div>

        <div class="col-sm-6 col-md-3">

          <div class="card">
            <img src="/img/San_pham_moi_ve/Kem-duong-Dr_Sunmi-HA-Plus-Cream(1).jpg" class="" alt="...">
            <div class="card-body">
              <p class="mt-1">Add to your carousel to animate slides </p>
              <span style="color: #199427; font-weight: 600; font-size: 18px;">89,000â«</span>
              <button class="btn btn-primary float-end" style="font-size: 14px;">Äáº·t mua</button>
            </div>
          </div>

        </div>        

      </div>
    </section>

  </main>

  <!-- ========================================= -->
  <!-- ========================================= -->
  <!-- ========================================= -->


  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>QuangNguyen</span></strong>. All Rights Reserved
    </div>

  </footer>
  <!-- End Footer -->


  <!-- NÃºt lÃªn Äáº§u trang -->
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


  <!-- <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" 
  integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  <script src="assets/js/main.js"></script>

</body>

</html>