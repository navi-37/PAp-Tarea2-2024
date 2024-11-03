package publicadores;

public class ControladorPublishProxy implements publicadores.ControladorPublish {
  private String _endpoint = null;
  private publicadores.ControladorPublish controladorPublish = null;
  
  public ControladorPublishProxy() {
    _initControladorPublishProxy();
  }
  
  public ControladorPublishProxy(String endpoint) {
    _endpoint = endpoint;
    _initControladorPublishProxy();
  }
  
  private void _initControladorPublishProxy() {
    try {
      controladorPublish = (new publicadores.ControladorPublishServiceLocator()).getControladorPublishPort();
      if (controladorPublish != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)controladorPublish)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)controladorPublish)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (controladorPublish != null)
      ((javax.xml.rpc.Stub)controladorPublish)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public publicadores.ControladorPublish getControladorPublish() {
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish;
  }
  
<<<<<<< HEAD
  public int[] listarLasDistribucionesFiltradas(publicadores.EstadoDistribucion arg0, publicadores.Barrio arg1) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.listarLasDistribucionesFiltradas(arg0, arg1);
  }
  
  public publicadores.DtDonacion getDonacion(int arg0) throws java.rmi.RemoteException, publicadores.DonacionNoExisteExc{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.getDonacion(arg0);
  }
  
  public publicadores.DtDistribucion getDistribucion(int arg0) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.getDistribucion(arg0);
=======
  public publicadores.DtReporte[] reporte(java.util.Calendar arg0, java.util.Calendar arg1) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.reporte(arg0, arg1);
  }
  
  public void altaDonacion(publicadores.DtDonacion arg0) throws java.rmi.RemoteException, publicadores.DonacionRepetidaExc{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    controladorPublish.altaDonacion(arg0);
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
  }
  
  public void altaDistribucion(publicadores.DtDistribucion arg0) throws java.rmi.RemoteException, publicadores.DonacionNoExisteExc, publicadores.UsuarioNOBeneficiarioExc, publicadores.DistribucionRepetidaExc{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    controladorPublish.altaDistribucion(arg0);
  }
  
  public publicadores.DtBeneficiario getBeneficiario(java.lang.String arg0) throws java.rmi.RemoteException, publicadores.BeneficiarioNoExisteExc{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.getBeneficiario(arg0);
  }
  
<<<<<<< HEAD
=======
  public publicadores.DtDonacion getDonacion(int arg0) throws java.rmi.RemoteException, publicadores.DonacionNoExisteExc{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.getDonacion(arg0);
  }
  
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
  public void altaUsuario(publicadores.DtUsuario arg0) throws java.rmi.RemoteException, publicadores.UsuarioRepetidoExc{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    controladorPublish.altaUsuario(arg0);
  }
  
<<<<<<< HEAD
  public void altaDonacion(publicadores.DtDonacion arg0) throws java.rmi.RemoteException, publicadores.DonacionRepetidaExc{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    controladorPublish.altaDonacion(arg0);
  }
  
  public void modificarDistribucion(publicadores.DtDistribucion arg0) throws java.rmi.RemoteException, publicadores.DistribucionNoEncontradaExc{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    controladorPublish.modificarDistribucion(arg0);
  }
  
  public publicadores.DtReporte[] reporte(java.util.Calendar arg0, java.util.Calendar arg1) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.reporte(arg0, arg1);
  }
  
  public int[] listarDonaciones() throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.listarDonaciones();
  }
  
  public void modificarDonacion(publicadores.DtDonacion arg0) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    controladorPublish.modificarDonacion(arg0);
=======
  public publicadores.DtDistribucion getDistribucion(int arg0) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.getDistribucion(arg0);
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
  }
  
  public publicadores.DtBeneficiario[] listaBeneficiarios() throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.listaBeneficiarios();
  }
  
<<<<<<< HEAD
  public publicadores.DtRepartidor[] listaRepartidores() throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.listaRepartidores();
=======
  public void modificarDonacion(publicadores.DtDonacion arg0) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    controladorPublish.modificarDonacion(arg0);
  }
  
  public int[] listarDonaciones() throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.listarDonaciones();
  }
  
  public void modificarDistribucion(publicadores.DtDistribucion arg0) throws java.rmi.RemoteException, publicadores.DistribucionNoEncontradaExc{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    controladorPublish.modificarDistribucion(arg0);
  }
  
  public int[] listarLasDistribucionesFiltradas(publicadores.EstadoDistribucion arg0, publicadores.Barrio arg1) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.listarLasDistribucionesFiltradas(arg0, arg1);
  }
  
  public void modificarUsuario(publicadores.DtUsrModificar arg0, java.lang.String arg1, java.lang.String arg2, publicadores.EstadoBeneficiario arg3, java.lang.String arg4, publicadores.LocalDateTime arg5, publicadores.Barrio arg6, java.lang.String arg7, java.lang.String arg8) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    controladorPublish.modificarUsuario(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
  }
  
  public publicadores.DtRepartidor getRepartidor(java.lang.String arg0) throws java.rmi.RemoteException, publicadores.RepartidorNoExisteExc{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.getRepartidor(arg0);
  }
  
<<<<<<< HEAD
  public void modificarUsuario(publicadores.DtUsrModificar arg0, java.lang.String arg1, java.lang.String arg2, publicadores.EstadoBeneficiario arg3, java.lang.String arg4, publicadores.LocalDateTime arg5, publicadores.Barrio arg6, java.lang.String arg7, java.lang.String arg8) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    controladorPublish.modificarUsuario(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
=======
  public publicadores.DtRepartidor[] listaRepartidores() throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.listaRepartidores();
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
  }
  
  public publicadores.DtArticulo getArticulo(int arg0) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.getArticulo(arg0);
  }
  
  public publicadores.DtAlimento getAlimento(int arg0) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.getAlimento(arg0);
  }
  
  public publicadores.DtBeneficiario[] listarBeneficiariosPorEstadoYBarrio(publicadores.EstadoBeneficiario arg0, publicadores.Barrio arg1) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.listarBeneficiariosPorEstadoYBarrio(arg0, arg1);
  }
  
  public publicadores.DtUsuario getUsuario(java.lang.String arg0) throws java.rmi.RemoteException{
    if (controladorPublish == null)
      _initControladorPublishProxy();
    return controladorPublish.getUsuario(arg0);
  }
  
  
}