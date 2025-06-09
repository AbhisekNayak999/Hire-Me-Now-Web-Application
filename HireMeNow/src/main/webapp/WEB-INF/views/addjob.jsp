<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post a Job</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
    <link rel="stylesheet" href="addjobstyle.css">
    
    <style type="text/css">
    .footer {
    background: linear-gradient(to right, #48cae4, #00b4d8);
    color: white;
    text-align: center;
    padding: 1.2rem 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    position: relative;
    bottom: 0;
    width: 100%;
    box-shadow: 0 -1px 10px rgba(0,0,0,0.2);
	}

	.footer-content {
    max-width: 1200px;
    margin: 0 auto;
	}
    </style>
</head>
<body class="addjob-body">
    <nav class="navbar navbar-expand-lg navbar-dark bg-gradient-primary">
        <div class="container">
            <a class="navbar-brand fs-2 fw-bold text-white" href="home">HireMeNow</a>
            <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link text-white" href="home">Home</a></li>
                    <li class="nav-item"><a class="nav-link text-white" href="viewalljobs">All Jobs</a></li>
                    <li class="nav-item"><a class="nav-link text-white" href="contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card shadow-lg border-0 rounded-4">
                    <div class="card-body p-4">
                        <h2 class="text-center mb-4 text-primary"><b class="cardheading">Post a New Job</b></h2>
                        <form:form action="handleForm" method="post" modelAttribute="jobPost">
                            <div class="form-floating mb-3">
                                <form:input path="postId" class="form-control" id="postId" placeholder="Post ID" required="true"/>
                                <label for="postId">Post ID</label>
                            </div>
                            <div class="form-floating mb-3">
                                <form:input path="postProfile" class="form-control" id="postProfile" placeholder="Post Profile" required="true"/>
                                <label for="postProfile">Post Profile</label>
                            </div>
                            <div class="form-floating mb-3">
                                <form:textarea path="postDesc" class="form-control" id="postDesc" style="height: 100px;" required="true"/>
                                <label for="postDesc">Post Description</label>
                            </div>
                            <div class="form-floating mb-3">
                                <form:input path="reqExperience" class="form-control" id="reqExperience" type="number" placeholder="Required Experience" required="true"/>
                                <label for="reqExperience">Required Experience (years)</label>
                            </div>
                            <div class="mb-3">
                        		<label for="postTechStack" class="form-label">Tech Stack</label>
                        			<select multiple class="form-select" id="postTechStack" name="postTechStack" required>
                            			<c:forEach var="tech" items="${techStackOptions}">
                                			<option value="${tech}">${tech}</option>
                            			</c:forEach>
                        			</select>
                        			<div class="form-text">Hold Ctrl (Windows) or Command (Mac) to select multiple</div>
                    				</div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary px-5 py-2 rounded-pill">Submit</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<jsp:include page="footer.jsp" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
