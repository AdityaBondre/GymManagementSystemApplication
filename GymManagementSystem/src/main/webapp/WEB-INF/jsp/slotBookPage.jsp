<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
﻿<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Slot Booking</title>
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
        width: 60%;
        margin: 100px auto 50px; /* Adjusted margin to accommodate fixed header */
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }
    .slot-info {
        background: url('/image/image002.jpg') no-repeat center center;
        background-size: cover; /* Ensures the whole image is displayed */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        text-align: right;
        margin-bottom: 20px;
        color: #fff; /* Adjusted text color for better visibility on background image */
        min-height: 240px; /* Adjust height as needed */
    }
    .slot-info h2 {
        margin: 10px 0;
        font-size: 1.5em;
    }
    hr {
        border: none;
        border-top: 5px solid #333;
        margin: 20px 0;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    table, th, td {
        border: 1px solid #ddd;
    }
    th, td {
        padding: 12px;
        text-align: center;
    }
    th {
        background-color: #f2f2f2;
    }
    button {
        background-color: #333;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    button:hover {
        background-color: #333;
    }
</style>
</head>
<body>

<header>
    <h1>GYM Management System</h1>
</header>

<div class="container">
    <div class="slot-info">
        <h2>Slot ID: ${slot.slotId}</h2>
        <h2> Time: ${slot.slotTime}</h2>
        <h2>Price: ${slot.pricing}</h2>
    </div>
    <hr/>
    <div align="center">
        <form action="yourActionURL" method="post">
            <input type="hidden" value="${slot.slotId}" name="slot_id"/>
            <table>
                <tr>
                    <th>Item No</th>
                    <th>Item Name</th>
                    <th>Total Seat</th>
                    <th>Available Seat</th>
                    <th>Select</th>
                </tr>
                <c:forEach items="${itemList}" var="item">
                    <tr>
                        <td>${item.itemId}</td>
                        <td>${item.itemName}</td>
                        <td>${item.totalSeat}</td>
                        <td>0</td>
                        <td><input name="selectitem" type="radio" value="${item.itemId}"/></td>
                    </tr> 
                </c:forEach>
            </table>
            <button type="submit">Book</button>
        </form>
    </div>
</div>

</body>
</html>
