<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Submit Feedback</title>
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
        .form-container {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            text-align: center;
        }
        .form-container h1 {
            margin-top: 0;
        }
        .form-container label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        .form-container input,
        .form-container textarea {
            width: calc(100% - 22px); /* Adjusted for padding */
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-container button {
            display: inline-block;
            width: auto;
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            margin-top: 20px;
        }
        .form-container button:hover {
            background-color: #555;
        }
        .form-container .return-button {
            display: inline-block;
            width: auto;
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            margin-top: 20px;
        }
        .form-container .return-button:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <header>
        <h1>GYM Management System</h1>
    </header>
    <div class="form-container">
        <h1>Submit Feedback</h1>
        <form action="${pageContext.request.contextPath}/feedback" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Enter your name" required>
            <br/>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>
            <br/>
            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="4" cols="50" placeholder="Enter your feedback" required></textarea>
            <br/>
            <button type="submit">Submit Feedback</button>
        </form>
        <a href="${pageContext.request.contextPath}/index" class="return-button">Return</a>
    </div>
</body>
</html>

