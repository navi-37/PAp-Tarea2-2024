package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import publicadores.ControladorPublish;
import publicadores.ControladorPublishService;
import publicadores.ControladorPublishServiceLocator;
import publicadores.DtAlimento;
import publicadores.DtArticulo;
import publicadores.DtBeneficiario;
import publicadores.DtDistribucion;
import publicadores.DtDonacion;
import publicadores.DtRepartidor;
import publicadores.EstadoDistribucion;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.xml.rpc.ServiceException;


//@WebServlet("/VerDistribucionesRepartidor")
public class VerDistribucionesRepartidor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public VerDistribucionesRepartidor() {
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
                throw new RuntimeException("sori");
            }

            int[] idDistribuciones = port.listarLasDistribucionesFiltradas(EstadoDistribucion.PENDIENTE, null);
            Arrays.sort(idDistribuciones);
            ArrayList<DtDistribucion> distribuciones = new ArrayList<DtDistribucion>();
            ArrayList<String> descripciones = new ArrayList<String>();
            for (int dist : idDistribuciones) {
            	DtDistribucion distribucion = port.getDistribucion(dist);
            	distribuciones.add(distribucion);
            	
            	Integer idDon = distribucion.getDonacion().getId();
            	
                DtArticulo articulo = null;
                DtAlimento alimento = null;
                
                try {
                	alimento = port.getAlimento(idDon);
				} catch (Exception e) {
				    alimento = null;
				}
                try {
                	articulo = port.getArticulo(idDon);

				} catch (Exception e) {
				    articulo = null; 
				}
 
            	if (alimento != null) { // si es un alimento
            		String descripcion = alimento.getDescripcionProductos();
            		descripciones.add(descripcion);
            	} else if (articulo != null) { // si es un artículo
            		String descripcion = articulo.getDescripcion();
            		descripciones.add(descripcion);
            	} else {
            		descripciones.add("Descripción no disponible");
            	}
            }
            
            request.setAttribute("distribuciones", distribuciones);
            request.setAttribute("descripciones", descripciones);
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
