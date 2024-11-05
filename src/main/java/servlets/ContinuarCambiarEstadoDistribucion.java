package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import publicadores.ControladorPublish;
import publicadores.ControladorPublishService;
import publicadores.ControladorPublishServiceLocator;
import publicadores.DtDistribucion;
import publicadores.EstadoDistribucion;

import java.io.IOException;
import java.rmi.RemoteException;
import java.util.Date;

import javax.xml.rpc.ServiceException;

@WebServlet("/ContinuarCambiarEstadoDistribucion")
public class ContinuarCambiarEstadoDistribucion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String idDistString = request.getParameter("distribucionId");
		try {
		    int idDist = Integer.parseInt(idDistString);
		    

		    ControladorPublishService cps = new ControladorPublishServiceLocator();
            ControladorPublish port = cps.getControladorPublishPort();
            
            DtDistribucion distribucionActualizar = port.getDistribucion(idDist);
            EstadoDistribucion estadoActual = distribucionActualizar.getEstado();
            
            EstadoDistribucion nuevoEstado = estadoActual;
            System.out.print(nuevoEstado);
            if (estadoActual == EstadoDistribucion.PENDIENTE) {
                nuevoEstado = EstadoDistribucion.EN_CAMINO;
            } else if (estadoActual == EstadoDistribucion.EN_CAMINO) {
                nuevoEstado = EstadoDistribucion.ENTREGADO;
            }
            System.out.print(nuevoEstado);

            if (nuevoEstado != estadoActual) {
            	distribucionActualizar.setEstado(nuevoEstado);
            	
            	try {
            		port.modificarDistribucion(distribucionActualizar);
            	} catch (Exception e){
            		e.printStackTrace();
            	}
            	
            }

            //response.sendRedirect("cambiar-estado-distribuciones.jsp");
            response.sendRedirect("/asd/CambiarEstadoDistribucion");

        } catch (NumberFormatException | ServiceException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error al procesar el cambio de estado.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
	}

    public publicadores.DtDistribucion getDistribucion(int arg0) throws java.rmi.RemoteException, ServiceException {
		ControladorPublishService cps = new ControladorPublishServiceLocator();
		ControladorPublish port;
		port = cps.getControladorPublishPort();
		return (DtDistribucion) port.getDistribucion(arg0);
	} 

    public void modificarDistribucion(publicadores.DtDistribucion dtd) throws java.rmi.RemoteException, publicadores.DistribucionNoEncontradaExc, ServiceException {   
		ControladorPublishService cps = new ControladorPublishServiceLocator();
		ControladorPublish port = cps.getControladorPublishPort();;
		try {
			port.modificarDistribucion(dtd);
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}