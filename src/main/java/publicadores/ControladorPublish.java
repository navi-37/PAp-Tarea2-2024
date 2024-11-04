/**
 * ControladorPublish.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4.1-SNAPSHOT Nov 07, 2023 (07:57:58 UTC) WSDL2Java emitter.
 */

package publicadores;

public interface ControladorPublish extends java.rmi.Remote {
    public publicadores.DtReporte[] reporte(java.util.Calendar arg0, java.util.Calendar arg1) throws java.rmi.RemoteException;
    public void altaUsuario(publicadores.DtUsuario arg0) throws java.rmi.RemoteException, publicadores.UsuarioRepetidoExc;
    public void altaDonacion(publicadores.DtDonacion arg0) throws java.rmi.RemoteException, publicadores.DonacionRepetidaExc;
    public publicadores.DtBeneficiario getBeneficiario(java.lang.String arg0) throws java.rmi.RemoteException, publicadores.BeneficiarioNoExisteExc;
    public int[] listarLasDistribucionesFiltradas(publicadores.EstadoDistribucion arg0, publicadores.Barrio arg1) throws java.rmi.RemoteException;
    public void modificarDistribucion(publicadores.DtDistribucion arg0) throws java.rmi.RemoteException, publicadores.DistribucionNoEncontradaExc;
    public int[] listarDonaciones() throws java.rmi.RemoteException;
    public publicadores.DtDistribucion getDistribucion(int arg0) throws java.rmi.RemoteException;
    public publicadores.DtDonacion getDonacion(int arg0) throws java.rmi.RemoteException, publicadores.DonacionNoExisteExc;
    public void altaDistribucion(publicadores.DtDistribucion arg0) throws java.rmi.RemoteException, publicadores.DonacionNoExisteExc, publicadores.UsuarioNOBeneficiarioExc, publicadores.DistribucionRepetidaExc;
    public publicadores.DtBeneficiario[] listaBeneficiarios() throws java.rmi.RemoteException;
    public publicadores.DtRepartidor getRepartidor(java.lang.String arg0) throws java.rmi.RemoteException, publicadores.RepartidorNoExisteExc;
    public void modificarDonacion(publicadores.DtDonacion arg0) throws java.rmi.RemoteException;
    public void modificarUsuario(publicadores.DtUsrModificar arg0, java.lang.String arg1, java.lang.String arg2, publicadores.EstadoBeneficiario arg3, java.lang.String arg4, publicadores.LocalDateTime arg5, publicadores.Barrio arg6, java.lang.String arg7, java.lang.String arg8) throws java.rmi.RemoteException;
    public publicadores.DtRepartidor[] listaRepartidores() throws java.rmi.RemoteException;
    public publicadores.DtAlimento getAlimento(int arg0) throws java.rmi.RemoteException;
    public publicadores.DtArticulo getArticulo(int arg0) throws java.rmi.RemoteException;
    public publicadores.DtUsuario getUsuario(java.lang.String arg0) throws java.rmi.RemoteException;
    public publicadores.DtBeneficiario[] listarBeneficiariosPorEstadoYBarrio(publicadores.EstadoBeneficiario arg0, publicadores.Barrio arg1) throws java.rmi.RemoteException;
}
