<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Saved Recommendations</title>
    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Poppins", sans-serif;
}

body {
    justify-content: center;
    align-items: center;
}
h2{
    text-transform: uppercase;
}
    </style>
</head>
<body>
    <?php require('sidenav.php');?>
    <div class="main-content">
        <h2><?php echo $_SESSION['username'];?>'s Saved Recommendations</h2>
        <div class="container-fluid mt--8">
            <div class="row">
                <div class="col">
                    <?php
                    $username = $_SESSION['username'];
                    $getUserIDQuery = "SELECT userID FROM users WHERE username = '$username'";
                    $result = mysqli_query($conn, $getUserIDQuery);

                    if ($result && $row = mysqli_fetch_assoc($result)) {
                        $userID = $row['userID'];

                        $getHistoryQuery = "SELECT inputID, predictedResult, certaintyLevel, dateTime, location FROM inputs WHERE userID = '$userID' ORDER BY dateTime DESC";
                        $historyResult = mysqli_query($conn, $getHistoryQuery);

                        if (mysqli_num_rows($historyResult) > 0) {
                            $currentDate = null;

                            while ($historyRow = mysqli_fetch_assoc($historyResult)) {
                                $date = date('Y-m-d', strtotime($historyRow['dateTime']));
                                if ($date != $currentDate) {
                                    echo '<h2 style="font-size: 17px; margin-top: 13px; font-weight: 700;">Date: ' . $date . '</h2>';
                                    $currentDate = $date;
                                }

                                echo '<a href="view.php?inputID=' . $historyRow['inputID'] . '" class="card-link">';
                                echo '<div class="card shadow mt-4" style="background-color: #DBF4DE;">'; // Set your desired background color
                                echo '<form method="post" action="delete_history.php">';
                                echo '<input type="hidden" name="inputID" value="' . $historyRow['inputID'] . '">';
                                echo '<div class="d-flex align-items-center" style="padding: 10px; margin-left: 10px; color: black">';
                                echo '<span>Crop Name: ' . $historyRow['predictedResult'] . '</span>';
                                echo '<span class="ml-8">Certainty Level: ' . $historyRow['certaintyLevel'] . '</span>';
                                echo '<button type="submit" name="delete" class="ml-auto btn btn-sm btn-danger">Delete</button>';
                                echo '</div>';
                                echo '<div class="table-responsive">';
                                echo '<table class="table align-items-center table-flush">';
                                echo '<thead class="thead-light">';
                                echo '<tr>';
                                echo '<th scope="col" style="font-size: 12px;">Location: '. $historyRow['location'] . '</th>';
                                echo '</tr>';
                                echo '</thead>';
                                echo '<tbody>';
                                echo '</tbody>';
                                echo '</table>';
                                echo '</div>';
                                echo '</form>';
                                echo '</div>';
                                echo '</a>';
                            }
                        } else {
                            // No recommendation history found
                            echo '<p>Your saved recommendations will appear hear</p>';
                        }
                    } else {
                        // Error in retrieving userID
                        echo "Error: Unable to retrieve userID.";
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
