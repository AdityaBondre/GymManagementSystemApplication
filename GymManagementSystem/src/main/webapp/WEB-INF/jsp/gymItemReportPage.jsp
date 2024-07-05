<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>        
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Gym Item Report</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h3 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 2px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #333;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
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
    </style>
</head>
<body>
    <div class="container">
        <h3>Gym Items Report</h3>
        <table>
            <tr>
                <th>Item ID</th>
                <th>Item Name</th>
                <th>Total Seats</th>
                <th>Add To Slots</th>
            </tr>
            <c:forEach var="item" items="${itemList}">
                <tr>
                    <td>${item.itemId}</td>
                    <td>${item.itemName}</td>
                    <td>${item.totalSeat}</td>
                    <td><a href="/slot-item-add/${item.itemId}">Add To Slots</a></td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <a class="return-link" href="/index">Return</a>
        
    </div>
</body>
</html>

