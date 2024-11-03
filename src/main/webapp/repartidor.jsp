<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ayudemos.uy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .offcanvas {
            width: 250px;
        }
        @media (min-width: 768px) {
            .offcanvas {
                width: 300px;
            }
        }
        .menu-button {
            z-index: 1030;
        }
        .carousel-inner {
            max-height: 600px;
        }
        .carousel-item img {
            object-fit: cover;
            height: 600px;
        }
        .dropdown-toggle::after {
            display: none;
        }
        .custom-header {
            background-color: #44a662; /* Puedes cambiar este color por el que prefieras */
            height: 70px;
            display: flex;
            align-items: center;
            padding: 0 15px;
        }
        .custom-menu-link {
	   	 	color: #000000;
	   	 	text-decoration: none;
		}
		.custom-menu-link:hover {
    		color: #525252; 
		}
    </style>
</head>
<body>
<%
	if(session.getAttribute("useremail") == null) {
		response.sendRedirect("login.jsp");
	}
%>
    <header class="custom-header text-white p-4 position-relative d-flex justify-content-between align-items-center">
        <button class="btn btn-outline-light menu-button" type="button" data-bs-toggle="offcanvas" data-bs-target="#sidebar">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
        </button>
        <h1 class="text-center m-0 flex-grow-1">Ayudemos</h1>
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

    <div class="offcanvas offcanvas-start" tabindex="-1" id="sidebar">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title">Menú</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <nav>
                <ul class="nav flex-column">
                    <li class="nav-item"><a href="/asd/VerDistribucionesRepartidor" class="nav-link custom-menu-link">Ver distribuciones</a></li>
                    <li class="nav-item"><a href="#" class="nav-link custom-menu-link">Cambiar estado de distribución</a></li>
					<li class="nav-item"><a href="#" class="nav-link custom-menu-link">Filtrar distribuciones por zona</a></li>
                </ul>
            </nav>
        </div>
    </div>

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
