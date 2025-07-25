<?php
include 'db.php';

$uid = $_POST['uid'];
$dob = $_POST['dob'];
$newpass = $_POST['newpass'];

// Hash the new password
$hashed = password_hash($newpass, PASSWORD_DEFAULT);

// Verify UID and DOB
$sql = "SELECT * FROM students WHERE Student_UID='$uid' AND DOB='$dob'";
$result = $conn->query($sql);

if ($result->num_rows === 1) {
    $update = "UPDATE students SET password='$hashed' WHERE Student_UID='$uid'";
    if ($conn->query($update) === TRUE) {
        echo "✅ Password reset successful! <a href='index.html'>Login Now</a>";
    } else {
        echo "❌ Could not update password. Try again.";
    }
} else {
    echo "❌ UID and DOB did not match. <a href='forgot.html'>Try again</a>";
}
?>
