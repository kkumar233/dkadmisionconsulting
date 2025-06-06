<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Gallery - DK Admission Consulting</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="d-flex flex-column min-vh-100">

<!-- Navbar -->
<%@ include file="navbar.jsp" %>


<!-- Gallery Section -->
<section class="py-5 flex-grow-1">
  <div class="container">
    <h2 class="text-center mb-4">Our Gallery</h2>
    <div class="row g-4">

      <!-- Gallery Image 1 -->
      <div class="col-md-4">
        <img src="assets/images/gallery1.jpg" alt="Gallery 1" class="img-fluid rounded shadow-sm">
      </div>

      <!-- Gallery Image 2 -->
      <div class="col-md-4">
        <img src="assets/images/gallery2.jpg" alt="Gallery 2" class="img-fluid rounded shadow-sm">
      </div>

      <!-- Gallery Image 3 -->
      <div class="col-md-4">
        <img src="assets/images/gallery3.jpg" alt="Gallery 3" class="img-fluid rounded shadow-sm">
      </div>
      
      <div class="col-md-4">
        <img src="assets/images/gallery4.jpg" alt="Gallery 4" class="img-fluid rounded shadow-sm">
      </div>
      
      <div class="col-md-4">
        <img src="assets/images/gallery5.jpg" alt="Gallery 5" class="img-fluid rounded shadow-sm">
      </div>
      
      <div class="col-md-4">
        <img src="assets/images/gallery6.jpg" alt="Gallery 6" class="img-fluid rounded shadow-sm">
      </div>

    </div>
  </div>
</section>

<!-- Footer -->
<%@ include file="footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
