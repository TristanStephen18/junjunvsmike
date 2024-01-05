<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
    }

    body {
        background: url('mapsbg.jpg') no-repeat fixed; background-size: cover;
    background-position: center;
      margin: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    #map-layer {
      margin: 20px 0px;
      margin-left: 50px;
      max-width: 900px;
      min-height: 400px;
    }
    .fields{
        margin-left: 50px;
    }
    .main-content{
        color: #fff;
        }

    #btnSelectLocation {
      background: #3878c7;
      padding: 10px 20px;
      border: #3672bb 1px solid;
      border-radius: 2px;
      color: #FFF;
      font-size: 0.9em;
      cursor: pointer;
      margin-left: 200px; /* Added margin to the button */
    }
    #btnSelectLocation:hover{
        background: #887ad8;
    }

  </style>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpnxeA77qzhKyYN8Jj1DXVAIOqZwuCcBM&callback=initMap" async defer></script>

<script type="text/javascript">
  var map;
  var geocoder;
  var marker; // Variable to store the marker
  var selectedLat;
  var selectedLng;

  function initMap() {
    var mapLayer = document.getElementById("map-layer");
    var centerCoordinates = new google.maps.LatLng(37.6, -95.665);
    var defaultOptions = { center: centerCoordinates, zoom: 4 };

    map = new google.maps.Map(mapLayer, defaultOptions);
    geocoder = new google.maps.Geocoder();

    var infoWindow = new google.maps.InfoWindow();

    google.maps.event.addListener(map, 'click', function (event) {
      document.getElementById("lat").value = event.latLng.lat();
      document.getElementById("long").value = event.latLng.lng();

      var lat = parseFloat(document.getElementById("lat").value);
      var lng = parseFloat(document.getElementById("long").value);
      var latlng = new google.maps.LatLng(lat, lng);

      geocoder.geocode({ 'location': latlng }, function (results, status) {
        if (status === google.maps.GeocoderStatus.OK) {
          if (results[0]) {
            document.getElementById("address").value = results[0].formatted_address;
            infoWindow.setContent(results[0].formatted_address);
            infoWindow.setPosition(latlng);
            infoWindow.open(map);
          }
        }
      });

      // Remove existing marker before adding a new one
      if (marker) {
        marker.setMap(null);
      }

      marker = addMarker(event.latLng, map);

      // Store selected latitude and longitude
      selectedLat = event.latLng.lat();
      selectedLng = event.latLng.lng();
    });

    function addMarker(location, map) {
      return new google.maps.Marker({
        position: location,
        map: map,
      });
    }

    window.initMap = initMap;
  }

</script>
</head>
<body>
  <?php require('sidenav.php'); ?>
  <div class="main-content">
  <script>
      function getQueryParam(name) {
        const urlParams = new URLSearchParams(window.location.search);
        return urlParams.get(name);
      }

      function selectLocation() {
        // Retrieve form values
        var latitude = parseFloat(document.getElementById('lat').value);
        var longitude = parseFloat(document.getElementById('long').value);

        // Construct query string
        var queryString = "?nitrogen=" + parseFloat(getQueryParam('nitrogen')) +
                          "&phosphorus=" + parseFloat(getQueryParam('phosphorus')) +
                          "&potassium=" + parseFloat(getQueryParam('potassium')) +
                          "&humidity=" + parseFloat(getQueryParam('humidity')) +
                          "&temperature=" + parseFloat(getQueryParam('temperature')) +
                          "&rainfall=" + parseFloat(getQueryParam('rainfall')) +
                          "&pH=" + parseFloat(getQueryParam('pH')) +
                          "&latitude=" + latitude +
                          "&longitude=" + longitude;

        // Redirect to cropsrecommended.php with the values as parameters
        window.location.href = "cropsrecommended.php" + queryString;
      }
    </script>
    <h1>Select your Location</h1>
    <div id="map-layer"></div>
<div class="fields">
    Latitude <input type="text" id="lat">
    Longitude <input type="text" id="long">
    <button id="btnSelectLocation" onClick="selectLocation()">Select Location</button>
    </div>
  </div>
</body>
</html>
