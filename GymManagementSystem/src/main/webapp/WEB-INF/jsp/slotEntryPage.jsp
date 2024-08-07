<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Slots</title>
<style>
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
    width: 50%;
    margin: 100px auto 50px; /* Adjusted margin to accommodate fixed header */
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}
    h3 {
        text-align: center;
        color: #333;
        font-size: 24px;
        margin-bottom: 20px;
    }
    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    form label {
        margin-bottom: 10px;
        color: #333;
        font-size: 16px;
    }
    form input[type="text"], form input[type="number"] {
        padding: 10px;
        margin-bottom: 15px;
        width: 100%;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
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
        cursor: pointer;
        font-size: 16px;
        margin-right: 10px;
    }
    .form-buttons button[type="reset"] {
        background-color: #bbb;
        margin-right: 10px;
    }
    .form-buttons .return-link {
        padding: 12px 24px;
        background-color: #bbb;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        text-decoration: none;
        text-align: center;
    }
    .form-buttons button:hover, .form-buttons .return-link:hover {
        background-color: #555;
    }
</style>
</head>
<body>
<header>
    <h1>GYM Management System</h1>
</header>
<div class="container">
    <h3>Add Slots</h3>
    <form:form action="/slot" method="post" modelAttribute="slotRecord">
        <form:hidden path="slotId"/>
        
        <label for="slotTime">Enter Slot Timings:</label>
        <form:input path="slotTime" id="slotTime" />
        <br/><br/>
        
        <label for="pricing">Enter Slot Pricing:</label>
        <form:input path="pricing" id="pricing" />
        <br/><br/>
        
        <div class="form-buttons">
            <button type="submit">Submit</button>
            <button type="reset">Reset</button>
            <a class="return-link" href="/index">Home</a>
        </div>
    </form:form>
</div>
</body>
</html>
