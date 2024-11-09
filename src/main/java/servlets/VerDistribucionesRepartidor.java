package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import publicadores.Barrio;
import publicadores.ControladorPublish;
import publicadores.ControladorPublishService;
import publicadores.ControladorPublishServiceLocator;
import publicadores.DtAlimento;
import publicadores.DtArticulo;
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
            
            //bloque actualizacion sin redireccion
            String zonaParam = request.getParameter("zona");
            Barrio zonaFiltro = null;

            if (zonaParam != null && !zonaParam.isEmpty()) {
                try {
                    zonaFiltro = Barrio.fromValue(zonaParam);
                } catch (IllegalArgumentException e) {
                    System.out.println("Zona no válida: " + zonaParam);
                }
            }
            //

            int[] idDistribuciones = port.listarLasDistribucionesFiltradas(EstadoDistribucion.PENDIENTE, null);
            ArrayList<DtDistribucion> distribuciones = new ArrayList<DtDistribucion>();
            ArrayList<String> descripciones = new ArrayList<String>();
            for (int dist : idDistribuciones) {
            	DtDistribucion distribucion = port.getDistribucion(dist);
            	if ((zonaFiltro == null) || distribucion.getBeneficiario().getBarrio().equals(zonaFiltro)) {
	            	distribuciones.add(distribucion);
	                Integer idDon = distribucion.getDonacion().getId();
	                String descripcion = obtenerDescripcionDonacion(idDon, port);
	                descripciones.add(descripcion);
            	}
            }
            
            if (zonaParam != null) {
                // Si la solicitud es AJAX, devuelve solo el contenido de las distribuciones
                request.setAttribute("distribuciones", distribuciones);
                request.setAttribute("descripciones", descripciones);
                request.getRequestDispatcher("/fragmento-distribuciones.jsp").forward(request, response);
            } else {
                // Si no es AJAX, redirige a la página completa
                request.setAttribute("distribuciones", distribuciones);
                request.setAttribute("descripciones", descripciones);
                request.getRequestDispatcher("/ver-distribuciones-repartidor.jsp").forward(request, response);
            }
        
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
	
    
 // Función para obtener la descripción de la donación
    private String obtenerDescripcionDonacion(Integer idDon, ControladorPublish port) {
        try {
            DtAlimento alimento = port.getAlimento(idDon);
            if (alimento != null) {
                return alimento.getDescripcionProductos();
            }
        } catch (Exception e) {}
        try {
            DtArticulo articulo = port.getArticulo(idDon);
            if (articulo != null) {
                return articulo.getDescripcion();
            }
        } catch (Exception e) {}
        return "Descripción no disponible";
    }
}
