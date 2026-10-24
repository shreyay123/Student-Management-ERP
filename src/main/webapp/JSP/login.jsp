<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(to right, #4e73df, #1cc88a);
    }

    .login-card {
        background: #fff;
        border-radius: 12px;
        padding: 30px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.2);
    }

    .form-control {
        height: 50px;
    }

    .login-title {
        font-weight: 600;
        margin-bottom: 20px;
        text-align: center;
    }

    .error-msg {
        color: red;
        text-align: center;
        font-weight: 500;
    }
</style>

</head>

<body>

<section class="vh-100 d-flex align-items-center">
    <div class="container">
        <div class="row justify-content-center align-items-center">

            <!-- Image Section -->
            <div class="col-lg-6 d-none d-lg-block text-center">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                     class="img-fluid" style="max-width: 80%;">
            </div>

            <!-- Login Form -->
            <div class="col-lg-4 col-md-8">
                <div class="login-card">

                    <h3 class="login-title">Student Login</h3>

                    <p class="error-msg">${msg}</p>

                    <form action="/login" method="post">

                        <div class="mb-3">
                            <input type="text" name="username" class="form-control"
                                   placeholder="Enter Username" required>
                        </div>

                        <div class="mb-4">
                            <input type="password" name="password" class="form-control"
                                   placeholder="Enter Password" required>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-primary btn-lg">
                                Login
                            </button>
                        </div>

                    </form>

                </div>
            </div>

        </div>
    </div>
</section>

</body>
</html>
