<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>DK Admission Consulting</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body, html {
      height: 100%;
    }
  </style>
</head>
<body class="d-flex flex-column min-vh-100">

  <!-- Navbar -->
  <%@ include file="navbar.jsp" %>
  
  <!-- Header -->
  <%@ include file="header.jsp" %>
  
  <!-- Hero Section -->
  <div class="container py-5 flex-grow-1">
    <div class="row align-items-center">
      <div class="col-md-6">
        <h2 class="text-success">Your Path to Success</h2>
        <h1 class="fw-bold">Guiding you to top universities</h1>
        <p class="lead">At DK Admission Consulting, we empower students and professionals to unlock their full potential...</p>
        <a href="contactus.jsp" class="btn btn-primary">Get in Touch</a>
      </div>
      <div class="col-md-6">
        <img src="assets/images/12.jpg" alt="Students" class="img-fluid rounded shadow">
      </div>
    </div>
  </div>

  <!-- Footer -->
    <%@ include file="footer.jsp" %>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
