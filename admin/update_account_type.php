<?php
// update_account_type.php

// Assuming you have a database connection, replace these values with your actual database credentials
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "agrisensedb";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the user ID from the AJAX request
$userID = $_POST['userID'];

// Update the account type for the user with the specified ID
$sqlUpdate = "UPDATE users
              SET accType = 'Premium'
              WHERE userID = $userID";

// Set the request value to 0 for the user with the specified ID
$sqlReq = "UPDATE users
              SET request = 0
              WHERE userID = $userID";

// Execute both queries
if ($conn->query($sqlUpdate) === TRUE && $conn->query($sqlReq) === TRUE) {
    echo "Account type updated successfully";

    // Close the connection
    $conn->close();

    // Reload the page using JavaScript
    echo "<script>location.reload();</script>";
} else {
    echo "Error updating account type: " . $conn->error;
}

// Close the connection
$conn->close();
?>
