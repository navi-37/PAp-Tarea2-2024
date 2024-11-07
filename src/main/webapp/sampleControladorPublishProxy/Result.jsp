<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleControladorPublishProxyid" scope="session" class="publicadores.ControladorPublishProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleControladorPublishProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleControladorPublishProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleControladorPublishProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        publicadores.ControladorPublish getControladorPublish10mtemp = sampleControladorPublishProxyid.getControladorPublish();
if(getControladorPublish10mtemp == null){
%>
<%=getControladorPublish10mtemp %>
<%
}else{
        if(getControladorPublish10mtemp!= null){
        String tempreturnp11 = getControladorPublish10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String arg0_1id=  request.getParameter("arg020");
        int arg0_1idTemp  = Integer.parseInt(arg0_1id);
        publicadores.DtAlimento getAlimento13mtemp = sampleControladorPublishProxyid.getAlimento(arg0_1idTemp);
if(getAlimento13mtemp == null){
%>
<%=getAlimento13mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">cantElementos:</TD>
<TD>
<%
if(getAlimento13mtemp != null){
java.lang.Integer typecantElementos16 = getAlimento13mtemp.getCantElementos();
        String tempResultcantElementos16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecantElementos16));
        %>
        <%= tempResultcantElementos16 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcionProductos:</TD>
<TD>
<%
if(getAlimento13mtemp != null){
java.lang.String typedescripcionProductos18 = getAlimento13mtemp.getDescripcionProductos();
        String tempResultdescripcionProductos18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcionProductos18));
        %>
        <%= tempResultdescripcionProductos18 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 22:
        gotMethod = true;
        String arg0_2id=  request.getParameter("arg031");
        int arg0_2idTemp  = Integer.parseInt(arg0_2id);
        publicadores.DtArticulo getArticulo22mtemp = sampleControladorPublishProxyid.getArticulo(arg0_2idTemp);
if(getArticulo22mtemp == null){
%>
<%=getArticulo22mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcion:</TD>
<TD>
<%
if(getArticulo22mtemp != null){
java.lang.String typedescripcion25 = getArticulo22mtemp.getDescripcion();
        String tempResultdescripcion25 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion25));
        %>
        <%= tempResultdescripcion25 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">peso:</TD>
<TD>
<%
if(getArticulo22mtemp != null){
%>
<%=getArticulo22mtemp.getPeso()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">dimensiones:</TD>
<TD>
<%
if(getArticulo22mtemp != null){
java.lang.String typedimensiones29 = getArticulo22mtemp.getDimensiones();
        String tempResultdimensiones29 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedimensiones29));
        %>
        <%= tempResultdimensiones29 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 33:
        gotMethod = true;
        String arg0_3id=  request.getParameter("arg042");
            java.lang.String arg0_3idTemp = null;
        if(!arg0_3id.equals("")){
         arg0_3idTemp  = arg0_3id;
        }
        publicadores.DtUsuario getUsuario33mtemp = sampleControladorPublishProxyid.getUsuario(arg0_3idTemp);
if(getUsuario33mtemp == null){
%>
<%=getUsuario33mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(getUsuario33mtemp != null){
java.lang.String typeemail36 = getUsuario33mtemp.getEmail();
        String tempResultemail36 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail36));
        %>
        <%= tempResultemail36 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pw:</TD>
<TD>
<%
if(getUsuario33mtemp != null){
java.lang.String typepw38 = getUsuario33mtemp.getPw();
        String tempResultpw38 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepw38));
        %>
        <%= tempResultpw38 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getUsuario33mtemp != null){
java.lang.String typenombre40 = getUsuario33mtemp.getNombre();
        String tempResultnombre40 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre40));
        %>
        <%= tempResultnombre40 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 44:
        gotMethod = true;
        String fechaIngresada_5id=  request.getParameter("fechaIngresada49");
            java.util.Calendar fechaIngresada_5idTemp = null;
        if(!fechaIngresada_5id.equals("")){
        java.text.DateFormat dateFormatfechaIngresada49 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaIngresada49  = dateFormatfechaIngresada49.parse(fechaIngresada_5id);
         fechaIngresada_5idTemp = new java.util.GregorianCalendar();
        fechaIngresada_5idTemp.setTime(dateTempfechaIngresada49);
        }
        String id_6id=  request.getParameter("id51");
            java.lang.Integer id_6idTemp = null;
        if(!id_6id.equals("")){
         id_6idTemp  = java.lang.Integer.valueOf(id_6id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_4id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_4id.setFechaIngresada(fechaIngresada_5idTemp);
        publicadores1DtDonacion_4id.setId(id_6idTemp);
        sampleControladorPublishProxyid.altaDonacion(publicadores1DtDonacion_4id);
break;
case 53:
        gotMethod = true;
        String fechaNacimiento_9id=  request.getParameter("fechaNacimiento60");
            java.util.Calendar fechaNacimiento_9idTemp = null;
        if(!fechaNacimiento_9id.equals("")){
        java.text.DateFormat dateFormatfechaNacimiento60 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaNacimiento60  = dateFormatfechaNacimiento60.parse(fechaNacimiento_9id);
         fechaNacimiento_9idTemp = new java.util.GregorianCalendar();
        fechaNacimiento_9idTemp.setTime(dateTempfechaNacimiento60);
        }
        String direccion_10id=  request.getParameter("direccion62");
            java.lang.String direccion_10idTemp = null;
        if(!direccion_10id.equals("")){
         direccion_10idTemp  = direccion_10id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_8id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_8id.setFechaNacimiento(fechaNacimiento_9idTemp);
        publicadores1DtBeneficiario_8id.setDireccion(direccion_10idTemp);
        String fechaIngresada_12id=  request.getParameter("fechaIngresada66");
            java.util.Calendar fechaIngresada_12idTemp = null;
        if(!fechaIngresada_12id.equals("")){
        java.text.DateFormat dateFormatfechaIngresada66 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaIngresada66  = dateFormatfechaIngresada66.parse(fechaIngresada_12id);
         fechaIngresada_12idTemp = new java.util.GregorianCalendar();
        fechaIngresada_12idTemp.setTime(dateTempfechaIngresada66);
        }
        String id_13id=  request.getParameter("id68");
            java.lang.Integer id_13idTemp = null;
        if(!id_13id.equals("")){
         id_13idTemp  = java.lang.Integer.valueOf(id_13id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_11id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_11id.setFechaIngresada(fechaIngresada_12idTemp);
        publicadores1DtDonacion_11id.setId(id_13idTemp);
        String fechaPreparacion_14id=  request.getParameter("fechaPreparacion70");
            java.util.Calendar fechaPreparacion_14idTemp = null;
        if(!fechaPreparacion_14id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion70 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion70  = dateFormatfechaPreparacion70.parse(fechaPreparacion_14id);
         fechaPreparacion_14idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_14idTemp.setTime(dateTempfechaPreparacion70);
        }
        String fechaEntrega_15id=  request.getParameter("fechaEntrega72");
            java.util.Calendar fechaEntrega_15idTemp = null;
        if(!fechaEntrega_15id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega72 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega72  = dateFormatfechaEntrega72.parse(fechaEntrega_15id);
         fechaEntrega_15idTemp = new java.util.GregorianCalendar();
        fechaEntrega_15idTemp.setTime(dateTempfechaEntrega72);
        }
        String id_16id=  request.getParameter("id74");
        int id_16idTemp  = Integer.parseInt(id_16id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_7id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_7id.setBeneficiario(publicadores1DtBeneficiario_8id);
        publicadores1DtDistribucion_7id.setDonacion(publicadores1DtDonacion_11id);
        publicadores1DtDistribucion_7id.setFechaPreparacion(fechaPreparacion_14idTemp);
        publicadores1DtDistribucion_7id.setFechaEntrega(fechaEntrega_15idTemp);
        publicadores1DtDistribucion_7id.setId(id_16idTemp);
        sampleControladorPublishProxyid.modificarDistribucion(publicadores1DtDistribucion_7id);
break;
case 76:
        gotMethod = true;
        String email_18id=  request.getParameter("email81");
            java.lang.String email_18idTemp = null;
        if(!email_18id.equals("")){
         email_18idTemp  = email_18id;
        }
        String pw_19id=  request.getParameter("pw83");
            java.lang.String pw_19idTemp = null;
        if(!pw_19id.equals("")){
         pw_19idTemp  = pw_19id;
        }
        String nombre_20id=  request.getParameter("nombre85");
            java.lang.String nombre_20idTemp = null;
        if(!nombre_20id.equals("")){
         nombre_20idTemp  = nombre_20id;
        }
        %>
        <jsp:useBean id="publicadores1DtUsuario_17id" scope="session" class="publicadores.DtUsuario" />
        <%
        publicadores1DtUsuario_17id.setEmail(email_18idTemp);
        publicadores1DtUsuario_17id.setPw(pw_19idTemp);
        publicadores1DtUsuario_17id.setNombre(nombre_20idTemp);
        sampleControladorPublishProxyid.altaUsuario(publicadores1DtUsuario_17id);
break;
case 87:
        gotMethod = true;
        int[] listarDonaciones87mtemp = sampleControladorPublishProxyid.listarDonaciones();
if(listarDonaciones87mtemp == null){
%>
<%=listarDonaciones87mtemp %>
<%
}else{
        String tempreturnp88 = "[";        for(int ireturnp88=0;ireturnp88< listarDonaciones87mtemp.length;ireturnp88++){
            tempreturnp88 = tempreturnp88 + listarDonaciones87mtemp[ireturnp88] + ",";
        }
        int lengthreturnp88 = tempreturnp88.length();
        tempreturnp88 = tempreturnp88.substring(0,(lengthreturnp88 - 1)) + "]";
        %>
        <%=tempreturnp88%>
        <%
}
break;
case 90:
        gotMethod = true;
        publicadores.DtBeneficiario[] listaBeneficiarios90mtemp = sampleControladorPublishProxyid.listaBeneficiarios();
if(listaBeneficiarios90mtemp == null){
%>
<%=listaBeneficiarios90mtemp %>
<%
}else{
        String tempreturnp91 = null;
        if(listaBeneficiarios90mtemp != null){
        java.util.List listreturnp91= java.util.Arrays.asList(listaBeneficiarios90mtemp);
        tempreturnp91 = listreturnp91.toString();
        }
        %>
        <%=tempreturnp91%>
        <%
}
break;
case 93:
        gotMethod = true;
        String arg0_21id=  request.getParameter("arg0100");
            java.lang.String arg0_21idTemp = null;
        if(!arg0_21id.equals("")){
         arg0_21idTemp  = arg0_21id;
        }
        publicadores.DtBeneficiario getBeneficiario93mtemp = sampleControladorPublishProxyid.getBeneficiario(arg0_21idTemp);
if(getBeneficiario93mtemp == null){
%>
<%=getBeneficiario93mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaNacimiento:</TD>
<TD>
<%
if(getBeneficiario93mtemp != null){
java.util.Calendar typefechaNacimiento96 = getBeneficiario93mtemp.getFechaNacimiento();
        java.text.DateFormat dateFormatfechaNacimiento96 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaNacimiento96 = typefechaNacimiento96.getTime();
        String tempResultfechaNacimiento96 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaNacimiento96.format(datefechaNacimiento96));
        %>
        <%= tempResultfechaNacimiento96 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getBeneficiario93mtemp != null){
java.lang.String typedireccion98 = getBeneficiario93mtemp.getDireccion();
        String tempResultdireccion98 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion98));
        %>
        <%= tempResultdireccion98 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 102:
        gotMethod = true;
        String arg0_22id=  request.getParameter("arg0109");
        int arg0_22idTemp  = Integer.parseInt(arg0_22id);
        publicadores.DtDonacion getDonacion102mtemp = sampleControladorPublishProxyid.getDonacion(arg0_22idTemp);
if(getDonacion102mtemp == null){
%>
<%=getDonacion102mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaIngresada:</TD>
<TD>
<%
if(getDonacion102mtemp != null){
java.util.Calendar typefechaIngresada105 = getDonacion102mtemp.getFechaIngresada();
        java.text.DateFormat dateFormatfechaIngresada105 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaIngresada105 = typefechaIngresada105.getTime();
        String tempResultfechaIngresada105 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaIngresada105.format(datefechaIngresada105));
        %>
        <%= tempResultfechaIngresada105 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDonacion102mtemp != null){
java.lang.Integer typeid107 = getDonacion102mtemp.getId();
        String tempResultid107 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid107));
        %>
        <%= tempResultid107 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 111:
        gotMethod = true;
        String fechaNacimiento_25id=  request.getParameter("fechaNacimiento118");
            java.util.Calendar fechaNacimiento_25idTemp = null;
        if(!fechaNacimiento_25id.equals("")){
        java.text.DateFormat dateFormatfechaNacimiento118 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaNacimiento118  = dateFormatfechaNacimiento118.parse(fechaNacimiento_25id);
         fechaNacimiento_25idTemp = new java.util.GregorianCalendar();
        fechaNacimiento_25idTemp.setTime(dateTempfechaNacimiento118);
        }
        String direccion_26id=  request.getParameter("direccion120");
            java.lang.String direccion_26idTemp = null;
        if(!direccion_26id.equals("")){
         direccion_26idTemp  = direccion_26id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_24id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_24id.setFechaNacimiento(fechaNacimiento_25idTemp);
        publicadores1DtBeneficiario_24id.setDireccion(direccion_26idTemp);
        String fechaIngresada_28id=  request.getParameter("fechaIngresada124");
            java.util.Calendar fechaIngresada_28idTemp = null;
        if(!fechaIngresada_28id.equals("")){
        java.text.DateFormat dateFormatfechaIngresada124 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaIngresada124  = dateFormatfechaIngresada124.parse(fechaIngresada_28id);
         fechaIngresada_28idTemp = new java.util.GregorianCalendar();
        fechaIngresada_28idTemp.setTime(dateTempfechaIngresada124);
        }
        String id_29id=  request.getParameter("id126");
            java.lang.Integer id_29idTemp = null;
        if(!id_29id.equals("")){
         id_29idTemp  = java.lang.Integer.valueOf(id_29id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_27id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_27id.setFechaIngresada(fechaIngresada_28idTemp);
        publicadores1DtDonacion_27id.setId(id_29idTemp);
        String fechaPreparacion_30id=  request.getParameter("fechaPreparacion128");
            java.util.Calendar fechaPreparacion_30idTemp = null;
        if(!fechaPreparacion_30id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion128 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion128  = dateFormatfechaPreparacion128.parse(fechaPreparacion_30id);
         fechaPreparacion_30idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_30idTemp.setTime(dateTempfechaPreparacion128);
        }
        String fechaEntrega_31id=  request.getParameter("fechaEntrega130");
            java.util.Calendar fechaEntrega_31idTemp = null;
        if(!fechaEntrega_31id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega130 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega130  = dateFormatfechaEntrega130.parse(fechaEntrega_31id);
         fechaEntrega_31idTemp = new java.util.GregorianCalendar();
        fechaEntrega_31idTemp.setTime(dateTempfechaEntrega130);
        }
        String id_32id=  request.getParameter("id132");
        int id_32idTemp  = Integer.parseInt(id_32id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_23id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_23id.setBeneficiario(publicadores1DtBeneficiario_24id);
        publicadores1DtDistribucion_23id.setDonacion(publicadores1DtDonacion_27id);
        publicadores1DtDistribucion_23id.setFechaPreparacion(fechaPreparacion_30idTemp);
        publicadores1DtDistribucion_23id.setFechaEntrega(fechaEntrega_31idTemp);
        publicadores1DtDistribucion_23id.setId(id_32idTemp);
        sampleControladorPublishProxyid.altaDistribucion(publicadores1DtDistribucion_23id);
break;
case 134:
        gotMethod = true;
        String arg0_33id=  request.getParameter("arg0155");
        int arg0_33idTemp  = Integer.parseInt(arg0_33id);
        publicadores.DtDistribucion getDistribucion134mtemp = sampleControladorPublishProxyid.getDistribucion(arg0_33idTemp);
if(getDistribucion134mtemp == null){
%>
<%=getDistribucion134mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">beneficiario:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaNacimiento:</TD>
<TD>
<%
if(getDistribucion134mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion134mtemp.getBeneficiario();
if(tebece0 != null){
java.util.Calendar typefechaNacimiento139 = tebece0.getFechaNacimiento();
        java.text.DateFormat dateFormatfechaNacimiento139 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaNacimiento139 = typefechaNacimiento139.getTime();
        String tempResultfechaNacimiento139 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaNacimiento139.format(datefechaNacimiento139));
        %>
        <%= tempResultfechaNacimiento139 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getDistribucion134mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion134mtemp.getBeneficiario();
if(tebece0 != null){
java.lang.String typedireccion141 = tebece0.getDireccion();
        String tempResultdireccion141 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion141));
        %>
        <%= tempResultdireccion141 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">donacion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaIngresada:</TD>
<TD>
<%
if(getDistribucion134mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion134mtemp.getDonacion();
if(tebece0 != null){
java.util.Calendar typefechaIngresada145 = tebece0.getFechaIngresada();
        java.text.DateFormat dateFormatfechaIngresada145 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaIngresada145 = typefechaIngresada145.getTime();
        String tempResultfechaIngresada145 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaIngresada145.format(datefechaIngresada145));
        %>
        <%= tempResultfechaIngresada145 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion134mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion134mtemp.getDonacion();
if(tebece0 != null){
java.lang.Integer typeid147 = tebece0.getId();
        String tempResultid147 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid147));
        %>
        <%= tempResultid147 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPreparacion:</TD>
<TD>
<%
if(getDistribucion134mtemp != null){
java.util.Calendar typefechaPreparacion149 = getDistribucion134mtemp.getFechaPreparacion();
        java.text.DateFormat dateFormatfechaPreparacion149 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaPreparacion149 = typefechaPreparacion149.getTime();
        String tempResultfechaPreparacion149 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaPreparacion149.format(datefechaPreparacion149));
        %>
        <%= tempResultfechaPreparacion149 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaEntrega:</TD>
<TD>
<%
if(getDistribucion134mtemp != null){
java.util.Calendar typefechaEntrega151 = getDistribucion134mtemp.getFechaEntrega();
        java.text.DateFormat dateFormatfechaEntrega151 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaEntrega151 = typefechaEntrega151.getTime();
        String tempResultfechaEntrega151 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaEntrega151.format(datefechaEntrega151));
        %>
        <%= tempResultfechaEntrega151 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion134mtemp != null){
%>
<%=getDistribucion134mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 157:
        gotMethod = true;
        String arg0_34id=  request.getParameter("arg0160");
            java.util.Calendar arg0_34idTemp = null;
        if(!arg0_34id.equals("")){
        java.text.DateFormat dateFormatarg0160 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg0160  = dateFormatarg0160.parse(arg0_34id);
         arg0_34idTemp = new java.util.GregorianCalendar();
        arg0_34idTemp.setTime(dateTemparg0160);
        }
        String arg1_35id=  request.getParameter("arg1162");
            java.util.Calendar arg1_35idTemp = null;
        if(!arg1_35id.equals("")){
        java.text.DateFormat dateFormatarg1162 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg1162  = dateFormatarg1162.parse(arg1_35id);
         arg1_35idTemp = new java.util.GregorianCalendar();
        arg1_35idTemp.setTime(dateTemparg1162);
        }
        publicadores.DtReporte[] reporte157mtemp = sampleControladorPublishProxyid.reporte(arg0_34idTemp,arg1_35idTemp);
if(reporte157mtemp == null){
%>
<%=reporte157mtemp %>
<%
}else{
        String tempreturnp158 = null;
        if(reporte157mtemp != null){
        java.util.List listreturnp158= java.util.Arrays.asList(reporte157mtemp);
        tempreturnp158 = listreturnp158.toString();
        }
        %>
        <%=tempreturnp158%>
        <%
}
break;
case 164:
        gotMethod = true;
        String fechaIngresada_37id=  request.getParameter("fechaIngresada169");
            java.util.Calendar fechaIngresada_37idTemp = null;
        if(!fechaIngresada_37id.equals("")){
        java.text.DateFormat dateFormatfechaIngresada169 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaIngresada169  = dateFormatfechaIngresada169.parse(fechaIngresada_37id);
         fechaIngresada_37idTemp = new java.util.GregorianCalendar();
        fechaIngresada_37idTemp.setTime(dateTempfechaIngresada169);
        }
        String id_38id=  request.getParameter("id171");
            java.lang.Integer id_38idTemp = null;
        if(!id_38id.equals("")){
         id_38idTemp  = java.lang.Integer.valueOf(id_38id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_36id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_36id.setFechaIngresada(fechaIngresada_37idTemp);
        publicadores1DtDonacion_36id.setId(id_38idTemp);
        sampleControladorPublishProxyid.modificarDonacion(publicadores1DtDonacion_36id);
break;
case 173:
        gotMethod = true;
        publicadores.DtRepartidor[] listaRepartidores173mtemp = sampleControladorPublishProxyid.listaRepartidores();
if(listaRepartidores173mtemp == null){
%>
<%=listaRepartidores173mtemp %>
<%
}else{
        String tempreturnp174 = null;
        if(listaRepartidores173mtemp != null){
        java.util.List listreturnp174= java.util.Arrays.asList(listaRepartidores173mtemp);
        tempreturnp174 = listreturnp174.toString();
        }
        %>
        <%=tempreturnp174%>
        <%
}
break;
case 176:
        gotMethod = true;
        String numeroDeLicencia_40id=  request.getParameter("numeroDeLicencia181");
            java.lang.String numeroDeLicencia_40idTemp = null;
        if(!numeroDeLicencia_40id.equals("")){
         numeroDeLicencia_40idTemp  = numeroDeLicencia_40id;
        }
        String direccion_41id=  request.getParameter("direccion183");
            java.lang.String direccion_41idTemp = null;
        if(!direccion_41id.equals("")){
         direccion_41idTemp  = direccion_41id;
        }
        String fechaNacimiento_42id=  request.getParameter("fechaNacimiento185");
            java.util.Calendar fechaNacimiento_42idTemp = null;
        if(!fechaNacimiento_42id.equals("")){
        java.text.DateFormat dateFormatfechaNacimiento185 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaNacimiento185  = dateFormatfechaNacimiento185.parse(fechaNacimiento_42id);
         fechaNacimiento_42idTemp = new java.util.GregorianCalendar();
        fechaNacimiento_42idTemp.setTime(dateTempfechaNacimiento185);
        }
        String email_43id=  request.getParameter("email187");
            java.lang.String email_43idTemp = null;
        if(!email_43id.equals("")){
         email_43idTemp  = email_43id;
        }
        String pw_44id=  request.getParameter("pw189");
            java.lang.String pw_44idTemp = null;
        if(!pw_44id.equals("")){
         pw_44idTemp  = pw_44id;
        }
        String nombre_45id=  request.getParameter("nombre191");
            java.lang.String nombre_45idTemp = null;
        if(!nombre_45id.equals("")){
         nombre_45idTemp  = nombre_45id;
        }
        %>
        <jsp:useBean id="publicadores1DtUsrModificar_39id" scope="session" class="publicadores.DtUsrModificar" />
        <%
        publicadores1DtUsrModificar_39id.setNumeroDeLicencia(numeroDeLicencia_40idTemp);
        publicadores1DtUsrModificar_39id.setDireccion(direccion_41idTemp);
        publicadores1DtUsrModificar_39id.setFechaNacimiento(fechaNacimiento_42idTemp);
        publicadores1DtUsrModificar_39id.setEmail(email_43idTemp);
        publicadores1DtUsrModificar_39id.setPw(pw_44idTemp);
        publicadores1DtUsrModificar_39id.setNombre(nombre_45idTemp);
        String arg1_46id=  request.getParameter("arg1193");
            java.lang.String arg1_46idTemp = null;
        if(!arg1_46id.equals("")){
         arg1_46idTemp  = arg1_46id;
        }
        String arg2_47id=  request.getParameter("arg2195");
            java.lang.String arg2_47idTemp = null;
        if(!arg2_47id.equals("")){
         arg2_47idTemp  = arg2_47id;
        }
        publicadores.EstadoBeneficiario publicadores1EstadoBeneficiario_48id = null;
        String arg4_49id=  request.getParameter("arg4199");
            java.lang.String arg4_49idTemp = null;
        if(!arg4_49id.equals("")){
         arg4_49idTemp  = arg4_49id;
        }
        String arg5_50id=  request.getParameter("arg5201");
            java.util.Calendar arg5_50idTemp = null;
        if(!arg5_50id.equals("")){
        java.text.DateFormat dateFormatarg5201 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg5201  = dateFormatarg5201.parse(arg5_50id);
         arg5_50idTemp = new java.util.GregorianCalendar();
        arg5_50idTemp.setTime(dateTemparg5201);
        }
        publicadores.Barrio publicadores1Barrio_51id = null;
        String arg7_52id=  request.getParameter("arg7205");
            java.lang.String arg7_52idTemp = null;
        if(!arg7_52id.equals("")){
         arg7_52idTemp  = arg7_52id;
        }
        String arg8_53id=  request.getParameter("arg8207");
            java.lang.String arg8_53idTemp = null;
        if(!arg8_53id.equals("")){
         arg8_53idTemp  = arg8_53id;
        }
        sampleControladorPublishProxyid.modificarUsuario(publicadores1DtUsrModificar_39id,arg1_46idTemp,arg2_47idTemp,publicadores1EstadoBeneficiario_48id,arg4_49idTemp,arg5_50idTemp,publicadores1Barrio_51id,arg7_52idTemp,arg8_53idTemp);
break;
case 209:
        gotMethod = true;
        String arg0_54id=  request.getParameter("arg0214");
            java.lang.String arg0_54idTemp = null;
        if(!arg0_54id.equals("")){
         arg0_54idTemp  = arg0_54id;
        }
        publicadores.DtRepartidor getRepartidor209mtemp = sampleControladorPublishProxyid.getRepartidor(arg0_54idTemp);
if(getRepartidor209mtemp == null){
%>
<%=getRepartidor209mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">numeroDeLicencia:</TD>
<TD>
<%
if(getRepartidor209mtemp != null){
java.lang.String typenumeroDeLicencia212 = getRepartidor209mtemp.getNumeroDeLicencia();
        String tempResultnumeroDeLicencia212 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenumeroDeLicencia212));
        %>
        <%= tempResultnumeroDeLicencia212 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>