<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Web Footer</title>

<style>
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
  body, html {
      height: 100%;
      margin: 0;
    }

    .page-container {
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    .content-wrap {
      flex: 1;
    }
</style>

</head>
<body>
	<footer class="footer">
  		<div class="footer-content">
    		<p>&copy; 2025 HireMeNow. All rights reserved.</p>
  		</div>
	</footer>

</body>
</html>