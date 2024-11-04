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
        String arg0_1id=  request.getParameter("arg016");
            java.util.Calendar arg0_1idTemp = null;
        if(!arg0_1id.equals("")){
        java.text.DateFormat dateFormatarg016 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg016  = dateFormatarg016.parse(arg0_1id);
         arg0_1idTemp = new java.util.GregorianCalendar();
        arg0_1idTemp.setTime(dateTemparg016);
        }
        String arg1_2id=  request.getParameter("arg118");
            java.util.Calendar arg1_2idTemp = null;
        if(!arg1_2id.equals("")){
        java.text.DateFormat dateFormatarg118 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg118  = dateFormatarg118.parse(arg1_2id);
         arg1_2idTemp = new java.util.GregorianCalendar();
        arg1_2idTemp.setTime(dateTemparg118);
        }
        publicadores.DtReporte[] reporte13mtemp = sampleControladorPublishProxyid.reporte(arg0_1idTemp,arg1_2idTemp);
if(reporte13mtemp == null){
%>
<%=reporte13mtemp %>
<%
}else{
        String tempreturnp14 = null;
        if(reporte13mtemp != null){
        java.util.List listreturnp14= java.util.Arrays.asList(reporte13mtemp);
        tempreturnp14 = listreturnp14.toString();
        }
        %>
        <%=tempreturnp14%>
        <%
}
break;
case 20:
        gotMethod = true;
        String email_4id=  request.getParameter("email25");
            java.lang.String email_4idTemp = null;
        if(!email_4id.equals("")){
         email_4idTemp  = email_4id;
        }
        String pw_5id=  request.getParameter("pw27");
            java.lang.String pw_5idTemp = null;
        if(!pw_5id.equals("")){
         pw_5idTemp  = pw_5id;
        }
        String nombre_6id=  request.getParameter("nombre29");
            java.lang.String nombre_6idTemp = null;
        if(!nombre_6id.equals("")){
         nombre_6idTemp  = nombre_6id;
        }
        %>
        <jsp:useBean id="publicadores1DtUsuario_3id" scope="session" class="publicadores.DtUsuario" />
        <%
        publicadores1DtUsuario_3id.setEmail(email_4idTemp);
        publicadores1DtUsuario_3id.setPw(pw_5idTemp);
        publicadores1DtUsuario_3id.setNombre(nombre_6idTemp);
        sampleControladorPublishProxyid.altaUsuario(publicadores1DtUsuario_3id);
break;
case 31:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_8id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_9id=  request.getParameter("id38");
            java.lang.Integer id_9idTemp = null;
        if(!id_9id.equals("")){
         id_9idTemp  = java.lang.Integer.valueOf(id_9id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_7id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_7id.setFechaIngresada(publicadores1LocalDateTime_8id);
        publicadores1DtDonacion_7id.setId(id_9idTemp);
        sampleControladorPublishProxyid.altaDonacion(publicadores1DtDonacion_7id);
break;
case 40:
        gotMethod = true;
        String arg0_10id=  request.getParameter("arg047");
            java.lang.String arg0_10idTemp = null;
        if(!arg0_10id.equals("")){
         arg0_10idTemp  = arg0_10id;
        }
        publicadores.DtBeneficiario getBeneficiario40mtemp = sampleControladorPublishProxyid.getBeneficiario(arg0_10idTemp);
if(getBeneficiario40mtemp == null){
%>
<%=getBeneficiario40mtemp %>
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
if(getBeneficiario40mtemp != null){
publicadores.LocalDateTime typefechaNacimiento43 = getBeneficiario40mtemp.getFechaNacimiento();
        if(typefechaNacimiento43!= null){
        String tempfechaNacimiento43 = typefechaNacimiento43.toString();
        %>
        <%=tempfechaNacimiento43%>
        <%
        }}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getBeneficiario40mtemp != null){
java.lang.String typedireccion45 = getBeneficiario40mtemp.getDireccion();
        String tempResultdireccion45 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion45));
        %>
        <%= tempResultdireccion45 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 49:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_13id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String direccion_14id=  request.getParameter("direccion58");
            java.lang.String direccion_14idTemp = null;
        if(!direccion_14id.equals("")){
         direccion_14idTemp  = direccion_14id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_12id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_12id.setFechaNacimiento(publicadores1LocalDateTime_13id);
        publicadores1DtBeneficiario_12id.setDireccion(direccion_14idTemp);
        %>
        <jsp:useBean id="publicadores1LocalDateTime_16id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_17id=  request.getParameter("id64");
            java.lang.Integer id_17idTemp = null;
        if(!id_17id.equals("")){
         id_17idTemp  = java.lang.Integer.valueOf(id_17id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_15id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_15id.setFechaIngresada(publicadores1LocalDateTime_16id);
        publicadores1DtDonacion_15id.setId(id_17idTemp);
        String fechaPreparacion_18id=  request.getParameter("fechaPreparacion66");
            java.util.Calendar fechaPreparacion_18idTemp = null;
        if(!fechaPreparacion_18id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion66 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion66  = dateFormatfechaPreparacion66.parse(fechaPreparacion_18id);
         fechaPreparacion_18idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_18idTemp.setTime(dateTempfechaPreparacion66);
        }
        String fechaEntrega_19id=  request.getParameter("fechaEntrega68");
            java.util.Calendar fechaEntrega_19idTemp = null;
        if(!fechaEntrega_19id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega68 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega68  = dateFormatfechaEntrega68.parse(fechaEntrega_19id);
         fechaEntrega_19idTemp = new java.util.GregorianCalendar();
        fechaEntrega_19idTemp.setTime(dateTempfechaEntrega68);
        }
        String id_20id=  request.getParameter("id70");
        int id_20idTemp  = Integer.parseInt(id_20id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_11id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_11id.setBeneficiario(publicadores1DtBeneficiario_12id);
        publicadores1DtDistribucion_11id.setDonacion(publicadores1DtDonacion_15id);
        publicadores1DtDistribucion_11id.setFechaPreparacion(fechaPreparacion_18idTemp);
        publicadores1DtDistribucion_11id.setFechaEntrega(fechaEntrega_19idTemp);
        publicadores1DtDistribucion_11id.setId(id_20idTemp);
        sampleControladorPublishProxyid.modificarDistribucion(publicadores1DtDistribucion_11id);
break;
case 72:
        gotMethod = true;
        int[] listarDonaciones72mtemp = sampleControladorPublishProxyid.listarDonaciones();
if(listarDonaciones72mtemp == null){
%>
<%=listarDonaciones72mtemp %>
<%
}else{
        String tempreturnp73 = "[";        for(int ireturnp73=0;ireturnp73< listarDonaciones72mtemp.length;ireturnp73++){
            tempreturnp73 = tempreturnp73 + listarDonaciones72mtemp[ireturnp73] + ",";
        }
        int lengthreturnp73 = tempreturnp73.length();
        tempreturnp73 = tempreturnp73.substring(0,(lengthreturnp73 - 1)) + "]";
        %>
        <%=tempreturnp73%>
        <%
}
break;
case 75:
        gotMethod = true;
        String arg0_21id=  request.getParameter("arg096");
        int arg0_21idTemp  = Integer.parseInt(arg0_21id);
        publicadores.DtDistribucion getDistribucion75mtemp = sampleControladorPublishProxyid.getDistribucion(arg0_21idTemp);
if(getDistribucion75mtemp == null){
%>
<%=getDistribucion75mtemp %>
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
if(getDistribucion75mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion75mtemp.getBeneficiario();
if(tebece0 != null){
publicadores.LocalDateTime typefechaNacimiento80 = tebece0.getFechaNacimiento();
        if(typefechaNacimiento80!= null){
        String tempfechaNacimiento80 = typefechaNacimiento80.toString();
        %>
        <%=tempfechaNacimiento80%>
        <%
        }}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getDistribucion75mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion75mtemp.getBeneficiario();
if(tebece0 != null){
java.lang.String typedireccion82 = tebece0.getDireccion();
        String tempResultdireccion82 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion82));
        %>
        <%= tempResultdireccion82 %>
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
if(getDistribucion75mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion75mtemp.getDonacion();
if(tebece0 != null){
publicadores.LocalDateTime typefechaIngresada86 = tebece0.getFechaIngresada();
        if(typefechaIngresada86!= null){
        String tempfechaIngresada86 = typefechaIngresada86.toString();
        %>
        <%=tempfechaIngresada86%>
        <%
        }}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion75mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion75mtemp.getDonacion();
if(tebece0 != null){
java.lang.Integer typeid88 = tebece0.getId();
        String tempResultid88 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid88));
        %>
        <%= tempResultid88 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPreparacion:</TD>
<TD>
<%
if(getDistribucion75mtemp != null){
java.util.Calendar typefechaPreparacion90 = getDistribucion75mtemp.getFechaPreparacion();
        java.text.DateFormat dateFormatfechaPreparacion90 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaPreparacion90 = typefechaPreparacion90.getTime();
        String tempResultfechaPreparacion90 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaPreparacion90.format(datefechaPreparacion90));
        %>
        <%= tempResultfechaPreparacion90 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaEntrega:</TD>
<TD>
<%
if(getDistribucion75mtemp != null){
java.util.Calendar typefechaEntrega92 = getDistribucion75mtemp.getFechaEntrega();
        java.text.DateFormat dateFormatfechaEntrega92 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaEntrega92 = typefechaEntrega92.getTime();
        String tempResultfechaEntrega92 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaEntrega92.format(datefechaEntrega92));
        %>
        <%= tempResultfechaEntrega92 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion75mtemp != null){
%>
<%=getDistribucion75mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 98:
        gotMethod = true;
        String arg0_22id=  request.getParameter("arg0105");
        int arg0_22idTemp  = Integer.parseInt(arg0_22id);
        publicadores.DtDonacion getDonacion98mtemp = sampleControladorPublishProxyid.getDonacion(arg0_22idTemp);
if(getDonacion98mtemp == null){
%>
<%=getDonacion98mtemp %>
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
if(getDonacion98mtemp != null){
publicadores.LocalDateTime typefechaIngresada101 = getDonacion98mtemp.getFechaIngresada();
        if(typefechaIngresada101!= null){
        String tempfechaIngresada101 = typefechaIngresada101.toString();
        %>
        <%=tempfechaIngresada101%>
        <%
        }}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDonacion98mtemp != null){
java.lang.Integer typeid103 = getDonacion98mtemp.getId();
        String tempResultid103 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid103));
        %>
        <%= tempResultid103 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 107:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_25id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String direccion_26id=  request.getParameter("direccion116");
            java.lang.String direccion_26idTemp = null;
        if(!direccion_26id.equals("")){
         direccion_26idTemp  = direccion_26id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_24id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_24id.setFechaNacimiento(publicadores1LocalDateTime_25id);
        publicadores1DtBeneficiario_24id.setDireccion(direccion_26idTemp);
        %>
        <jsp:useBean id="publicadores1LocalDateTime_28id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_29id=  request.getParameter("id122");
            java.lang.Integer id_29idTemp = null;
        if(!id_29id.equals("")){
         id_29idTemp  = java.lang.Integer.valueOf(id_29id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_27id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_27id.setFechaIngresada(publicadores1LocalDateTime_28id);
        publicadores1DtDonacion_27id.setId(id_29idTemp);
        String fechaPreparacion_30id=  request.getParameter("fechaPreparacion124");
            java.util.Calendar fechaPreparacion_30idTemp = null;
        if(!fechaPreparacion_30id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion124 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion124  = dateFormatfechaPreparacion124.parse(fechaPreparacion_30id);
         fechaPreparacion_30idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_30idTemp.setTime(dateTempfechaPreparacion124);
        }
        String fechaEntrega_31id=  request.getParameter("fechaEntrega126");
            java.util.Calendar fechaEntrega_31idTemp = null;
        if(!fechaEntrega_31id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega126 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega126  = dateFormatfechaEntrega126.parse(fechaEntrega_31id);
         fechaEntrega_31idTemp = new java.util.GregorianCalendar();
        fechaEntrega_31idTemp.setTime(dateTempfechaEntrega126);
        }
        String id_32id=  request.getParameter("id128");
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
case 130:
        gotMethod = true;
        publicadores.DtBeneficiario[] listaBeneficiarios130mtemp = sampleControladorPublishProxyid.listaBeneficiarios();
if(listaBeneficiarios130mtemp == null){
%>
<%=listaBeneficiarios130mtemp %>
<%
}else{
        String tempreturnp131 = null;
        if(listaBeneficiarios130mtemp != null){
        java.util.List listreturnp131= java.util.Arrays.asList(listaBeneficiarios130mtemp);
        tempreturnp131 = listreturnp131.toString();
        }
        %>
        <%=tempreturnp131%>
        <%
}
break;
case 133:
        gotMethod = true;
        String arg0_33id=  request.getParameter("arg0138");
            java.lang.String arg0_33idTemp = null;
        if(!arg0_33id.equals("")){
         arg0_33idTemp  = arg0_33id;
        }
        publicadores.DtRepartidor getRepartidor133mtemp = sampleControladorPublishProxyid.getRepartidor(arg0_33idTemp);
if(getRepartidor133mtemp == null){
%>
<%=getRepartidor133mtemp %>
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
if(getRepartidor133mtemp != null){
java.lang.String typenumeroDeLicencia136 = getRepartidor133mtemp.getNumeroDeLicencia();
        String tempResultnumeroDeLicencia136 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenumeroDeLicencia136));
        %>
        <%= tempResultnumeroDeLicencia136 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 140:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_35id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_36id=  request.getParameter("id147");
            java.lang.Integer id_36idTemp = null;
        if(!id_36id.equals("")){
         id_36idTemp  = java.lang.Integer.valueOf(id_36id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_34id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_34id.setFechaIngresada(publicadores1LocalDateTime_35id);
        publicadores1DtDonacion_34id.setId(id_36idTemp);
        sampleControladorPublishProxyid.modificarDonacion(publicadores1DtDonacion_34id);
break;
case 149:
        gotMethod = true;
        String numeroDeLicencia_38id=  request.getParameter("numeroDeLicencia154");
            java.lang.String numeroDeLicencia_38idTemp = null;
        if(!numeroDeLicencia_38id.equals("")){
         numeroDeLicencia_38idTemp  = numeroDeLicencia_38id;
        }
        String direccion_39id=  request.getParameter("direccion156");
            java.lang.String direccion_39idTemp = null;
        if(!direccion_39id.equals("")){
         direccion_39idTemp  = direccion_39id;
        }
        %>
        <jsp:useBean id="publicadores1LocalDateTime_40id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String email_41id=  request.getParameter("email160");
            java.lang.String email_41idTemp = null;
        if(!email_41id.equals("")){
         email_41idTemp  = email_41id;
        }
        String pw_42id=  request.getParameter("pw162");
            java.lang.String pw_42idTemp = null;
        if(!pw_42id.equals("")){
         pw_42idTemp  = pw_42id;
        }
        String nombre_43id=  request.getParameter("nombre164");
            java.lang.String nombre_43idTemp = null;
        if(!nombre_43id.equals("")){
         nombre_43idTemp  = nombre_43id;
        }
        %>
        <jsp:useBean id="publicadores1DtUsrModificar_37id" scope="session" class="publicadores.DtUsrModificar" />
        <%
        publicadores1DtUsrModificar_37id.setNumeroDeLicencia(numeroDeLicencia_38idTemp);
        publicadores1DtUsrModificar_37id.setDireccion(direccion_39idTemp);
        publicadores1DtUsrModificar_37id.setFechaNacimiento(publicadores1LocalDateTime_40id);
        publicadores1DtUsrModificar_37id.setEmail(email_41idTemp);
        publicadores1DtUsrModificar_37id.setPw(pw_42idTemp);
        publicadores1DtUsrModificar_37id.setNombre(nombre_43idTemp);
        String arg1_44id=  request.getParameter("arg1166");
            java.lang.String arg1_44idTemp = null;
        if(!arg1_44id.equals("")){
         arg1_44idTemp  = arg1_44id;
        }
        String arg2_45id=  request.getParameter("arg2168");
            java.lang.String arg2_45idTemp = null;
        if(!arg2_45id.equals("")){
         arg2_45idTemp  = arg2_45id;
        }
        publicadores.EstadoBeneficiario publicadores1EstadoBeneficiario_46id = null;
        String arg4_47id=  request.getParameter("arg4172");
            java.lang.String arg4_47idTemp = null;
        if(!arg4_47id.equals("")){
         arg4_47idTemp  = arg4_47id;
        }
        %>
        <jsp:useBean id="publicadores1LocalDateTime_48id" scope="session" class="publicadores.LocalDateTime" />
        <%
        publicadores.Barrio publicadores1Barrio_49id = null;
        String arg7_50id=  request.getParameter("arg7178");
            java.lang.String arg7_50idTemp = null;
        if(!arg7_50id.equals("")){
         arg7_50idTemp  = arg7_50id;
        }
        String arg8_51id=  request.getParameter("arg8180");
            java.lang.String arg8_51idTemp = null;
        if(!arg8_51id.equals("")){
         arg8_51idTemp  = arg8_51id;
        }
        sampleControladorPublishProxyid.modificarUsuario(publicadores1DtUsrModificar_37id,arg1_44idTemp,arg2_45idTemp,publicadores1EstadoBeneficiario_46id,arg4_47idTemp,publicadores1LocalDateTime_48id,publicadores1Barrio_49id,arg7_50idTemp,arg8_51idTemp);
break;
case 182:
        gotMethod = true;
        publicadores.DtRepartidor[] listaRepartidores182mtemp = sampleControladorPublishProxyid.listaRepartidores();
if(listaRepartidores182mtemp == null){
%>
<%=listaRepartidores182mtemp %>
<%
}else{
        String tempreturnp183 = null;
        if(listaRepartidores182mtemp != null){
        java.util.List listreturnp183= java.util.Arrays.asList(listaRepartidores182mtemp);
        tempreturnp183 = listreturnp183.toString();
        }
        %>
        <%=tempreturnp183%>
        <%
}
break;
case 185:
        gotMethod = true;
        String arg0_52id=  request.getParameter("arg0192");
        int arg0_52idTemp  = Integer.parseInt(arg0_52id);
        publicadores.DtAlimento getAlimento185mtemp = sampleControladorPublishProxyid.getAlimento(arg0_52idTemp);
if(getAlimento185mtemp == null){
%>
<%=getAlimento185mtemp %>
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
if(getAlimento185mtemp != null){
java.lang.Integer typecantElementos188 = getAlimento185mtemp.getCantElementos();
        String tempResultcantElementos188 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecantElementos188));
        %>
        <%= tempResultcantElementos188 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcionProductos:</TD>
<TD>
<%
if(getAlimento185mtemp != null){
java.lang.String typedescripcionProductos190 = getAlimento185mtemp.getDescripcionProductos();
        String tempResultdescripcionProductos190 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcionProductos190));
        %>
        <%= tempResultdescripcionProductos190 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 194:
        gotMethod = true;
        String arg0_53id=  request.getParameter("arg0203");
        int arg0_53idTemp  = Integer.parseInt(arg0_53id);
        publicadores.DtArticulo getArticulo194mtemp = sampleControladorPublishProxyid.getArticulo(arg0_53idTemp);
if(getArticulo194mtemp == null){
%>
<%=getArticulo194mtemp %>
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
if(getArticulo194mtemp != null){
java.lang.String typedescripcion197 = getArticulo194mtemp.getDescripcion();
        String tempResultdescripcion197 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion197));
        %>
        <%= tempResultdescripcion197 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">peso:</TD>
<TD>
<%
if(getArticulo194mtemp != null){
%>
<%=getArticulo194mtemp.getPeso()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">dimensiones:</TD>
<TD>
<%
if(getArticulo194mtemp != null){
java.lang.String typedimensiones201 = getArticulo194mtemp.getDimensiones();
        String tempResultdimensiones201 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedimensiones201));
        %>
        <%= tempResultdimensiones201 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 205:
        gotMethod = true;
        String arg0_54id=  request.getParameter("arg0214");
            java.lang.String arg0_54idTemp = null;
        if(!arg0_54id.equals("")){
         arg0_54idTemp  = arg0_54id;
        }
        publicadores.DtUsuario getUsuario205mtemp = sampleControladorPublishProxyid.getUsuario(arg0_54idTemp);
if(getUsuario205mtemp == null){
%>
<%=getUsuario205mtemp %>
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
if(getUsuario205mtemp != null){
java.lang.String typeemail208 = getUsuario205mtemp.getEmail();
        String tempResultemail208 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail208));
        %>
        <%= tempResultemail208 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pw:</TD>
<TD>
<%
if(getUsuario205mtemp != null){
java.lang.String typepw210 = getUsuario205mtemp.getPw();
        String tempResultpw210 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepw210));
        %>
        <%= tempResultpw210 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getUsuario205mtemp != null){
java.lang.String typenombre212 = getUsuario205mtemp.getNombre();
        String tempResultnombre212 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre212));
        %>
        <%= tempResultnombre212 %>
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