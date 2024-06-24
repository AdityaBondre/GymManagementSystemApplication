<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GYM Management System - Login</title>
    <style>
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #e9ecef;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
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

        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
            margin-top: 100px;
        }

        .container h2 {
            margin: 0 0 20px;
            color: #343a40;
        }

        .container h3 {
            margin: 0 0 30px;
            color: #6c757d;
        }

        input[type="text"], input[type="password"] {
            width: calc(100% - 24px);
            padding: 12px;
            margin: 12px 0;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            padding: 12px 20px;
            background-color: #333;
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #555;
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
    <header>
        <h1>GYM Management System</h1>
    </header>
    <div class="container">
        <h2>Welcome</h2>
        <h3>Please Login to Continue</h3>
        <c:url value="/login" var="loginUrl"/>
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

