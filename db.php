<?php
$servername = "localhost";
$username = "root";      // Change if different
$password = "roo1";          // Your MySQL password
$dbname = "CSBS_DATA";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
