<?php
include 'db.php';

function generatePassword($uid) {
    // Same rule you used earlier
    $last3 = substr($uid, -3);
    return "Csbs@$last3";
}

$sql = "SELECT Student_UID FROM students";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $uid = $row['Student_UID'];
        $plain = generatePassword($uid);
        $hashed = password_hash($plain, PASSWORD_DEFAULT);

        $update = "UPDATE students SET password='$hashed' WHERE Student_UID='$uid'";
        $conn->query($update);
    }
    echo "✅ All passwords rehashed!";
} else {
    echo "❌ No students found.";
}
?>
