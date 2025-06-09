<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Contact Us - Job Portal</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />

<style>
  /* Custom gradient background for navbar */
  .bg-gradient-primary {
    background: linear-gradient(to right, #48cae4, #00b4d8);
  }

  body {
    margin: 0;
    padding: 0;
    background: #f0f2f5;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  }

  .contact-container {
    max-width: 900px;
    margin: 40px auto;
  }

  .info-box {
    background: white;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    margin-bottom: 40px;
  }

  .info-box p {
    font-size: 1.15rem;
    margin-bottom: 12px;
  }

  .info-box p strong {
    color: #00b4d8;
  }

  .contact-form {
    background: white;
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
  }

  .contact-form label {
    font-weight: 600;
  }

  .btn-primary {
    background-color: #00b4d8;
    border: none;
    padding: 12px 28px;
    font-size: 1rem;
    border-radius: 6px;
    transition: background-color 0.3s ease;
  }

  .btn-primary:hover {
    background-color: #0096c7;
  }
  
  .collapse a:hover
  {
  	color:white;
  	text-decoration: underline;
  }
</style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-gradient-primary">
  <div class="container">
    <a class="navbar-brand fs-2 fw-bold" href="#">HireMeNow</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
            aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto ">
        <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
        <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- Contact Content -->
<div class="contact-container">
  <h2 class="text-center mb-5">Contact Us</h2>

  <div class="info-box">
    <p><strong>Email:</strong> nayakabhise345@gmail.com</p>
    <p><strong>Phone:</strong> +91 6372257181</p>
    <p><strong>Address:</strong> Bhubaneswar, Odisha, India</p>
  </div>

  <form action="submitContact" method="post" class="contact-form" novalidate>
    <div class="mb-4">
      <label for="name" class="form-label">Name</label>
      <input type="text" class="form-control" id="name" name="name" placeholder="Your full name" required />
    </div>

    <div class="mb-4">
      <label for="email" class="form-label">Email</label>
      <input type="email" class="form-control" id="email" name="email" placeholder="your.email@example.com" required />
    </div>

    <div class="mb-4">
      <label for="message" class="form-label">Message</label>
      <textarea class="form-control" id="message" name="message" rows="5" placeholder="Write your message here..." required></textarea>
    </div>

    <button type="submit" class="btn btn-primary w-100">Send Message</button>
  </form>
</div>
		<jsp:include page="footer.jsp" />

<!-- Bootstrap Bundle JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
