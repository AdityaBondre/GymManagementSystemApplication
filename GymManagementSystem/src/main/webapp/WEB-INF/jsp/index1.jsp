<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Gym Management</title>
    <style>
        /* Reset and base styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        /* Navbar styles */
        .navbar {
            position: fixed; 
            top: 0;
            left: 0;
            right: 0;
            z-index: 100; 
            display: flex;
            justify-content: space-between;
            background-color: #333;
            padding: 14px 20px;
            color: white;
        }
        .navbar a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            text-align: center;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        /* Sidebar styles */
        .sidebar {
            width: 250px;
            background-color: #333;
            color: white;
            padding-top: 20px;
            position: fixed;
            height: 100%;
            top: 50px; /* Adjusted to align with the navbar */
            left: 0;
            overflow-y: auto;
            box-shadow: 2px 0 5px rgba(0,0,0,0.1);
        }
        .sidebar a {
            padding: 15px;
            text-decoration: none;
            color: white;
            display: block;
            text-align: center;
        }
        .sidebar a:hover {
            background-color: #575757;
        }
        /* Content styles */
        .content {
            margin-top: 60px; /* Adjust margin to accommodate fixed navbar */
            margin-left: 250px;
            padding: 20px;
            overflow: hidden; /* Ensures content doesn't overflow */
        }
        .content h1 {
            font-family: 'Montserrat', sans-serif;
            color: #333;
            margin-bottom: 20px;
        }
        .card {
            background: #fff;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            width: 80%;
            margin: 0 auto; /* Center the card */
        }
        .card img {
            width: 100%; /* Ensure the image fills the card */
            border-radius: 5px;
        }
        .sub-navbar {
            display: flex;
            justify-content: space-around;
            padding: 10px 0;
            background-color: #f1f1f1;
            margin-bottom: 20px;
        }
        .sub-navbar a {
            text-decoration: none;
            color: #333;
            padding: 10px;
            border-radius: 5px;
        }
        .sub-navbar a:hover {
            background-color: #ddd;
        }
        /* Flexbox for cards */
        .flex-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .flex-item {
            flex: 1 0 48%;
            margin-bottom: 20px;
            display: flex;
            justify-content: center;
        }
        @media (max-width: 768px) {
            .flex-item {
                flex: 1 0 100%;
            }
            .card {
                width: 90%;
            }
        }
        /* Footer styles */
        footer {
            background-color: #333;
            color: white;
            padding: 20px 0;
            text-align: center;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<!-- Navbar Section -->
<div class="navbar">
    <div class="left">
        <a href="#">Gym Management - Admin</a>
    </div>
    <div class="right">
        <a href="#home">Home</a>
        <a href="#logout" onclick="logout()">Logout</a>
    </div>
</div>

<!-- Sidebar Section -->
<div class="sidebar">
    <a href="#dashboard">Dashboard</a>
    <a href="#manage-items">Manage Gym Item</a>
    <a href="#manage-slots">Manage Slot</a>
    <a href="#logout" onclick="logout()">Logout</a>
</div>

<!-- Content Section -->
<div class="content">
    <section id="dashboard">
        <h1>Dashboard</h1>
        <div class="card">
            <img src="/image/image101.jpeg" alt="Dashboard Image">
        </div>
    </section>
    <section id="manage-items">
        <h1>Manage Gym Item</h1>
        <div class="flex-container">
            <div class="flex-item">
                <div class="card">
                    <h2>Add Gym Item</h2>
                    <div class="sub-navbar">
                        <a href="/gymitem">Add Item</a>
                    </div>
                    <p>Add a new gym item to the inventory.</p>
                    <!-- Add gym item adding functionality here -->
                </div>
            </div>
            <div class="flex-item">
                <div class="card">
                    <h2>View Gym Items</h2>
                    <div class="sub-navbar">
                        <a href="/gymitems">View Items</a>
                    </div>
                    <p>View and manage existing gym items.</p>
                    <!-- Add gym item viewing functionality here -->
                </div>
            </div>
        </div>
    </section>
    <section id="manage-slots">
        <h1>Manage Slot</h1>
        <div class="flex-container">
            <div class="flex-item">
                <div class="card">
                    <h2>Add Slot</h2>
                    <div class="sub-navbar">
                        <a href="/slot">Add Slot</a>
                    </div>
                    <p>Add a new slot for gym sessions.</p>
                    <!-- Add slot adding functionality here -->
                </div>
            </div>
            <div class="flex-item">
                <div class="card">
                    <h2>View Slots</h2>
                    <div class="sub-navbar">
                        <a href="/slots">View Slots & Book</a>
                    </div>
                    <p>View, book and manage existing gym slots.</p>
                    <!-- Add slot viewing functionality here -->
                </div>
            </div>
            <div class="flex-item">
                <div class="card">
                    <h2>Booking Report</h2>
                    <div class="sub-navbar">
                        <a href="/bookings">View Report</a>
                    </div>
                    <p>View detailed booking reports.</p>
                    <!-- Add booking report functionality here -->
                </div>
            </div>
            <div class="flex-item">
                <div class="card">
                    <h2>Booking Cancellation</h2>
                    <div class="sub-navbar">
                        <a href="/cancel-bookings">Cancel Booking</a>
                    </div>
                    <p>Cancel existing bookings.</p>
                    <!-- Add booking cancellation functionality here -->
                </div>
            </div>
        </div>
    </section>
</div>

<!-- Footer Section -->
<footer>
    <p>&copy; 2024 BytesCoders Gym. All rights reserved.</p>
</footer>

<script>
    function logout() {
        window.location.href = "/logout";
    }
</script>

</body>
</html>
 