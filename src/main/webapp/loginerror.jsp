<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión - Ayudemos.uy</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f4f6;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .error-message {
            background-color: #fee2e2;
            border: 1px solid #f87171;
            color: #b91c1c;
            padding: 0.75rem;
            border-radius: 0.25rem;
            margin-bottom: 1rem;
            text-align: center;
            width: 100%;
            max-width: 400px;
        }
        .login-container {
            background-color: white;
            padding: 2rem;
            border-radius: 0.5rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            position: relative;
        }
        h1 {
            text-align: center;
            color: #1f2937;
            margin-bottom: 2rem;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            font-size: 0.875rem;
            font-weight: 500;
            color: #374151;
            margin-bottom: 0.5rem;
        }
        input {
            padding: 0.5rem;
            border: 1px solid #d1d5db;
            border-radius: 0.25rem;
            margin-bottom: 1rem;
        }
        button {
            background-color: black;
            color: white;
            padding: 0.75rem;
            border: none;
            border-radius: 0.25rem;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.2s;
        }
        button:hover {
            background-color: #525252;
        }
        .back-button {
            position: absolute;
            top: 1rem;
            left: 1rem;
            background-color: transparent;
            color: #374151;
            border: none;
            cursor: pointer;
            display: flex;
            align-items: center;
            font-size: 0.875rem;
            padding: 0.5rem;
            transition: color 0.2s;
        }
        .back-button:hover {
            color: #1f2937;
        }
        .back-button i {
            margin-right: 0.5rem;
        }
    </style>
</head>
<body>
    <div class="error-message">
        Error. Por favor inicie sesión nuevamente.
    </div>
    <div class="login-container">
        <a href="index.jsp" class="back-button">
            <i class="fas fa-arrow-left"></i> Volver
        </a>
        <h1>Ayudemos.uy</h1>
        <form action="/asd/Login" method="POST">
            <label for="email">Correo electrónico</label>
            <input type="email" id="email" name="email" required placeholder="ejemplo@correo.com">

            <label for="password">Contraseña</label>
            <input type="password" id="password" name="password" required placeholder="••••••••">

            <button type="submit">Ingresar</button>
        </form>
    </div>
</body>
</html>