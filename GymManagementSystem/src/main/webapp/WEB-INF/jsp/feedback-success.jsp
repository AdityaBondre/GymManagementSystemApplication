<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback Submitted</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding-top: 60px; /* Ensures content is not hidden behind the fixed header */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
        }
        header {
            background: #333;
            color: #fff;
            padding: 20px 0;
            width: 100%;
            text-align: center;
            position: fixed;
            top: 0;
            left: 0;
        }
        header h1 {
            margin: 0;
        }
        .card {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .card h1 {
            margin-top: 0;
        }
        .card a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #fff;
            background-color: #333;
            padding: 10px 20px;
            border-radius: 4px;
            border: 1px solid #333;
        }
        .card a:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <header>
        <h1>GYM Management System</h1>
    </header>
    <div class="card">
        <h1>Feedback Submitted Successfully</h1>
        <a href="${pageContext.request.contextPath}/index">Go back to home</a>
    </div>
</body>
</html>
