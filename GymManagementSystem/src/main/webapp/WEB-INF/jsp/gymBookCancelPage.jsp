<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GYM Management System - Bookings</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
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
.container {
    width: 80%;
    margin: 100px auto 50px; /* Adjusted margin to accommodate fixed header */
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1em;
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        table th {
            background-color: #333;
            color: white;
        }
        table tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        table tbody tr:hover {
            background-color: #ddd;
        }
        .return-button-container {
            margin-top: 1em;
            text-align: center;
        }
        .return-button-container button, .return-button-container a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .return-button-container button:hover, .return-button-container a:hover {
            background-color: #555;
        }
    </style>
</head>
<body>

<header>
    <h1>GYM Management System</h1>
</header>

<div class="container">
    <h2>All Bookings</h2>
    
    <form action="/booked" method="post">
        <table>
            <thead>
                <tr>
                    <th>Booking ID</th>
                    <th>Slot ID</th>
                    <th>Item ID</th>
                    <th>Username</th>
                    <th>Select</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${bookingList}" var="booking">
                    <tr>
                        <td>${booking.bookingId}</td>
                        <td>${booking.slotId}</td>
                        <td>${booking.itemId}</td>
                        <td>${booking.username}</td>
                        <td><input type="radio" name="selectBookingId" value="${booking.bookingId}"></td>
                        <input type="hidden" name="item_id" value="${booking.itemId}">
                        <input type="hidden" name="slot_id" value="${booking.slotId}">
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="return-button-container">
            <button type="submit">Delete Booking</button>
        </div>
    </form>

    <div class="return-button-container">
        <a class="button-link" href="/index">Return</a>
    </div>
</div>

</body>
</html>
