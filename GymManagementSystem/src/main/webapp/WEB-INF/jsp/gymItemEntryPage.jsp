<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>        

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Gym Item</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 600px;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }
    h3 {
        text-align: center;
        color: #333;
        font-size: 24px;
        margin-bottom: 20px;
    }
    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    form label {
        margin-bottom: 10px;
    }
    form input[type="text"], form input[type="number"] {
        padding: 10px;
        margin-bottom: 15px;
        width: 100%;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }
    .form-buttons {
        display: flex;
        justify-content: center;
        margin-top: 20px;
    }
    .form-buttons button {
        padding: 12px 24px;
        background-color: #333;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        margin-right: 10px;
    }
    .form-buttons button[type="reset"] {
        background-color: #bbb;
        margin-right: 10px;
    }
    .form-buttons .return-link {
        padding: 12px 24px;
        background-color: #bbb;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        text-decoration: none;
        text-align: center;
    }
    .form-buttons button:hover, .form-buttons .return-link:hover {
        background-color: #555;
    }
</style>
<script>
    function validateForm() {
        var itemName = document.getElementById("itemName").value.trim();
        var totalSeat = document.getElementById("totalSeat").value.trim();

        // Validate Item Name (alphabets only)
        var itemNamePattern = /^[A-Za-z ]+$/;
        if (!itemName.match(itemNamePattern)) {
            alert("Please enter only alphabetic characters for Item Name.");
            return false;
        }

        // Validate Total Seat/Slot (numeric only)
        var totalSeatPattern = /^\d+$/;
        if (!totalSeat.match(totalSeatPattern)) {
            alert("Please enter only numeric characters for Total Seat/Slot.");
            return false;
        }

        // Ensure fields are not empty
        if (itemName === "" || totalSeat === "") {
            alert("Please enter both Item Name and Total Seat/Slot.");
            return false;
        }

        return true;
    }
</script>
</head>
<body>
<div class="container">
    <h3>Add Gym Item</h3>
    <form:form action="/gymitem" method="post" modelAttribute="itemRecord" onsubmit="return validateForm()">
        <form:hidden path="itemId"/>
        
        <label for="itemName">Enter Item Name:</label>
        <form:input path="itemName" id="itemName" />

        <br/>
        
        <label for="totalSeat">Enter Total Seat/Slot:</label>
        <form:input path="totalSeat" id="totalSeat" />

        <br/><br/>
        
        <div class="form-buttons">
            <button type="submit">Submit</button>
            <button type="reset">Reset</button>
            <a class="return-link" href="/index">Home</a>
        </div>
    </form:form>
</div>

</body>
</html>
