package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import publicadores.BeneficiarioNoExisteExc;
import publicadores.ControladorPublish;
import publicadores.ControladorPublishService;
import publicadores.ControladorPublishServiceLocator;
import publicadores.DtAlimento;
import publicadores.DtBeneficiario;
import publicadores.DtDonacion;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.xml.rpc.ServiceException;

/**
 * Servlet implementation class verPerfil
 */

//@WebServlet("/verPerfil")
public class verPerfil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public verPerfil() {
        super();
        
    }
   
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = 1; // ID de prueba
        ControladorPublishService cps = new ControladorPublishServiceLocator();
        ControladorPublish port = null;

        try {
            port = cps.getControladorPublishPort();
            if (port == null) {
                throw new RuntimeException("No se pudo obtener el puerto del controlador Publish.");
            }

            DtAlimento alimento = (DtAlimento) port.getDonacion(id);
            if (alimento == null) {
                throw new RuntimeException("Donación no encontrada para el ID: " + id);
            } else {
                System.out.println("Donación obtenida: ID = " + alimento.getId() + ", CantElementos = " + alimento.getCantElementos());
            }

            
            // Pasar la donación a la JSP
            request.setAttribute("donacion", alimento);
            System.out.println("Atributo donacion establecido en request");
            request.getRequestDispatcher("/ver-perfil.jsp").forward(request, response);
        
        } catch (Exception e) {
            e.printStackTrace(); // Imprimir la traza de la excepción en la consola para depuración
            request.setAttribute("errorMessage", e.getMessage()); // Pasar mensaje de error a la JSP
            request.getRequestDispatcher("/error.jsp").forward(request, response); // Redirigir a una página de error
        }
        
    }
	
    
    /*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    System.out.println("Iniciando prueba de conexión con el servicio...");
	
	    ControladorPublishService cps = new ControladorPublishServiceLocator();
	    ControladorPublish port = null;
	
	    try {
	        port = cps.getControladorPublishPort();
	        if (port == null) {
	            System.out.println("No se pudo obtener el puerto del servicio.");
	            throw new RuntimeException("No se pudo obtener el puerto del servicio.");
	        } else {
	            System.out.println("Puerto del servicio obtenido correctamente.");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        request.setAttribute("errorMessage", "Error al conectar con el servicio: " + e.getMessage());
	        request.getRequestDispatcher("/error.jsp").forward(request, response);
	        return;
	    }
	
	    // Si la conexión es exitosa, continua con el siguiente paso.
	}
*/
     

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

    
    public publicadores.DtAlimento getDonacion(int arg0) throws java.rmi.RemoteException, ServiceException {
		ControladorPublishService cps = new ControladorPublishServiceLocator();
		ControladorPublish port;
		port = cps.getControladorPublishPort();
		return (DtAlimento) port.getDonacion(1);
	}
    
}
