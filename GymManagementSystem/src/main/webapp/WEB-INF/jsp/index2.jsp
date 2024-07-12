<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gym Management</title>
    <style>
    /* Reset and base styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        /* Navbar styles */
        .navbar {
            position: relative; /* Ensure navbar is stacked above other content */
            z-index: 100; /* Higher z-index for navbar */
            display: flex;
            justify-content: space-between;
            background-color: #333;
            padding: 14px 20px;
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
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }
        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        /* Sliding images section styles */
        #sliding-images {
            width: 100%;
            overflow: hidden;
            position: relative;
            z-index: 1; /* Ensure the images are behind the navbar */
        }
        #sliding-images .slider {
            display: flex;
            transition: transform 0.5s ease;
        }
        #sliding-images .slider img {
            width: 100vw; /* Adjust as per your image dimensions */
            height: auto;
        }
        /* About section styles */
        #about {
            padding: 50px 0;
        }
        #about h2 {
            text-align: center;
            margin-bottom: 30px;
            font-family: 'Montserrat', sans-serif;
        }
        #about p {
            font-size: 1.2em;
            line-height: 1.6;
            text-align: center;
            margin: 0 auto;
            width: 80%;
        }
        /* Pricing section styles (sample content) */
        .pricing-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 30px;
            gap: 20px;
        }
        .pricing-card {
            flex: 1;
            max-width: 300px;
            text-align: center;
            padding: 20px;
            border: 1px solid #ccc;
            color: #fff;
            border-radius: 5px;
            margin: 10px;
            background-color: #333;
            box-shadow: 0px 0px 10px rgba(2, 2, 2, 0.3);
            transition: transform 0.3s ease;
        }
        .pricing-card:hover {
            transform: translateY(-10px);
        }
        .pricing-card h3 {
            font-size: 2em;
            margin-bottom: 10px;
            font-family: 'Montserrat', sans-serif;
        }
        .pricing-card p {
            font-size: 1.5em;
            margin-bottom: 20px;
            font-family: 'Montserrat', sans-serif;
        }
        .pricing-card ul {
            list-style: none;
            margin-bottom: 20px;
            padding: 0;
        }
        .pricing-card ul li {
            margin-bottom: 10px;
            animation: fadeInUp 1s ease forwards;
            opacity: 0;
        }
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .pricing-card .btn {
            background: #ff6600;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            border: none;
            transition: opacity 0.3s ease;
            border-radius: 5px;
            display: inline-block;
            font-family: 'Montserrat', sans-serif;
        }
        .pricing-card .btn:hover {
            opacity: 0.8;
        }
        /* Contact section styles */
        #contact {
            padding: 30px 0;
        }
        #contact h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        #contact .contact-details {
            text-align: center;
            margin-bottom: 30px;
        }
        #contact .contact-details p {
            margin-bottom: 10px;
        }
        .social-media {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
        }
        .social-media a {
            color: #333;
            font-size: 24px;
            text-decoration: none;
            transition: color 0.3s;
        }
        .social-media a:hover {
            color: #555;
        }
        .social-media a i {
            font-size: 1.2em;
        }
        .social-media a span {
            font-size: 1em;
            margin-left: 5px;
        }
        /* Feedback section styles */
        #feedback {
            background: #f9f9f9;
            padding: 30px 0;
            text-align: center;
        }
        #feedback h2 {
            margin-bottom: 30px;
        }
        #feedback .feedback-form {
            text-align: center;
        }
        #feedback .feedback-form input,
        #feedback .feedback-form textarea {
            width: 100%;
            max-width: 600px;
            padding: 10px;
            margin: 10px auto;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            display: block;
        }
        #feedback .feedback-form button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        #feedback .feedback-form button:hover {
            background-color: #555;
        }
        /* Footer styles */
        footer {
            background-color: #333;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        </style>

  
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>

<!-- Navbar Section -->
<div class="navbar">
    <div class="left">
        <a href="#">Gym Management</a>
    </div>
    <div class="right">
        <a href="#home">Home</a>
        
        <div class="dropdown">
            <a href="#slot">Slot Booking</a>
            <div class="dropdown-content">
              
                <a href="/slots">Book Slot</a>
                <a href="/bookings">View Booked Slot</a>
                <a href="/cancel-bookings">Cancel Booking</a>
                
            </div>
        </div>
       
        <a href="#pricing">Pricing</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
        <a href="#logout" onclick="logout()">Logout</a>
    </div>
</div>

<!-- Sliding Images Section -->
<section id="sliding-images">
    <div class="slider">
        <img src="/image/image1.jpg" alt="Image 1">
        <img src="/image/image2.jpg" alt="Image 2">
        <img src="/image/image3.jpg" alt="Image 3">
        <!-- Add more images as needed -->
    </div>
</section>

<!-- About Section -->
<section id="about">
    <div class="container">
        <h2>About Us</h2>
        <p>Welcome to BytesCoders Gym, where we empower gym owners and managers to take control of their business with ease and efficiency. 
        Our state-of-the-art software solution provides everything you need to manage memberships, schedule classes, process payments, and track attendance—all in one place. 
        Join us and transform your gym into a thriving community that members love to be part of. With our dedicated support team, we ensure you have all the tools you need to succeed.
         Get started today and see the difference!</p>
    </div>
</section>

<!-- Pricing Section (Sample content) -->
<section id="pricing">
    <div class="container">
        <h2 style="text-align:center;">Pricing</h2>
        <div class="pricing-cards">
            <div class="pricing-card">
                <h3>Gold Plan</h3>
                <p>$29.99/month</p>
                <ul>
                    <li>Membership Management</li>
                    <li>Class Scheduling</li>
                    <li>Attendance Tracking</li>
                </ul>
                <a href="#contact" class="btn">Get Started</a>
            </div>
            <div class="pricing-card">
                <h3>Silver Plan</h3>
                <p>$49.99/month</p>
                <ul>
                    <li>All Gold Plan Features</li>
                    <li>Payment Processing</li>
                    <li>Advanced Reporting</li>
                </ul>
                <a href="#contact" class="btn">Get Started</a>
            </div>
            <div class="pricing-card">
                <h3>Platinum Plan</h3>
                <p>$69.99/month</p>
                <ul>
                    <li>All Silver Plan Features</li>
                    <li>Personal Training</li>
                    <li>Custom Integrations</li>
                </ul>
                <a href="#contact" class="btn">Get Started</a>
            </div>
        </div>
    </div>
</section>

<!-- Contact Section -->
<section id="contact">
    <div class="container">
        <h2>Contact Us</h2>
        <div class="contact-details">
            <p>If you have any questions or inquiries, feel free to contact us using the following details:</p>
            <p><strong>Phone:</strong> +1 (123) 456-7890</p>
            <p><strong>Email:</strong> info@example.com</p>
            <p><strong>Address:</strong> 123 Main Street, City, Country</p>
            <p class="social-media">
                <a href="https://facebook.com" target="_blank"><i class="fab fa-facebook-f"></i> <span><b>Facebook</b></span></a>
                <a href="https://twitter.com" target="_blank"><i class="fab fa-twitter"></i> <span><b>Twitter</b></span></a>
                <a href="https://instagram.com" target="_blank"><i class="fab fa-instagram"></i> <span><b>Instagram</b></span></a>
            </p>
        </div> 
    </div>
</section>

<!-- Feedback Section -->
<section id="feedback">
    <div class="container">
        <h2>Feedback</h2>
        <p>We'd love to hear your feedback! Please share your thoughts with us:</p>
        <div class="feedback-form">
            <form action="/feedback" method="post">
                <input type="text" name="name" placeholder="Your Name" required><br>
                <input type="email" name="email" placeholder="Your Email" required><br>
                <textarea name="feedback" placeholder="Your Feedback" rows="4" required></textarea><br>
                <button type="submit">Submit Feedback</button>
            </form>
        </div>
    </div>
</section>

<!-- Footer Section -->
<footer>
    <div class="container">
        <p>&copy; 2024 BytesCoders Gym. All rights reserved.</p>
    </div>
</footer>

<script>
    let currentSlide = 0;

    function showSlide(index) {
        const slides = document.querySelectorAll('#sliding-images .slider img');
        if (slides.length === 0) return;

        slides.forEach((slide, i) => {
            slide.style.display = (i === index) ? 'block' : 'none';
        });
    }

    function nextSlide() {
        const slides = document.querySelectorAll('#sliding-images .slider img');
        if (slides.length === 0) return;

        currentSlide = (currentSlide + 1) % slides.length;
        showSlide(currentSlide);
    }

    document.addEventListener('DOMContentLoaded', (event) => {
        showSlide(currentSlide);  // Show the first slide
        setInterval(nextSlide, 2000);  // Change slide every 3 seconds

        // Debugging: Check if slides are loaded
        console.log('Slides loaded:', document.querySelectorAll('#sliding-images .slider img').length);
    });

    function logout() {
        window.location.href = "/logout";
    }
</script>

</body>
</html>
