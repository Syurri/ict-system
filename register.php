<?php
session_start();
include("database.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $pengguna = $_POST['pengguna'];
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password']; // Store password as plain text
    $confirm_password = $_POST['confirm_password'];
    $jawatan = $_POST['jawatan'];
    $unit = $_POST['unit'];
    $no_tell = $_POST['no_tell'];
    $no_tell_pej = $_POST['no_tell_pej'];

    // Ensure passwords match
    if ($password !== $confirm_password) {
        echo "<script>alert('Passwords do not match! Please try again.'); window.history.back();</script>";
        exit();
    }

    // Ensure password meets security requirements
    $regex = "/^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,}$/";
    if (!preg_match($regex, $password)) {
        echo "<script>alert('Password must have at least 8 characters, include a capital letter, a number, and a special character.'); window.history.back();</script>";
        exit();
    }

    $sql = "INSERT INTO user (pengguna, username, email, password, jawatan, unit, no_tell, no_tell_pej) 
            VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "ssssssss", $pengguna, $username, $email, $password, $jawatan, $unit, $no_tell, $no_tell_pej);
    
    if (mysqli_stmt_execute($stmt)) {
        echo "<script>alert('Data anda telah disimpan dan boleh login sekarang'); window.location.href = 'login.php';</script>";
    } else {
        echo "<script>alert('Pendaftaran gagal! Sila cuba lagi.');</script>";
    }
    
    mysqli_stmt_close($stmt);
    mysqli_close($conn);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Daftar Pengguna</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script>
        function togglePassword() {
            var passwordField = document.getElementById("password");
            var confirmPasswordField = document.getElementById("confirm_password");
            var toggleIcon = document.getElementById("toggleIcon");

            if (passwordField.type === "password") {
                passwordField.type = "text";
                confirmPasswordField.type = "text";
                toggleIcon.classList.remove("fa-eye");
                toggleIcon.classList.add("fa-eye-slash");
            } else {
                passwordField.type = "password";
                confirmPasswordField.type = "password";
                toggleIcon.classList.remove("fa-eye-slash");
                toggleIcon.classList.add("fa-eye");
            }
        }
    </script>
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow p-4">
            <h2 class="text-center text-primary">Daftar Pengguna</h2>
            <form action="register.php" method="post">
                <div class="form-group">
                    <label>Pengguna:</label>
                    <input type="text" name="pengguna" class="form-control" placeholder="Nama Penuh" required>
                </div>
                
                <div class="form-group">
                    <label>Username:</label>
                    <input type="text" name="username" class="form-control" placeholder="AhmadAli123" required>
                </div>
                
                <div class="form-group">
                    <label>Email:</label>
                    <input type="email" name="email" class="form-control" placeholder="example@email.com" required>
                </div>
                
                <div class="form-group">
                    <label>Password:</label>
                    <div class="input-group">
                        <input type="password" name="password" id="password" class="form-control" required>
                        <div class="input-group-append">
                            <span class="input-group-text" onclick="togglePassword()" style="cursor:pointer;">
                                <i id="toggleIcon" class="fas fa-eye"></i>
                            </span>
                        </div>
                    </div>
                    <small class="form-text text-muted">Password must have at least 8 characters, include a capital letter, a number, and a special character.</small>
                </div>

                <div class="form-group">
                    <label>Confirm Password:</label>
                    <input type="password" name="confirm_password" id="confirm_password" class="form-control" required>
                </div>

                <div class="form-group">
                    <label>Jawatan:</label>
                    <input type="text" name="jawatan" class="form-control" placeholder="Pegawai ICT">
                </div>
                
                <div class="form-group">
                    <label>Unit:</label>
                    <input type="text" name="unit" class="form-control" placeholder="ICT Unit">
                </div>
                
                <div class="form-group">
                    <label>No Telefon:</label>
                    <input type="text" name="no_tell" class="form-control" placeholder="012-3456789">
                </div>
                
                <div class="form-group">
                    <label>No Telefon Pejabat:</label>
                    <input type="text" name="no_tell_pej" class="form-control" placeholder="03-12345678">
                </div>
                
                <button type="submit" class="btn btn-primary btn-block">Daftar</button>
            </form>
        </div>
    </div><br>
</body>
</html>
