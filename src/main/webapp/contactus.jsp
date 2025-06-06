<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us - DK Admission Consulting</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Optional custom CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body class="d-flex flex-column min-vh-100">

<!-- Navbar -->
<%@ include file="navbar.jsp" %>



<!-- Contact Section -->
<section class="py-5 flex-grow-1">
  <div class="container">
    <h2 class="mb-4 text-center">Get in Touch</h2>
    <div class="row g-4">
      
      <!-- Contact Form -->
      <div class="col-md-6">
        <form action="contact" method="post">
          <div class="mb-3">
            <label class="form-label">Your Name</label>
            <input type="text" class="form-control" name="name" placeholder="Enter your name" required>
          </div>
          <div class="mb-3">
            <label class="form-label">Email Address</label>
            <input type="email" class="form-control" name="email" placeholder="Enter your email" required>
          </div>
          <div class="mb-3">
            <label class="form-label">Message</label>
            <textarea class="form-control" name="message" rows="5" placeholder="Write your message" required></textarea>
          </div>
          <button type="submit" class="btn btn-success">Send Message</button>
        </form>
      </div>

      <!-- Office Info + Map -->
      <div class="col-md-6">
        <h5>Our Office</h5>
        <p>DK Admission Consulting<br>Badarjimi Bazar, Mirganj, Gopalganj, Bihar - 841438</p>
        <p>Email: drmukesh496@gmail.com<br>Phone: +91-8294424481</p>

        <!-- Google Map Embed -->
        <iframe 
          src="https://www.google.com/maps?q=Badarjimi+Bazar,+Mirganj,+Gopalganj,+Bihar+841438&output=embed" 
          width="100%" 
          height="300" 
          style="border:0;" 
          allowfullscreen 
          loading="lazy">
        </iframe>
      </div>
    </div>
  </div>
</section>

<!-- Footer -->
  <%@ include file="footer.jsp" %>
  

<% 
   String mailError = (String) session.getAttribute("mailError");
   if (mailError != null) {
%>
   <div style="color:red; font-weight:bold;">
       Mail sending failed: <%= mailError %>
   </div>
<% 
      session.removeAttribute("mailError");
   }
%>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
