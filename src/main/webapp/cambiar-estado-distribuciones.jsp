<%@page import="publicadores.DtBeneficiario"%>
<%@page import="publicadores.DtRepartidor"%>
<%@page import="publicadores.DtDonacion"%>
<%@page import="publicadores.DtAlimento"%>
<%@page import="publicadores.DtDistribucion"%>
<%@page import="publicadores.EstadoDistribucion"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cambiar estado de distribuciones - Ayudemos</title>
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
				<li><a class="dropdown-item" href="/asd/Logout">Cerrar sesi�n</a></li>
            </ul>
        </div>    
    </header>

    <main class="container mt-4">
        <div class="profile-section">
            <h2 class="mb-4">Distribuciones:</h2>
            <div id="profileData">
                <!-- Mostrar los datos del perfil del beneficiario -->
                
                <% 
                   	ArrayList<DtDistribucion> distribuciones = (ArrayList<DtDistribucion>) request.getAttribute("distribuciones");
                	ArrayList<String> descripciones = (ArrayList<String>) request.getAttribute("descripciones");
                	int i = 0;
                   	for (DtDistribucion d : distribuciones){	
                 	%>
                 	<div class="distribucion-item">
                 	<div class="profile-field">
                 	<p class="card-text"><strong>Id:</strong> <% out.print(d.getId());%></p>
                	</div>
                	
                <div class="profile-field">
                 <div><%
	                    Calendar fechaPreparacion = d.getFechaPreparacion();
	                    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	                    String fechaFormateada = sdf.format(fechaPreparacion.getTime());
			        %></div>
                <p class="card-text"><strong>Fecha de preparaci�n:</strong> <% out.print(fechaFormateada); %></p>
                </div>

        		<div class="profile-field">
        		<p class="card-text"><strong>Email del beneficiario asociado:</strong> <% out.print(d.getBeneficiario().getEmail()); %></p>
        		</div>

        		<div class="profile-field">
        		<p class="card-text"><strong>Id de donaci�n asociada:</strong> <% out.print(d.getDonacion().getId()); %></p>
			        </div>
			        
			    <div class="profile-field">
			    <p class="card-text"><strong>Descripci�n de la donaci�n:</strong> <% out.print(descripciones.get(i)); %></p>
                    <div><% 
                    	i++;
			        %></div>
			        </div>
			    <div class="profile-field">
			    <p class="card-text"><strong>Estado:</strong> <% out.print(d.getEstado()); %></p>
        		</div>
        		<% 
        		if (d.getEstado() != EstadoDistribucion.ENTREGADO){
        		
				    int distribucionId = d.getId();
				%>

		
				    <form action="/asd/ContinuarCambiarEstadoDistribucion" method="post">
				        <input type="hidden" name="distribucionId" value="<%= distribucionId %>">
				        <button type="submit" class="btn btn-secondary">Cambiar Estado</button>
				    </form>
				<% } %>

			        </div>
			    <% } %>
			    
        		
        	</div>
        	
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>