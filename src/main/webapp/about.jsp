<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us - DK Admission Consulting</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="d-flex flex-column min-vh-100">

<!-- Navbar -->
<%@ include file="navbar.jsp" %>

 <!-- Header -->
 <%@ include file="header.jsp" %>

<!-- About Section -->
<section class="py-5 bg-light flex-grow-1">
  <div class="container">
    <div class="row align-items-center">
      
      <!-- Text Content -->
      <div class="col-md-6">
        <h5 class="text-success fw-semibold">YOUR PATH TO SUCCESS</h5>
        <h2 class="fw-bold">Guiding you to top universities</h2>
        <p class="lead text-muted">
          At DK Admission Consulting, we specialize in empowering students and professionals to unlock their potential 
          and gain admission to prestigious universities and colleges. Our personalized approach ensures that you receive 
          tailored guidance in application strategy, essay writing, interview preparation, and career counseling.
        </p>
        <p class="text-muted">
          We are dedicated to simplifying the admission process, enabling you to focus on realizing your academic aspirations. 
          Let us help you achieve your dreams and secure a brighter future.
        </p>
        <a href="contactus.jsp" class="btn btn-success">Get in Touch</a>
      </div>

      <!-- Image -->
      <div class="col-md-6 mt-4 mt-md-0">
        <img src="assets/images/12.jpg" alt="Students studying" class="img-fluid rounded shadow">
      </div>

    </div>
  </div>
</section>

<!-- Footer -->
  <%@ include file="footer.jsp" %>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
