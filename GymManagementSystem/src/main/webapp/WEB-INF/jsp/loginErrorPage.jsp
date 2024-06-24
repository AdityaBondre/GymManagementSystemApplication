<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GYM Management System - Login</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #e9ecef;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background-color: #ffffff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        text-align: center;
        max-width: 400px;
        width: 100%;
    }
    .container h2 {
        margin: 0 0 20px;
        color: #343a40;
        font-size: 24px; /* Adjusted font size */
    }
    .container h3 {
        margin: 0 0 30px;
        color: #6c757d;
        font-size: 18px; /* Adjusted font size */
    }
    .error-message {
        color: red;
        margin-bottom: 20px;
        font-size: 16px; /* Adjusted font size */
    }
    input[type="text"], input[type="password"] {
        width: calc(100% - 24px);
        padding: 12px;
        margin: 12px 0;
        border: 1px solid #ced4da;
        border-radius: 5px;
        box-sizing: border-box;
        font-size: 14px; /* Adjusted font size */
    }
    input[type="submit"] {
        padding: 12px 20px;
        background-color: #007bff;
        border: none;
        color: white;
        cursor: pointer;
        border-radius: 5px;
        width: 100%;
        margin-top: 20px;
        font-size: 16px; /* Adjusted font size */
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    .register-link {
        display: block;
        margin-top: 20px;
        color: #007bff;
        text-decoration: none;
    }
    .register-link:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<c:url value="/login" var="loginUrl"/>
<div class="container">
    <h1 class="error-message">
        Wrong credentials... please re-enter.
    </h1>
    <h2>Welcome to GYM Management System</h2>
    <h3>Please Login to Continue</h3>
    <form action="${loginUrl}" method="post">
        <div>
            <label for="username">Enter User Id:</label>
            <input type="text" name="username" id="username" required="required"/>
        </div>
        <div>
            <label for="password">Enter Password:</label>
            <input type="password" name="password" id="password" required="required"/>
        </div>
        <input type="submit" value="Submit"/>
    </form>
    <a class="register-link" href="<c:url value='/register'/>">Register for new User</a>
</div>
</body>
</html>
