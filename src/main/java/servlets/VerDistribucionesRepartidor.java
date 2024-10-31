package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import publicadores.ControladorPublish;
import publicadores.ControladorPublishService;
import publicadores.ControladorPublishServiceLocator;
import publicadores.DtBeneficiario;
import publicadores.DtDistribucion;
import publicadores.DtDonacion;
import publicadores.EstadoDistribucion;

import java.io.IOException;
import java.util.ArrayList;

import javax.xml.rpc.ServiceException;

public class VerDistribucionesRepartidor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public VerDistribucionesRepartidor() {
        super();    
    }
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //String email = (String) request.getSession().getAttribute("useremail");
        ControladorPublishService cps = new ControladorPublishServiceLocator();
        ControladorPublish port = null;

        try {
            port = cps.getControladorPublishPort();
            if (port == null) {
                throw new RuntimeException("No se pudo obtener el puerto del controlador Publish.");
            }

            int[] idDistribuciones = port.listarLasDistribucionesFiltradas(EstadoDistribucion.PENDIENTE, null);
            ArrayList<DtDistribucion> distribuciones = new ArrayList<DtDistribucion>();
            for (int dist : idDistribuciones) {
            	DtDistribucion distribucion = port.getDistribucion(dist);
            	distribuciones.add(distribucion);
            }
            
            // Pasar la donación a la JSP
            request.setAttribute("distribuciones", distribuciones);
            //System.out.println("Atributo donacion establecido en request");
            request.getRequestDispatcher("/ver-distribuciones-repartidor.jsp").forward(request, response);
        
        } catch (Exception e) {
            e.printStackTrace(); // Imprimir la traza de la excepción en la consola para depuración
            request.setAttribute("errorMessage", e.getMessage()); // Pasar mensaje de error a la JSP
            request.getRequestDispatcher("/error.jsp").forward(request, response); // Redirigir a una página de error
        }
        
    }
	 
    public publicadores.DtDistribucion getDistribucion(int arg0) throws java.rmi.RemoteException, ServiceException {
		ControladorPublishService cps = new ControladorPublishServiceLocator();
		ControladorPublish port;
		port = cps.getControladorPublishPort();
		return (DtDistribucion) port.getDistribucion(arg0);
	} 
}
