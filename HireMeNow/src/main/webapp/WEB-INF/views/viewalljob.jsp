<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.jobapp.model.JobPost" %>
<%@ page import="com.jobapp.repo.JobRepo" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Jobs</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="viewalljobstyle.css">
</head>

<body class="d-flex flex-column min-vh-100"> <!-- Flex layout -->

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-gradient-primary">
    <div class="container">
        <a class="navbar-brand fs-2 fw-bold" href="home">HireMeNow</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="addjob">Add Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content -->
<main class="flex-grow-1 container py-5"> <!-- Pushes footer down -->
    <h2 class="text-center text-primary mb-4 fw-bold"><b class="alljob">Available Job Posts</b></h2>

    <ab:if test="${empty jobPosts}">
        <p class="text-danger text-center">No job postings available.</p>
    </ab:if>

    <div class="row g-4">
        <ab:forEach var="jobPost" items="${jobPosts}">
            <div class="col-md-6 col-lg-4">
                <div class="card h-100 shadow-sm border-0">
                    <div class="card-body">
                        <h5 class="card-title text-dark">${jobPost.postProfile}</h5>
                        <p class="card-text"><strong>Job ID:</strong> ${jobPost.postId}</p>
                        <p class="card-text"><strong>Description:</strong> ${jobPost.postDesc}</p>
                        <p class="card-text"><strong>Experience Required:</strong> ${jobPost.reqExperience} years</p>
                        <p class="card-text"><strong>Tech Stack:</strong>
                            <ul class="mb-0">
                                <ab:forEach var="tech" items="${jobPost.postTechStack}">
                                    <li>${tech}</li>
                                </ab:forEach>
                            </ul>
                        </p>
                    </div>
                </div>
            </div>
        </ab:forEach>
    </div>
</main>

<jsp:include page="footer.jsp" />

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

</body>
</html>
