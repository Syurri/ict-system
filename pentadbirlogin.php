<?php
session_start();
include("database.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

   // Fetch user details except for admin
    $query = "SELECT * FROM admin WHERE username = ?";
    $stmt = mysqli_prepare($conn, $query);
    mysqli_stmt_bind_param($stmt, 's', $username);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);

    if ($row = mysqli_fetch_assoc($result)) {
        $storedPassword = $row['password'];

        // Verify password
        if (password_verify($password, $storedPassword) || $password === $storedPassword) {
            $_SESSION['username'] = $username;
            $_SESSION['role'] = $row['jawatan'];

            // Redirect based on role or user type
            if ($row['jawatan'] == "Pentadbir") {
                header("Location: admin/a-main.php");
            } else {
                header("Location: admin/a-main.php?user=" . urlencode($username));
            }
            exit();
        } else {
            echo "<script>alert('Kata laluan salah!'); window.location.href='login.php';</script>";
        }
    } else {
        echo "<script>alert('Pengguna tidak ditemui!'); window.location.href='login.php';</script>";
    }

    mysqli_stmt_close($stmt);
    mysqli_close($conn);
}
?>

<!DOCTYPE html>
<html lang="ms">
<head>
    <title>Log Masuk Pentadbir</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        function togglePassword() {
            var x = document.getElementById("password");
            x.type = (x.type === "password") ? "text" : "password";
        }
    </script>
    <style>
        body { background-color: #e9f1fa; }
        .container {
            max-width: 400px;
            margin-top: 50px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }
        .footer { text-align: center; margin-top: 20px; font-size: 12px; color: gray; }
        .admin-badge {
            float: right;
            background-color: #007bff;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
        }

        .logo {
            width: 100px; /* Adjust as needed */
            display: block;
            margin: 0 auto 10px;
        }
        .welcome-text {
            text-align: center;
            font-size: 18px;
            margin-bottom: 15px;
            font-weight: bold;
            font-family: verdana;
        }
          .welcome-text1 {
            text-align: center;
            font-size: 18px;
            margin-bottom: 15px;
            font-weight: bold;
            font-family: georgia;
        }

    </style>
</head>
<body>

    <br><img src="images/gevsb.png" alt="Logo" class="logo"> <!-- Replace with your logo path -->
        <div class="welcome-text">Selamat Datang di GLOBAL ELITE VENTURES SDN BHD</div>
        <div class="welcome-text1">Sistem Tempahan Peralatan ICT</div>

    <div class="container">

        <h3 class="text-center">
            Log Masuk Pentadbir
            <span class="admin-badge">Pentadbir</span>
        </h3>

        <?php if (isset($_SESSION['message'])): ?>
            <div class="alert alert-danger">
                <?= $_SESSION['message']; unset($_SESSION['message']); ?>
            </div>
        <?php endif; ?>

        <form method="post" action="">
            <div class="form-group">
                <label>Nama Pengguna (Admin)</label>
                <input type="text" name="username" class="form-control" required>
            </div>
            <div class="form-group">
                <label>Kata Laluan</label>
                <input type="password" name="password" id="password" class="form-control" required>
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" onclick="togglePassword()"> Tunjukkan Kata Laluan
            </div>
            <button type="submit" class="btn btn-primary btn-block mt-3">Log Masuk Pentadbir</button>
            <a href="login.php" class="btn btn-secondary btn-block mt-2">Log Masuk Pengguna Biasa</a>
        </form>
        <div class="footer">
            <p>© 2024 Pentadbir</p>
        </div>
    </div>
    <br>
</body>
</html>
