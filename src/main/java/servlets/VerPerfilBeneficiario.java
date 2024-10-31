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

public class VerPerfilBeneficiario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public VerPerfilBeneficiario() {
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

            DtBeneficiario ben = (DtBeneficiario) port.getBeneficiario(email);
            if (ben == null) {
                throw new RuntimeException("Donación no encontrada para el email: " + email);
            } 

            // Pasar la donación a la JSP
            request.setAttribute("dtben", ben);
            //System.out.println("Atributo donacion establecido en request");
            request.getRequestDispatcher("/ver-perfil-beneficiario.jsp").forward(request, response);
        
        } catch (Exception e) {
            e.printStackTrace(); // Imprimir la traza de la excepción en la consola para depuración
            request.setAttribute("errorMessage", e.getMessage()); // Pasar mensaje de error a la JSP
            request.getRequestDispatcher("/error.jsp").forward(request, response); // Redirigir a una página de error
        }
        
    }
	 
    public publicadores.DtBeneficiario getBeneficiario(String arg0) throws java.rmi.RemoteException, ServiceException {
		ControladorPublishService cps = new ControladorPublishServiceLocator();
		ControladorPublish port;
		port = cps.getControladorPublishPort();
		return (DtBeneficiario) port.getBeneficiario(arg0);
	} 
}
