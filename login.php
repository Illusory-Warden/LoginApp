<?php
session_start();
include 'db.php';

$uid = $_POST['uid'];
$pass = $_POST['password'];

$sql = "SELECT * FROM students WHERE Student_UID = '$uid'";
$result = $conn->query($sql);

if ($result->num_rows === 1) {
    $row = $result->fetch_assoc();
    $stored_hashed_password = $row['password'];

    if (password_verify($pass, $stored_hashed_password)) {
        $_SESSION['uid'] = $uid;
        header("Location: welcome.php");
        exit();
    } else {
        echo "❌ Incorrect password. <a href='index.html'>Try again</a>";
    }
} else {
    echo "❌ UID not found. <a href='index.html'>Try again</a>";
}
?>
