<%@ page import="publicadores.DtBeneficiario"%>
<%@ page import="publicadores.DtRepartidor"%>

<%@ page import="publicadores.BeneficiarioNoExisteExc"%>
<%@ page import="publicadores.RepartidorNoExisteExc"%>

<%@ page import="publicadores.ControladorPublish"%>
<%@ page import="publicadores.ControladorPublishService"%>
<%@ page import="publicadores.ControladorPublishServiceLocator"%>

<%
String email = (String) request.getSession().getAttribute("useremail");
System.out.println(email);
if(email != null){
	
	ControladorPublishService cps = new ControladorPublishServiceLocator();
	ControladorPublish port = null;

	try {
	    port = cps.getControladorPublishPort();
	    if (port == null) {
	        throw new RuntimeException("No se pudo obtener el puerto del controlador Publish.");
	    }
	
	    
	    DtRepartidor rep = null;
        try {
            rep = (DtRepartidor) port.getRepartidor(email);
        } catch (RepartidorNoExisteExc e) {
            System.out.println("No se encontró un repartidor con el email proporcionado.");
        }

        if (rep != null) {
            System.out.println(rep.getEmail());
            System.out.println("Usuario identificado como repartidor, redirigiendo a repartidor.jsp");
            response.sendRedirect("repartidor.jsp");
            return;
        }
        
	    DtBeneficiario ben = null;
        try {
            ben = (DtBeneficiario) port.getBeneficiario(email);
        } catch (BeneficiarioNoExisteExc e) {
            System.out.println("No se encontró un repartidor con el email proporcionado.");
        }

        if (ben != null) {
            System.out.println(ben.getEmail());
            System.out.println("Usuario identificado como beneficiario, redirigiendo a beneficiario.jsp");
            response.sendRedirect("beneficiario.jsp");
            return;
        }
	    
	    
	    /*DtRepartidor rep = (DtRepartidor) port.getRepartidor(email);
	    if (rep != null) {
	        //throw new RuntimeException("sori");
	        System.out.println(rep.getEmail());
	        System.out.println("Usuario identificado como repartidor, redirigiendo a repartidor.jsp");
	    	response.sendRedirect("repartidor.jsp");
	    	return;
	    }
	    
	    DtBeneficiario ben = (DtBeneficiario) port.getBeneficiario(email);
	    if (ben != null) {
	        //throw new RuntimeException("sori");
	        System.out.println(ben.getEmail());
	        System.out.println("Usuario identificado como beneficiario, redirigiendo a beneficiario.jsp");
	    	response.sendRedirect("beneficiario.jsp");
	    	return;
	    } */
	
	} catch (Exception e) {
	    e.printStackTrace();
	}
}
%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ayudemos.uy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .carousel-inner {
            max-height: 600px;
        }
        .carousel-item img {
            object-fit: cover;
            height: 600px;
        }
        .custom-header {
            background-color: #44a662;
            height: 70px;
            display: flex;
            align-items: center;
            padding: 0 15px;
        }
    </style>
</head>
<body>
    <header class="custom-header text-white p-4 position-relative d-flex justify-content-between align-items-center">
        <div class="invisible">Placeholder</div>
        <h1 class="text-center m-0 flex-grow-1">Ayudemos</h1>
        <a href="login.jsp" class="btn btn-outline-light">
            Iniciar Sesión
        </a>
    </header>

    <main class="container mt-4">
        <div id="imageCarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="imagenes/gente1.jpg" class="d-block w-100" alt="Imagen 1">
                </div>
                <div class="carousel-item">
                    <img src="imagenes/gente2.jpg" class="d-block w-100" alt="Imagen 2">
                </div>
                <div class="carousel-item">
                    <img src="imagenes/gente3.jpg" class="d-block w-100" alt="Imagen 3">
                </div>
                <div class="carousel-item">
                    <img src="imagenes/gente4.jpg" class="d-block w-100" alt="Imagen 4">
                </div>
                <div class="carousel-item">
                    <img src="imagenes/gente5.jpg" class="d-block w-100" alt="Imagen 5">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#imageCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#imageCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Siguiente</span>
            </button>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var myCarousel = new bootstrap.Carousel(document.getElementById('imageCarousel'), {
                interval: 5000,
                wrap: true
            });
        });
    </script>
</body>
</html>