<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .error-card {
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
        padding: 60px;
        max-width: 800px;
        text-align: center;
    }
    .error-card h2 {
        color: #e74c3c;
        font-size: 2.5em;
        margin-bottom: 40px;
    }
    .error-card p {
        color: #333;
        font-size: 1.5em;
        margin-bottom: 40px;
    }
    .return-button-container {
        text-align: center;
    }
    .button-link {
        background-color: #333;
        color: white;
        padding: 15px 30px;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s;
        font-size: 1em;
    }
    .button-link:hover {
        background-color: #e74c3c;
    }
</style>
</head>
<body>
    <div class="error-card">
        <h2>Error Occurred</h2>
        <p>${errorMessage}</p>
        <div class="return-button-container">
            <a class="button-link" href="/index">Return</a>
        </div>
    </div>
</body>
</html>
