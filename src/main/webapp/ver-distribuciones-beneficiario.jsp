<%@page import="publicadores.DtBeneficiario"%>
<%@page import="publicadores.DtRepartidor"%>
<%@page import="publicadores.DtDonacion"%>
<%@page import="publicadores.DtAlimento"%>
<%@page import="publicadores.DtDistribucion"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ver distribuciones - Ayudemos</title>
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
        .distribucion-item {
            background-color: #ffffff;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
        }
        .form-select {
            max-width: 250px;
        }
    </style>
    <script>
        // Función que se llama cuando el filtro cambia
        function filtrarDistribuciones() {
            const estado = document.getElementById('estadoFiltro').value;
            const xhr = new XMLHttpRequest();
            xhr.open("GET", "VerDistribucionesBeneficiario?estado=" + estado, true);
            xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest"); // Indicar que es una solicitud AJAX
            xhr.onload = function() {
                if (xhr.status === 200) {
                    document.getElementById('listaDistribuciones').innerHTML = xhr.responseText;
                } else {
                    alert("Error al cargar las distribuciones.");
                }
            };
            xhr.send();
        }
    </script>
</head>
<body>
    <header class="custom-header text-white p-4 position-relative d-flex justify-content-between align-items-center">
        <a href="beneficiario.jsp" class="btn btn-outline-light">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M19 12H5M12 19l-7-7 7-7"/>
            </svg>
        </a>
        <h1 class="text-center m-0 flex-grow-1">Ayudemos</h1>
        <div style="width: 24px;"></div> <!-- Spacer for alignment -->
        <div class="dropdown">
            <button class="btn btn-outline-light dropdown-toggle" type="button" id="profileDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="imagenes/mclovin.jpg" alt="Foto de perfil" class="rounded-circle me-2" width="40" height="40">
                <span><%= session.getAttribute("useremail") %></span>
            </button>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="profileDropdown">
                <li><a class="dropdown-item" href="/asd/VerPerfilBeneficiario">Ver perfil</a></li>
                <li><a class="dropdown-item" href="#">Modificar datos</a></li>
                <li><a class="dropdown-item" href="/asd/Logout">Cerrar sesión</a></li>
            </ul>
        </div>    
    </header>

    <main class="container mt-4">
        <div class="profile-section">
            <h2>Distribuciones asociadas a <%= session.getAttribute("useremail") %>:</h2>

            <!-- Dropdown para filtrar por estado -->
            <div class="mb-3">
                <label for="estadoFiltro" class="form-label">Filtrar por estado:</label>
                <select id="estadoFiltro" class="form-select" onchange="filtrarDistribuciones()">
                    <option value="">Todos</option>
                    <option value="PENDIENTE">Pendiente</option>
                    <option value="EN_CAMINO">En Camino</option>
                    <option value="ENTREGADO">Entregado</option>
                </select>
            </div>

            <!-- Aquí se cargarán las distribuciones filtradas -->
            <div id="listaDistribuciones">
                <% 
                    // Este contenido solo se renderiza cuando no es una solicitud AJAX
                    ArrayList<DtDistribucion> distribuciones = (ArrayList<DtDistribucion>) request.getAttribute("distribuciones");
                    ArrayList<String> descripciones = (ArrayList<String>) request.getAttribute("descripciones");
                    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

                    if (distribuciones != null) {
                        for (int i = 0; i < distribuciones.size(); i++) {
                            DtDistribucion d = distribuciones.get(i);
                %>
                <div class="distribucion-item">
                    <p><strong>Id de distribución:</strong> <%= d.getId() %></p>
                    <p><strong>Fecha de preparación:</strong> <%= sdf.format(d.getFechaPreparacion().getTime()) %></p>
                    <p><strong>Fecha de entrega:</strong> <%= sdf.format(d.getFechaEntrega().getTime()) %></p>
                    <p><strong>Estado:</strong> <%= d.getEstado() %></p>
                    <p><strong>Id de donación asociada:</strong> <%= d.getDonacion().getId() %></p>
                    <p><strong>Descripción de la donación:</strong> <%= descripciones.get(i) %></p>
                </div>
                <% 
                        }
                    } else { 
                %>
                    <p>No hay distribuciones disponibles.</p>
                <% } %>
            </div>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
