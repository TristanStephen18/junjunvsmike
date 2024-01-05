<?php
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

// Fetch data from the "user" table
$sql = "SELECT * FROM users";
$result = $conn->query($sql);

// Close the connection
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Page</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- DataTables CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>

    <!-- DataTables JS -->
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
</head>
<body>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
            <h2>Admin Page</h2>
            <button class="btn btn-danger float-right" onclick="logout()">Logout</button>
            <hr>

            <!-- Table to display user data -->
            <table id="userTable" class="table table-striped">
                <thead>
                <tr>
                    <th>UserID</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Email</th>
                    <th>Number</th>
                    <th>Account Type</th>
                    <th>Request</th>
                    <th>Action</th> <!-- New column for the button -->
                </tr>
                </thead>
                <tbody>
                <?php
                // Loop through the fetched data and populate the table rows
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        $requestText = $row['request'] == 0 ? 'No request' : 'Requesting for premium';
                        $requestColor = $row['request'] == 0 ? 'bg-success' : 'bg-danger';

                        echo "<tr>
                                <td>{$row['userID']}</td>
                                <td>{$row['username']}</td>
                                <td>{$row['password']}</td>
                                <td>{$row['email']}</td>
                                <td>{$row['number']}</td>
                                <td>{$row['accType']}</td>
                                <td class='{$requestColor}'>{$requestText}</td>
                                <td><button class='btn btn-primary' onclick='changeAccountType({$row['userID']})'>Change Account Type</button></td>
                              </tr>";
                    }
                }
                ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script>
    // Logout function (you can replace this with your actual logout logic)
    function logout() {
        alert("Logout clicked. Add your logout logic here.");
        // Add your logout logic, for example, redirecting to the login page
    }

    // Function to change the account type using AJAX
    function changeAccountType(userID) {
        $.ajax({
            type: "POST",
            url: "update_account_type.php", // Create a PHP file to handle the update logic
            data: { userID: userID },
            success: function (response) {
                alert("Change account type for user ID " + userID);
                // Add any additional logic after successful update
            },
            error: function (error) {
                console.error("Error updating account type: " + error);
            }
        });
    }

    // Initialize DataTable
    $(document).ready(function () {
        $('#userTable').DataTable();
    });
</script>

</body>
</html>
