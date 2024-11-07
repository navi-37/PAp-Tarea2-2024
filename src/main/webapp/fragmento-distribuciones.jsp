<%@page import="publicadores.DtDistribucion"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.text.SimpleDateFormat" %>

<% 
    ArrayList<DtDistribucion> distribuciones = (ArrayList<DtDistribucion>) request.getAttribute("distribuciones");
    ArrayList<String> descripciones = (ArrayList<String>) request.getAttribute("descripciones");
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

    if (distribuciones != null) {
        for (int i = 0; i < distribuciones.size(); i++) {
            DtDistribucion d = distribuciones.get(i);
%>
            <div class="distribucion-item">
                <p><strong>Id de distribución:</strong> <%= d.getId() %></p>
                <p><strong>Fecha de preparación:</strong> <%= sdf.format(d.getFechaPreparacion().getTime()) %></p>
                <p><strong>Fecha de entrega:</strong> <%= sdf.format(d.getFechaEntrega().getTime()) %></p>
                <p><strong>Estado:</strong> <%= d.getEstado() %></p>
                <p><strong>Id de donación asociada:</strong> <%= d.getDonacion().getId() %></p>
                <p><strong>Descripción de la donación:</strong> <%= descripciones.get(i) %></p>
            </div>
<% 
        }
    }
%>