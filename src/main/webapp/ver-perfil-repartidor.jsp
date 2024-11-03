<%@page import="publicadores.DtBeneficiario"%>
<%@page import="publicadores.DtRepartidor"%>
<%@page import="publicadores.DtDonacion"%>
<%@page import="publicadores.DtAlimento"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ver Perfil - Ayudemos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .custom-header {
            background-color: #44a662;
            height: 70px;
            display: flex;
            align-items: center;
            padding: 0 15px;
        }
        .profile-section {
            background-color: #f8f9fa;
            border-radius: 8px;
            padding: 20px;
            margin-top: 20px;
        }
        .profile-field {
            margin-bottom: 15px;
        }
        .profile-label {
            font-weight: bold;
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
    <header class="custom-header text-white p-4 position-relative d-flex justify-content-between align-items-center">
        <a href="repartidor.jsp" class="btn btn-outline-light">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
        </a>
        <h1 class="text-center m-0 flex-grow-1">Ayudemos</h1>
        <div style="width: 24px;"></div> <!-- Spacer for alignment -->
        <div class="dropdown">
            <button class="btn btn-outline-light dropdown-toggle" type="button" id="profileDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="imagenes/mclovin.jpg" alt="Foto de perfil" class="rounded-circle me-2" width="40" height="40">
                <span><%= session.getAttribute("useremail") %></span>
            </button>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="profileDropdown">
                <li><a class="dropdown-item" href="/asd/VerPerfilRepartidor">Ver perfil</a></li>
                <li><a class="dropdown-item" href="#">Modificar datos</a></li>
				<li><a class="dropdown-item" href="/asd/Logout">Cerrar sesión</a></li>
            </ul>
        </div>
    </header>

    <main class="container mt-4">
        <div class="profile-section">
            <h2 class="mb-4">Información de perfil</h2>
            <div id="profileData">
                <!-- Mostrar los datos del perfil del beneficiario -->
                <div class="profile-field">
                    <div class="profile-label">Nombre:</div>
                    <div><% 
                    	DtRepartidor repartidor = (DtRepartidor) request.getAttribute("dtrep");
                    	out.print(repartidor.getNombre());
			        %></div>
                </div>
                <div class="profile-field">
                    <div class="profile-label">Email:</div>
                    <div><% 
                    	out.print(repartidor.getEmail());
			        %></div>
                </div>
                <div class="profile-field">
                    <div class="profile-label">Número de licencia:</div>
                    <div><% 
                    	out.print(repartidor.getNumeroDeLicencia());
			        %></div>
            	</div>
            </div>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
