
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
    <style>
        /* CSS Styles */
 body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: white;
            padding: 15px;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 24px;
        }

        .header-nav {
            text-align: center;
            margin: 20px 0;
        }

        .header-nav a {
            color: #333;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
        }

        .header-nav a:hover {
            text-decoration: underline;
        }

        h1.page-title {
            text-align: center;
            color: #333;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
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

        form {
            text-align: center;
            margin: 20px;
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
    <h1>All Users</h1>
    
    
   
    
    <form action="${pageContext.request.contextPath}/delete-user" method="post" >
        <table border="1">
            <thead>
                <tr>
                    <th>Username</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Type</th>
                    <th>Select</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${userList}">
                    <tr>
                        <td>${user.username}</td>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.email}</td>
                        <td>${user.type}</td>
                        <td><input type="radio" name="selectedUser" value="${user.username}"></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="return-button-container">
        <button type="submit">Delete Selected User</button>
       
        <a class="button-link" href="/index">Return</a>
    </div>
        
        
   
    </form>
</body>
</html>
