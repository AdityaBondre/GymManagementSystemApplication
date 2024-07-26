<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Feedback List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding-top: 60px; /* Ensures content is not hidden behind the fixed header */
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
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #333;
            color: #fff;
        }
        td.id, th.id {
            width: 10%;
        }
        td.name, th.name {
            width: 20%;
        }
        td.email, th.email {
            width: 20%;
        }
        td.message, th.message {
            width: 50%;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #fff;
            background-color: #333;
            padding: 10px 20px;
            border: 1px solid #333;
        }
        a:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <header>
        <h1>GYM Management System</h1>
    </header>
    <h1>Feedback List</h1>
    <table border="1">
        <thead>
            <tr>
                <th class="id">ID</th>
                <th class="name">Name</th>
                <th class="email">Email</th>
                <th class="message">Message</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="feedback" items="${feedbackList}">
                <tr>
                    <td class="id">${feedback.id}</td>
                    <td class="name">${feedback.name}</td>
                    <td class="email">${feedback.email}</td>
                    <td class="message">${feedback.message}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="/index">Return</a>
</body>
</html>
