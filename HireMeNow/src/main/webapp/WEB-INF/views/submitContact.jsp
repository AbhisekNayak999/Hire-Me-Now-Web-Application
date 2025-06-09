<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Success</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            background: linear-gradient(to right, #48cae4, #00b4d8);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .success-box {
            background-color: white;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            text-align: center;
            max-width: 450px;
        }

        .success-icon {
            font-size: 60px;
            color: #28a745;
            margin-bottom: 15px;
        }

        .btn-home {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 25px;
            border-radius: 8px;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .btn-home:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="success-box">
    <div class="success-icon">🙏</div>
	<h5 class="thank-you-message" style="color: black;">😊Thanks a lot! We received your submission.</h5>
    <a href="home" class="btn btn-home mt-3">Back to Home</a>
    <p class="text-center mt-4" id="countdown" style="color: black;">
  		Redirecting to Home in <span id="timer">10</span> seconds...
	</p>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


<script>
	let timeLeft = 10;
	const timerEl = document.getElementById('timer');

	const countdown = setInterval(function () {
    	timeLeft--;
    	timerEl.textContent = timeLeft;
    	if (timeLeft <= 0) {
        	clearInterval(countdown);
        	window.location.href = 'home';
    	}
		}, 1000);


    setTimeout(function () {
        window.location.href = 'home';
    }, 10000); // 10000 milliseconds = 10 seconds
</script>



</body>
</html>
