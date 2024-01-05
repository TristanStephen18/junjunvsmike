<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recommend</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/8fb3f1df9b.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets\css\recommendform.css">
    <style>
        .input-form{
            margin-top: 70px;
        }
    </style>
</head>
<body style="background: url('draftbg.jpg') no-repeat fixed; background-size: cover;
    background-position: center;">
    <?php
     require('sidenav.php');
    ?>

    <div class="main-content">
        <div class="input-form" style="background: #c0ccc388; width: 80%; height: 75vh;">
            <form action="" method="post">
                <h2>Agrisense Recommendation Form</h2>
                <div class="input-box">
            <label for="nitrogen">(<i class="fa-solid fa-n" style="color: #4d4ae7;"></i>)Nitrogen Level: </label>
            <input type="number" name="nitrogen" id="nitrogen" required>
            <label for="phosphorus">(<i class="fa-solid fa-p" style="color: #00000054;"></i>)Phosphorus Level: </label>
            <input type="number" name="phosphorus" id="phosphorus" required>
        </div>
        <div class="input-box">
            <label for="potassium">(<i class="fa-solid fa-k" style="color: #dceb15;"></i>)Potassium</label>
            <input type="number" name="potassium" id="potassium" required>
            <label for="humidity"><i class="fa-solid fa-umbrella" style="color: #4d4ae7;"></i>Humidity Level: </label>
            <input type="number" name="humidity" id="humidity" required>
        </div>
        <div class="input-box">
            <label for="temperature"><i class="fa-solid fa-temperature-low" style="color: #ec1919;"></i>Temperature: </label>
            <input type="number" name="temperature" id="temperature" required>
            <label for="rainfall"><i class="fa-solid fa-cloud-rain" style="color: #69a2e2;"></i>Rainfall Level: </label>
            <input type="number" name="rainfall" id="rainfall" required>
        </div>
        <div class="input-box">
            <label for="pH"><i class="fa-solid fa-flask" style="color: #00ffd5;"></i>pH (Acidity Level):</label>
            <input type="number" name="pH" id="pH" required>
            <button type="button" onclick="submitForm()" class="recommendbutton" style="color: #fff;">
                    Recommend<i class="fa-solid fa-arrow-right"></i>
                </button>
                </div>
            </form>
        </div>
    </div>

<!--<?php

if (isset($_POST['recommend'])) {
    $nitrogen = isset($_POST['nitrogen']) ? $_POST['nitrogen'] : null;
    $phosphorus = isset($_POST['phosphorus']) ? $_POST['phosphorus'] : null;
    $potassium = isset($_POST['potassium']) ? $_POST['potassium'] : null;
    $humidity = isset($_POST['humidity']) ? $_POST['humidity'] : null;
    $temperature = isset($_POST['temperature']) ? $_POST['temperature'] : null;
    $rainfall = isset($_POST['rainfall']) ? $_POST['rainfall'] : null;
    $ph = isset($_POST['ph']) ? $_POST['ph'] : null;

    $_SESSION['recommendation_data'] = [
        'nitrogen' => $nitrogen,
        'phosphorus' => $phosphorus,
        'potassium' => $potassium,
        'humidity' => $humidity,
        'temperature' => $temperature,
        'rainfall' => $rainfall,
        'ph' => $ph,
    ];

    header('Location: addressmap.php');
    exit();
}
?>-->

<script>
function submitForm() {
    // Retrieve form values
    var nitrogen = document.getElementById('nitrogen').value;
    var phosphorus = document.getElementById('phosphorus').value;
    var potassium = document.getElementById('potassium').value;
    var humidity = document.getElementById('humidity').value;
    var temperature = document.getElementById('temperature').value;
    var rainfall = document.getElementById('rainfall').value;
    var pH = document.getElementById('pH').value;

    // Check if required fields are not empty
    if (nitrogen === '' || phosphorus === '' || potassium === '' || humidity === '' || temperature === '' || rainfall === '' || pH === '') {
        alert("Please fill in all required fields.");
        return;
    }

    // Construct query string
    // Construct query string
var queryString = "?nitrogen=" + encodeURIComponent(parseFloat(nitrogen))
    + "&phosphorus=" + encodeURIComponent(parseFloat(phosphorus, 10))
    + "&potassium=" + encodeURIComponent(parseFloat(potassium, 10))
    + "&humidity=" + encodeURIComponent(parseFloat(humidity, 10))
    + "&temperature=" + encodeURIComponent(parseFloat(temperature))
    + "&rainfall=" + encodeURIComponent(parseFloat(rainfall))
    + "&pH=" + encodeURIComponent(parseFloat(pH));


    // Redirect to addressmap.php with the values as parameters
    window.location.href = "addressmap.php" + queryString;
}
</script>
</body>
</html>
