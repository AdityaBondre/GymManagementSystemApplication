<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gym Item Report</title>
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
        .form-buttons {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .form-buttons a {
            padding: 12px 24px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-size: 16px;
            margin-right: 10px;
        }
        .form-buttons a:hover {
            background-color: #555;
        }
        .edit-link {
            color: #007BFF;
            text-decoration: none;
        }
        .edit-link:hover {
            text-decoration: underline;
        }
        @media (max-width: 768px) {
            .container {
                width: 90%;
                margin: 120px auto 30px;
            }
            th, td {
                padding: 8px;
            }
            .form-buttons a {
                padding: 10px 20px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
<header>
    <h1>GYM Management System</h1>
</header>
<div class="container">
    <h3>Gym Items Report</h3>
    <table>
        <tr>
            <th>Item ID</th>
            <th>Item Name</th>
            <th>Total Seats</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="item" items="${itemList}">
            <tr>
                <td>${item.itemId}</td>
                <td>${item.itemName}</td>
                <td>${item.totalSeat}</td>
                <td>
                    <a class="edit-link" href="/gymitem/edit/${item.itemId}">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <div class="form-buttons">
        <a href="/index">Return</a>
    </div>
</div>
</body>
</html>
