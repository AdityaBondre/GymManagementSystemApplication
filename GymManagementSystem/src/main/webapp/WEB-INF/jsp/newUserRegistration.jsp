<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GYM Management System - New User Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            padding: 20px;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 350px; /* Reduced width for compact layout */
            width: 100%;
            margin-top: 100px; /* Ensure the form is below the header */
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
        h2 {
            margin: 0 0 20px;
            color: #333;
            font-size: 20px; /* Reduced font size for compact layout */
            text-align: center;
        }
        form {
            width: 100%;
        }
        label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            color: #333;
            font-size: 14px;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[list] {
            width: 100%;
            padding: 8px; /* Reduced padding for compact layout */
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
        }
        .info {
            font-size: 12px;
            color: #777;
            display: block;
            margin-bottom: 5px;
        }
        .terms {
            display: flex;
            align-items: center;
            font-size: 14px;
        }
        .terms label {
            margin: 0;
            padding-left: 5px;
        }
        .error {
            color: red;
            font-size: 12px;
            display: none;
        }
        button {
            padding: 10px 20px;
            background-color: #000; /* Changed color to black */
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 5px;
            width: calc(50% - 5px);
            margin-top: 10px; /* Reduced top margin for compact layout */
            font-size: 14px;
        }
        button[type="reset"] {
            background-color: #6c757d;
        }
        button:hover {
            background-color: #333; /* Darker shade for hover effect */
        }
        button[type="reset"]:hover {
            background-color: #5a6268;
        }
        .button-group {
            display: flex;
            justify-content: space-between;
        }
    </style>
    <script type="text/javascript">
        function validateForm() {
            var pass1 = document.getElementById("pass1").value;
            var pass2 = document.getElementById("pass2").value;
            var type = document.getElementById("types").value;
            var agreeTerms = document.getElementById("agreeTerms").checked;
            var mismatchMessage = document.getElementById("password-mismatch");
            var typeErrorMessage = document.getElementById("type-error");
            var passErrorMessage = document.getElementById("password-error");
            var termsErrorMessage = document.getElementById("terms-error");

            var valid = true;

            // Password validation
            var passRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#$!%*?&])[A-Za-z\d@#$!%*?&]{6,}$/;
            if (!passRegex.test(pass1)) {
                passErrorMessage.style.display = 'block';
                valid = false;
            } else {
                passErrorMessage.style.display = 'none';
            }

            if (pass1 !== pass2) {
                mismatchMessage.style.display = 'block';
                valid = false;
            } else {
                mismatchMessage.style.display = 'none';
            }

            // User type validation
            if (type !== "Customer" && type !== "Admin") {
                typeErrorMessage.style.display = 'block';
                valid = false;
            } else {
                typeErrorMessage.style.display = 'none';
            }

            // Terms and conditions validation
            if (!agreeTerms) {
                termsErrorMessage.style.display = 'block';
                valid = false;
            } else {
                termsErrorMessage.style.display = 'none';
            }

            if (valid) {
                document.getElementById("registration-form").submit();
            }
        }
    </script>
</head>
<body>
<header>
        <h1>GYM Management System</h1>
</header>
<c:url value="/register" var="registerUrl"/>
<div class="container">
    <h2>New User Registration</h2>
    <form:form id="registration-form" method="post" action="${registerUrl}" modelAttribute="userRecord">
        <label for="firstName">First Name:</label>
        <form:input path="firstName" required="required"/>
        <br/>

        <label for="lastName">Last Name:</label>
        <form:input path="lastName" required="required"/>
        <br/>

        <label for="email">Email:</label>
        <form:input type="email" path="email" required="required"/>
        <br/>

        <label for="type">User Type:</label>
        <form:input list="type" name="type" id="types" path="type" required="required"/>
        <datalist id="type">
            <option value="Customer">
            <option value="Admin">
        </datalist>
        <span id="type-error" class="error">Invalid user type. Please select either "Customer" or "Admin".</span>
        <br/>
        
        <label for="username">User ID:</label>
        <form:input path="username" required="required"/>  
        <br/>
        
        <label for="password">Password:</label>
        <small class="info">(At least 6 characters long, contains at least one special symbol, one number, one uppercase letter, and one lowercase letter)</small>
        <form:input type="password" path="password" id="pass1" required="required"/>
        <br/>
        
        <label for="rePassword">Confirm Password:</label>
        <input type="password" id="pass2" required="required"/>
        <span id="password-mismatch" class="error">Passwords do not match</span>
        <br/>
        <span id="password-error" class="error">Password must meet the required criteria.</span>
        <br/>

        <div class="terms">
            <input type="checkbox" id="agreeTerms" name="agreeTerms" required="required"/>
            <label for="agreeTerms">I agree to the terms and conditions</label>
            <span id="terms-error" class="error">You must agree to the terms and conditions</span>
        </div>
        <br/>

        <div class="button-group">
            <button type="button" onclick="validateForm()">Submit</button>
            <button type="reset">Reset</button>
            <button type="button" onclick="window.location.href='/loginpage'">Login</button>
        </div>
    </form:form>
</div>
</body>
</html>
