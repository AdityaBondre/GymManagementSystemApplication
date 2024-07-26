<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>        
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Slot List</title>
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
            margin-top: 20px;
        }
        table, th, td {
            border: 2px solid #ddd;
        }
        th {
            padding: 12px;
            text-align: left;
            background-color: #333;
            color: white;
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
        .btn {
            padding: 8px 16px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin-right: 10px; /* Space between buttons */
        }
        .btn:hover {
            background-color: #555;
        }
        .return-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        .return-link:hover {
            background-color: #555;
        }
        th.action {
            width: 300px; /* Adjust this value as needed */
        }
    </style>
</head>
<body>
    <header>
        <h1>GYM Management System</h1>
    </header>
    <div class="container">
        <h1>All Slots</h1>
        <table>
            <tr>
                <th>Slot Number</th>
                <th>Slot Timings</th>
                <th>Slot Price</th>
                <th class="action">Action</th>
            </tr>
            <c:forEach items="${slotList}" var="slot">
                <tr>
                    <td>${slot.slotId}</td>
                    <td>${slot.slotTime}</td>
                    <td>${slot.pricing}</td>
                    <td>
                        <a href="/slot/edit/${slot.slotId}" class="btn">Edit</a>
                        <a href="/slot-book/${slot.slotId}" class="btn">Slot Book for users</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <a class="return-link" href="/index">Return</a>
    </div>
</body>
</html>
