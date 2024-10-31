package servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import publicadores.ControladorPublish;
import publicadores.ControladorPublishService;
import publicadores.ControladorPublishServiceLocator;
import publicadores.DtAlimento;
import publicadores.DtBeneficiario;
import publicadores.DtRepartidor;
import publicadores.DtUsuario;
import publicadores.EstadoBeneficiario;

import java.io.IOException;
import java.io.PrintWriter;

import javax.xml.rpc.ServiceException;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ControladorPublishService cps = new ControladorPublishServiceLocator();
        ControladorPublish port = null;
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		
		try {
			port = cps.getControladorPublishPort();
			if (port == null) {
                throw new RuntimeException("No se pudo obtener el puerto del controlador Publish.");
            }
			
			DtUsuario usr =  port.getUsuario(email);
			
			//provisorio, hay que desplegar ventanita
			PrintWriter salida = response.getWriter();
			response.setContentType("text/html");
			
			if(usr == null) {
				//mensaje de cuenta no existe
				salida.println("2sori");
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
				//	 ESTO NO ESTÁ FUNCANDING
			} else if (email.equals(usr.getEmail()) && pwd.equals(usr.getPw())) {
				//System.out.println("entre al else if");
				DtBeneficiario ben = null;
				try {
				    // Intenta obtener el beneficiario
					//System.out.println("llamo a getbeneficiario");
				    ben = port.getBeneficiario(usr.getEmail());
				    
				} catch (Exception e) {
				    // Maneja la excepción si el beneficiario no existe, sin interrumpir el flujo
					//System.out.println("me retornó null");
				    ben = null; // Esto asegura que `ben` siga siendo null si ocurre una excepción
				}
				if (ben != null) { //si es beneficiario
					//System.out.println("ben!=null");
					if(ben.getEstado().equals(EstadoBeneficiario.ACTIVO)) {
						//System.out.println("equals activo000");
						HttpSession hs = request.getSession();
						hs.setAttribute("useremail", email);
						//hs.setAttribute("username", ); PROBAR SI AK SE PUEDE AGREGAR EL NOMBRE Y YA QUEDA ACCESIBLE
						response.sendRedirect("/asd/beneficiario.jsp");
					}
				} else { //es repartidor
					HttpSession hs = request.getSession();
					hs.setAttribute("useremail", email);
					response.sendRedirect("/asd/repartidor.jsp");
				}
			} else {
				salida.println("sori");
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
				//response.sendRedirect("login.jsp");
			}
			
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	}

}
