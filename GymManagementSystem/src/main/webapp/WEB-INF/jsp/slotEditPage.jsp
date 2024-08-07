<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Slot</title>
    <style>
        :root {
            --card-width: 30%; /* Adjust the card width here */
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
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
            width: var(--card-width);
            margin: 100px auto 50px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        h3 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
            color: #333;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .form-buttons {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .form-buttons button {
            padding: 12px 24px;
            background-color: #333;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        .form-buttons button:hover {
            background-color: #555;
        }
        .form-buttons a {
            padding: 12px 24px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-size: 16px;
            margin-left: 10px;
        }
        .form-buttons a:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <header>
        <h1>GYM Management System</h1>
    </header>
    <div class="container">
        <h3>Edit Slot</h3>
        <form:form action="${pageContext.request.contextPath}/slot/edit" modelAttribute="slotRecord" method="post">
            <form:hidden path="slotId"/>
            
            <label for="slotTime">Slot Time:</label>
            <form:input path="slotTime" id="slotTime" />
            
            <label for="pricing">Pricing:</label>
            <form:input path="pricing" id="pricing" />
            
            <div class="form-buttons">
                <button type="submit">Save</button>
                <a href="${pageContext.request.contextPath}/slots">Back to Slot List</a>
            </div>
        </form:form>
    </div>
</body>
</html>


