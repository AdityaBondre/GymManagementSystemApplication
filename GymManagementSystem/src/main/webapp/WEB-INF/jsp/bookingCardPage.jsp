<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gym Booking Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding-top: 100px; /* Space for fixed header */
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            box-sizing: border-box;
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
        .card {
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 400px;
            width: 100%;
            text-align: center;
        }
        .card h2 {
            color: #333;
            margin-bottom: 20px;
        }
        .card ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        .card li {
            margin-bottom: 15px;
            font-size: 16px;
        }
        .card li strong {
            width: 120px;
            display: inline-block;
            text-align: left;
        }
        .card button, .card .button-link {
            background-color: #333;
            color: white;
            border: none;
            border-radius: 8px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-top: 10px;
        }
        .card button:hover, .card .button-link:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <header>
        <h1>GYM Management System</h1>
    </header>
    <div class="card">
        <h2>Gym Booking Confirmation</h2>
        <ul>
            <li><strong>Booking ID:</strong> ${booking.bookingId}</li>
            <li><strong>User ID:</strong> ${booking.username}</li>
            <li><strong>Slot ID:</strong> ${booking.slotId}</li>
            <li><strong>Item ID:</strong> ${booking.itemId}</li>
            <!-- Add more details as needed -->
        </ul>
        <button onclick="window.print()">Print Confirmation</button>
        <a class="button-link" href="/index">Return</a>
    </div>
</body>
</html>
