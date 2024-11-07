package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import publicadores.*;

import java.io.IOException;
import java.util.ArrayList;
import javax.xml.rpc.ServiceException;

public class VerDistribucionesBeneficiario extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public VerDistribucionesBeneficiario() {
        super();
    }

 
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ControladorPublishService cps = new ControladorPublishServiceLocator();
        ControladorPublish port;

        try {
            port = cps.getControladorPublishPort();
            String estadoParam = request.getParameter("estado");
            EstadoDistribucion estadoFiltro = null;

            if (estadoParam != null && !estadoParam.isEmpty()) {
                try {
                    estadoFiltro = EstadoDistribucion.fromValue(estadoParam.toUpperCase());
                } catch (IllegalArgumentException e) {
                    System.out.println("Estado no válido: " + estadoParam);
                }
            }

            int[] idDistribuciones = port.listarLasDistribucionesFiltradas(null, null);
            ArrayList<DtDistribucion> distribuciones = new ArrayList<>();
            ArrayList<String> descripciones = new ArrayList<>();

            for (int dist : idDistribuciones) {
                DtDistribucion distribucion = port.getDistribucion(dist);
                if (distribucion.getBeneficiario().getEmail().equals(request.getSession().getAttribute("useremail"))
                    && (estadoFiltro == null || distribucion.getEstado().equals(estadoFiltro))) {

                    distribuciones.add(distribucion);
                    Integer idDon = distribucion.getDonacion().getId();
                    String descripcion = obtenerDescripcionDonacion(idDon, port);
                    descripciones.add(descripcion);
                }
            }

            if (estadoParam != null) {
                // Si la solicitud es AJAX, devuelve solo el contenido de las distribuciones
                request.setAttribute("distribuciones", distribuciones);
                request.setAttribute("descripciones", descripciones);
                request.getRequestDispatcher("/fragmento-distribuciones.jsp").forward(request, response);
            } else {
                // Si no es AJAX, redirige a la página completa
                request.setAttribute("distribuciones", distribuciones);
                request.setAttribute("descripciones", descripciones);
                request.getRequestDispatcher("/ver-distribuciones-beneficiario.jsp").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
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