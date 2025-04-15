<?php
session_start();
session_destroy();
header("Location: ../login.php"); // Adjust path to go back to the correct location
exit();

?>
