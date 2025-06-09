<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HireMeNow</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="homestyle.css">
</head>
<body class="d-flex flex-column min-vh-100"> <!-- Make body a flex column -->

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <a class="navbar-brand fs-3" href="home">HireMeNow</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link active" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content -->
<main class="flex-grow-1"> <!-- Main content that pushes footer down -->
    <header class="hero-section text-center py-5">
        <div>
            <h1>Find Your Dream Job</h1>
            <p>Discover thousands of job opportunities in one place</p>
        </div>
    </header>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <!-- View All Jobs -->
            <div class="col-md-5 mb-4">
                <div class="card job-card text-center p-4">
                    <h4 class="mb-3">Browse Available Jobs</h4>
                    <form action="/viewalljobs" method="get">
                        <button type="submit" class="btn btn-outline-primary">View All Jobs</button>
                    </form>
                </div>
            </div>

            <!-- Add Job -->
            <div class="col-md-5 mb-4">
                <div class="card job-card text-center p-4">
                    <h4 class="mb-3">Post a New Job</h4>
                    <form action="/addjob" method="get">
                        <button type="submit" class="btn btn-outline-success">Add Job</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>

<jsp:include page="footer.jsp" />

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

</body>
</html>
