<%
  String currentPage = request.getRequestURI();
%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm sticky-top">
  <div class="container">
    <!-- Logo + Brand -->
    <a class="navbar-brand d-flex align-items-center" href="index.jsp">
      <img src="assets/images/logo.png" alt="Logo" width="40" height="40" class="me-2 rounded-circle">
      <span class="fw-bold">DK Admission Consulting</span>
    </a>

    <!-- Toggle button -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Nav Links -->
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item mx-2">
          <a class="nav-link <%= currentPage.endsWith("index.jsp") ? "active" : "" %>" href="index.jsp">Home</a>
        </li>
        <li class="nav-item mx-2">
          <a class="nav-link <%= currentPage.endsWith("about.jsp") ? "active" : "" %>" href="about.jsp">About</a>
        </li>
        <li class="nav-item mx-2">
          <a class="nav-link <%= currentPage.endsWith("courses.jsp") ? "active" : "" %>" href="courses.jsp">Courses</a>
        </li>
        <li class="nav-item mx-2">
          <a class="nav-link <%= currentPage.endsWith("gallery.jsp") ? "active" : "" %>" href="gallery.jsp">Gallery</a>
        </li>
        <li class="nav-item mx-2">
          <a class="nav-link <%= currentPage.endsWith("contactus.jsp") ? "active" : "" %>" href="contactus.jsp">Contact</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<style>
.navbar .nav-link:hover {
  color: #ffff !important;
}
.navbar .nav-link.active {
  color: #ffff !important;
  font-weight: bold;
}
</style>
