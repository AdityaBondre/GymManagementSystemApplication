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
    margin-top: 20px;
    margin-bottom: 20px; /* Added margin-bottom for additional space */
}
table, th, td {
    border: 2px solid #ddd;
}
th {
    padding: 12px;
    text-align: left;
    background-color: #333;
    color: white;
    /* Remove underline from headers */
    text-decoration: none;
}
td {
    padding: 12px;
    text-align: left;
}
tr:nth-child(even) {
    background-color: #f2f2f2;
}
tr:hover {
    background-color: #ddd;
}
.return-link, button {
    display: inline-block;
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #333;
    color: white;
    text-decoration: none;
    border-radius: 4px;
    border: none;
    cursor: pointer;
    font-size: 14px;
    text-align: center;
    
}
.return-link:hover, button:hover {
    background-color: #555;
}
.button-book {
    width: 100px; /* Width for the Book button */
}
.button-return {
    width: 140px; /* Width for the Return button */
}
.button-container {
    text-align: center;
    margin-top: 40px;
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
        <form action="/slot-book" method="post">
            <input type="hidden" value="${slot.slotId}" name="slot_id"/>
            <input type="hidden" name="username" value="${gymUser.username}"/>
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
                        <td>${item.seatVacant}</td>
                        
                        <td><input name="selectItem" type="radio" value="${item.itemId}"/></td>
                    </tr> 
                </c:forEach>
            </table>
            <button type="submit">Book</button>
            <a class="return-link" href="/index">Return</a>
        </form>
    </div>
</div>

</body>
</html>
