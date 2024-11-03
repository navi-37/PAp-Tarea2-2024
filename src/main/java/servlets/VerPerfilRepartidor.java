package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import publicadores.ControladorPublish;
import publicadores.ControladorPublishService;
import publicadores.ControladorPublishServiceLocator;
import publicadores.DtRepartidor;
import java.io.IOException;
import javax.xml.rpc.ServiceException;

@WebServlet("/VerPerfilRepartidor")
public class VerPerfilRepartidor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public VerPerfilRepartidor() {
        super();
        
    }
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = (String) request.getSession().getAttribute("useremail");
        ControladorPublishService cps = new ControladorPublishServiceLocator();
        ControladorPublish port = null;

        try {
            port = cps.getControladorPublishPort();
            if (port == null) {
                throw new RuntimeException("No se pudo obtener el puerto del controlador Publish.");
            }

            DtRepartidor rep = (DtRepartidor) port.getRepartidor(email);
            if (rep == null) {
                throw new RuntimeException("Donación no encontrada para el email: " + email);
            } 

            // Pasar la donación a la JSP
            request.setAttribute("dtrep", rep);
            //System.out.println("Atributo donacion establecido en request");
            request.getRequestDispatcher("/ver-perfil-repartidor.jsp").forward(request, response);
        
        } catch (Exception e) {
            e.printStackTrace(); // Imprimir la traza de la excepción en la consola para depuración
            request.setAttribute("errorMessage", e.getMessage()); // Pasar mensaje de error a la JSP
            request.getRequestDispatcher("/error.jsp").forward(request, response); // Redirigir a una página de error
        }
        
    }
	 
    public publicadores.DtRepartidor getRepartidor(String arg0) throws java.rmi.RemoteException, ServiceException {
		ControladorPublishService cps = new ControladorPublishServiceLocator();
		ControladorPublish port;
		port = cps.getControladorPublishPort();
		return (DtRepartidor) port.getRepartidor(arg0);
	} 
}
