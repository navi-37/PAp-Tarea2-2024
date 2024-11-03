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
        publicadores.DtDonacion getDonacion13mtemp = sampleControladorPublishProxyid.getDonacion(arg0_1idTemp);
if(getDonacion13mtemp == null){
%>
<%=getDonacion13mtemp %>
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
if(getDonacion13mtemp != null){
publicadores.LocalDateTime typefechaIngresada16 = getDonacion13mtemp.getFechaIngresada();
        if(typefechaIngresada16!= null){
        String tempfechaIngresada16 = typefechaIngresada16.toString();
        %>
        <%=tempfechaIngresada16%>
        <%
        }}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDonacion13mtemp != null){
java.lang.Integer typeid18 = getDonacion13mtemp.getId();
        String tempResultid18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid18));
        %>
        <%= tempResultid18 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 22:
        gotMethod = true;
        String arg0_2id=  request.getParameter("arg043");
        int arg0_2idTemp  = Integer.parseInt(arg0_2id);
        publicadores.DtDistribucion getDistribucion22mtemp = sampleControladorPublishProxyid.getDistribucion(arg0_2idTemp);
if(getDistribucion22mtemp == null){
%>
<%=getDistribucion22mtemp %>
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
if(getDistribucion22mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion22mtemp.getBeneficiario();
if(tebece0 != null){
publicadores.LocalDateTime typefechaNacimiento27 = tebece0.getFechaNacimiento();
        if(typefechaNacimiento27!= null){
        String tempfechaNacimiento27 = typefechaNacimiento27.toString();
        %>
        <%=tempfechaNacimiento27%>
        <%
        }}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getDistribucion22mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion22mtemp.getBeneficiario();
if(tebece0 != null){
java.lang.String typedireccion29 = tebece0.getDireccion();
        String tempResultdireccion29 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion29));
        %>
        <%= tempResultdireccion29 %>
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
if(getDistribucion22mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion22mtemp.getDonacion();
if(tebece0 != null){
publicadores.LocalDateTime typefechaIngresada33 = tebece0.getFechaIngresada();
        if(typefechaIngresada33!= null){
        String tempfechaIngresada33 = typefechaIngresada33.toString();
        %>
        <%=tempfechaIngresada33%>
        <%
        }}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion22mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion22mtemp.getDonacion();
if(tebece0 != null){
java.lang.Integer typeid35 = tebece0.getId();
        String tempResultid35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid35));
        %>
        <%= tempResultid35 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPreparacion:</TD>
<TD>
<%
if(getDistribucion22mtemp != null){
java.util.Calendar typefechaPreparacion37 = getDistribucion22mtemp.getFechaPreparacion();
        java.text.DateFormat dateFormatfechaPreparacion37 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaPreparacion37 = typefechaPreparacion37.getTime();
        String tempResultfechaPreparacion37 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaPreparacion37.format(datefechaPreparacion37));
        %>
        <%= tempResultfechaPreparacion37 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaEntrega:</TD>
<TD>
<%
if(getDistribucion22mtemp != null){
java.util.Calendar typefechaEntrega39 = getDistribucion22mtemp.getFechaEntrega();
        java.text.DateFormat dateFormatfechaEntrega39 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaEntrega39 = typefechaEntrega39.getTime();
        String tempResultfechaEntrega39 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaEntrega39.format(datefechaEntrega39));
        %>
        <%= tempResultfechaEntrega39 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion22mtemp != null){
%>
<%=getDistribucion22mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 45:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_5id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String direccion_6id=  request.getParameter("direccion54");
            java.lang.String direccion_6idTemp = null;
        if(!direccion_6id.equals("")){
         direccion_6idTemp  = direccion_6id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_4id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_4id.setFechaNacimiento(publicadores1LocalDateTime_5id);
        publicadores1DtBeneficiario_4id.setDireccion(direccion_6idTemp);
        %>
        <jsp:useBean id="publicadores1LocalDateTime_8id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_9id=  request.getParameter("id60");
            java.lang.Integer id_9idTemp = null;
        if(!id_9id.equals("")){
         id_9idTemp  = java.lang.Integer.valueOf(id_9id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_7id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_7id.setFechaIngresada(publicadores1LocalDateTime_8id);
        publicadores1DtDonacion_7id.setId(id_9idTemp);
        String fechaPreparacion_10id=  request.getParameter("fechaPreparacion62");
            java.util.Calendar fechaPreparacion_10idTemp = null;
        if(!fechaPreparacion_10id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion62 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion62  = dateFormatfechaPreparacion62.parse(fechaPreparacion_10id);
         fechaPreparacion_10idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_10idTemp.setTime(dateTempfechaPreparacion62);
        }
        String fechaEntrega_11id=  request.getParameter("fechaEntrega64");
            java.util.Calendar fechaEntrega_11idTemp = null;
        if(!fechaEntrega_11id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega64 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega64  = dateFormatfechaEntrega64.parse(fechaEntrega_11id);
         fechaEntrega_11idTemp = new java.util.GregorianCalendar();
        fechaEntrega_11idTemp.setTime(dateTempfechaEntrega64);
        }
        String id_12id=  request.getParameter("id66");
        int id_12idTemp  = Integer.parseInt(id_12id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_3id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_3id.setBeneficiario(publicadores1DtBeneficiario_4id);
        publicadores1DtDistribucion_3id.setDonacion(publicadores1DtDonacion_7id);
        publicadores1DtDistribucion_3id.setFechaPreparacion(fechaPreparacion_10idTemp);
        publicadores1DtDistribucion_3id.setFechaEntrega(fechaEntrega_11idTemp);
        publicadores1DtDistribucion_3id.setId(id_12idTemp);
        sampleControladorPublishProxyid.altaDistribucion(publicadores1DtDistribucion_3id);
break;
case 68:
        gotMethod = true;
        String arg0_13id=  request.getParameter("arg075");
            java.lang.String arg0_13idTemp = null;
        if(!arg0_13id.equals("")){
         arg0_13idTemp  = arg0_13id;
        }
        publicadores.DtBeneficiario getBeneficiario68mtemp = sampleControladorPublishProxyid.getBeneficiario(arg0_13idTemp);
if(getBeneficiario68mtemp == null){
%>
<%=getBeneficiario68mtemp %>
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
if(getBeneficiario68mtemp != null){
publicadores.LocalDateTime typefechaNacimiento71 = getBeneficiario68mtemp.getFechaNacimiento();
        if(typefechaNacimiento71!= null){
        String tempfechaNacimiento71 = typefechaNacimiento71.toString();
        %>
        <%=tempfechaNacimiento71%>
        <%
        }}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getBeneficiario68mtemp != null){
java.lang.String typedireccion73 = getBeneficiario68mtemp.getDireccion();
        String tempResultdireccion73 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion73));
        %>
        <%= tempResultdireccion73 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 77:
        gotMethod = true;
        String email_15id=  request.getParameter("email82");
            java.lang.String email_15idTemp = null;
        if(!email_15id.equals("")){
         email_15idTemp  = email_15id;
        }
        String pw_16id=  request.getParameter("pw84");
            java.lang.String pw_16idTemp = null;
        if(!pw_16id.equals("")){
         pw_16idTemp  = pw_16id;
        }
        String nombre_17id=  request.getParameter("nombre86");
            java.lang.String nombre_17idTemp = null;
        if(!nombre_17id.equals("")){
         nombre_17idTemp  = nombre_17id;
        }
        %>
        <jsp:useBean id="publicadores1DtUsuario_14id" scope="session" class="publicadores.DtUsuario" />
        <%
        publicadores1DtUsuario_14id.setEmail(email_15idTemp);
        publicadores1DtUsuario_14id.setPw(pw_16idTemp);
        publicadores1DtUsuario_14id.setNombre(nombre_17idTemp);
        sampleControladorPublishProxyid.altaUsuario(publicadores1DtUsuario_14id);
break;
case 88:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_19id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_20id=  request.getParameter("id95");
            java.lang.Integer id_20idTemp = null;
        if(!id_20id.equals("")){
         id_20idTemp  = java.lang.Integer.valueOf(id_20id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_18id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_18id.setFechaIngresada(publicadores1LocalDateTime_19id);
        publicadores1DtDonacion_18id.setId(id_20idTemp);
        sampleControladorPublishProxyid.altaDonacion(publicadores1DtDonacion_18id);
break;
case 97:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_23id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String direccion_24id=  request.getParameter("direccion106");
            java.lang.String direccion_24idTemp = null;
        if(!direccion_24id.equals("")){
         direccion_24idTemp  = direccion_24id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_22id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_22id.setFechaNacimiento(publicadores1LocalDateTime_23id);
        publicadores1DtBeneficiario_22id.setDireccion(direccion_24idTemp);
        %>
        <jsp:useBean id="publicadores1LocalDateTime_26id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_27id=  request.getParameter("id112");
            java.lang.Integer id_27idTemp = null;
        if(!id_27id.equals("")){
         id_27idTemp  = java.lang.Integer.valueOf(id_27id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_25id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_25id.setFechaIngresada(publicadores1LocalDateTime_26id);
        publicadores1DtDonacion_25id.setId(id_27idTemp);
        String fechaPreparacion_28id=  request.getParameter("fechaPreparacion114");
            java.util.Calendar fechaPreparacion_28idTemp = null;
        if(!fechaPreparacion_28id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion114 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion114  = dateFormatfechaPreparacion114.parse(fechaPreparacion_28id);
         fechaPreparacion_28idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_28idTemp.setTime(dateTempfechaPreparacion114);
        }
        String fechaEntrega_29id=  request.getParameter("fechaEntrega116");
            java.util.Calendar fechaEntrega_29idTemp = null;
        if(!fechaEntrega_29id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega116 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega116  = dateFormatfechaEntrega116.parse(fechaEntrega_29id);
         fechaEntrega_29idTemp = new java.util.GregorianCalendar();
        fechaEntrega_29idTemp.setTime(dateTempfechaEntrega116);
        }
        String id_30id=  request.getParameter("id118");
        int id_30idTemp  = Integer.parseInt(id_30id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_21id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_21id.setBeneficiario(publicadores1DtBeneficiario_22id);
        publicadores1DtDistribucion_21id.setDonacion(publicadores1DtDonacion_25id);
        publicadores1DtDistribucion_21id.setFechaPreparacion(fechaPreparacion_28idTemp);
        publicadores1DtDistribucion_21id.setFechaEntrega(fechaEntrega_29idTemp);
        publicadores1DtDistribucion_21id.setId(id_30idTemp);
        sampleControladorPublishProxyid.modificarDistribucion(publicadores1DtDistribucion_21id);
break;
case 120:
        gotMethod = true;
        String arg0_31id=  request.getParameter("arg0123");
            java.util.Calendar arg0_31idTemp = null;
        if(!arg0_31id.equals("")){
        java.text.DateFormat dateFormatarg0123 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg0123  = dateFormatarg0123.parse(arg0_31id);
         arg0_31idTemp = new java.util.GregorianCalendar();
        arg0_31idTemp.setTime(dateTemparg0123);
        }
        String arg1_32id=  request.getParameter("arg1125");
            java.util.Calendar arg1_32idTemp = null;
        if(!arg1_32id.equals("")){
        java.text.DateFormat dateFormatarg1125 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg1125  = dateFormatarg1125.parse(arg1_32id);
         arg1_32idTemp = new java.util.GregorianCalendar();
        arg1_32idTemp.setTime(dateTemparg1125);
        }
        publicadores.DtReporte[] reporte120mtemp = sampleControladorPublishProxyid.reporte(arg0_31idTemp,arg1_32idTemp);
if(reporte120mtemp == null){
%>
<%=reporte120mtemp %>
<%
}else{
        String tempreturnp121 = null;
        if(reporte120mtemp != null){
        java.util.List listreturnp121= java.util.Arrays.asList(reporte120mtemp);
        tempreturnp121 = listreturnp121.toString();
        }
        %>
        <%=tempreturnp121%>
        <%
}
break;
case 127:
        gotMethod = true;
        int[] listarDonaciones127mtemp = sampleControladorPublishProxyid.listarDonaciones();
if(listarDonaciones127mtemp == null){
%>
<%=listarDonaciones127mtemp %>
<%
}else{
        String tempreturnp128 = "[";        for(int ireturnp128=0;ireturnp128< listarDonaciones127mtemp.length;ireturnp128++){
            tempreturnp128 = tempreturnp128 + listarDonaciones127mtemp[ireturnp128] + ",";
        }
        int lengthreturnp128 = tempreturnp128.length();
        tempreturnp128 = tempreturnp128.substring(0,(lengthreturnp128 - 1)) + "]";
        %>
        <%=tempreturnp128%>
        <%
}
break;
case 130:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_34id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_35id=  request.getParameter("id137");
            java.lang.Integer id_35idTemp = null;
        if(!id_35id.equals("")){
         id_35idTemp  = java.lang.Integer.valueOf(id_35id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_33id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_33id.setFechaIngresada(publicadores1LocalDateTime_34id);
        publicadores1DtDonacion_33id.setId(id_35idTemp);
        sampleControladorPublishProxyid.modificarDonacion(publicadores1DtDonacion_33id);
break;
case 139:
        gotMethod = true;
        publicadores.DtBeneficiario[] listaBeneficiarios139mtemp = sampleControladorPublishProxyid.listaBeneficiarios();
if(listaBeneficiarios139mtemp == null){
%>
<%=listaBeneficiarios139mtemp %>
<%
}else{
        String tempreturnp140 = null;
        if(listaBeneficiarios139mtemp != null){
        java.util.List listreturnp140= java.util.Arrays.asList(listaBeneficiarios139mtemp);
        tempreturnp140 = listreturnp140.toString();
        }
        %>
        <%=tempreturnp140%>
        <%
}
break;
case 142:
        gotMethod = true;
        publicadores.DtRepartidor[] listaRepartidores142mtemp = sampleControladorPublishProxyid.listaRepartidores();
if(listaRepartidores142mtemp == null){
%>
<%=listaRepartidores142mtemp %>
<%
}else{
        String tempreturnp143 = null;
        if(listaRepartidores142mtemp != null){
        java.util.List listreturnp143= java.util.Arrays.asList(listaRepartidores142mtemp);
        tempreturnp143 = listreturnp143.toString();
        }
        %>
        <%=tempreturnp143%>
        <%
}
break;
case 145:
        gotMethod = true;
        String arg0_36id=  request.getParameter("arg0150");
            java.lang.String arg0_36idTemp = null;
        if(!arg0_36id.equals("")){
         arg0_36idTemp  = arg0_36id;
        }
        publicadores.DtRepartidor getRepartidor145mtemp = sampleControladorPublishProxyid.getRepartidor(arg0_36idTemp);
if(getRepartidor145mtemp == null){
%>
<%=getRepartidor145mtemp %>
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
if(getRepartidor145mtemp != null){
java.lang.String typenumeroDeLicencia148 = getRepartidor145mtemp.getNumeroDeLicencia();
        String tempResultnumeroDeLicencia148 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenumeroDeLicencia148));
        %>
        <%= tempResultnumeroDeLicencia148 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 152:
        gotMethod = true;
        String numeroDeLicencia_38id=  request.getParameter("numeroDeLicencia157");
            java.lang.String numeroDeLicencia_38idTemp = null;
        if(!numeroDeLicencia_38id.equals("")){
         numeroDeLicencia_38idTemp  = numeroDeLicencia_38id;
        }
        String direccion_39id=  request.getParameter("direccion159");
            java.lang.String direccion_39idTemp = null;
        if(!direccion_39id.equals("")){
         direccion_39idTemp  = direccion_39id;
        }
        %>
        <jsp:useBean id="publicadores1LocalDateTime_40id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String email_41id=  request.getParameter("email163");
            java.lang.String email_41idTemp = null;
        if(!email_41id.equals("")){
         email_41idTemp  = email_41id;
        }
        String pw_42id=  request.getParameter("pw165");
            java.lang.String pw_42idTemp = null;
        if(!pw_42id.equals("")){
         pw_42idTemp  = pw_42id;
        }
        String nombre_43id=  request.getParameter("nombre167");
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
        String arg1_44id=  request.getParameter("arg1169");
            java.lang.String arg1_44idTemp = null;
        if(!arg1_44id.equals("")){
         arg1_44idTemp  = arg1_44id;
        }
        String arg2_45id=  request.getParameter("arg2171");
            java.lang.String arg2_45idTemp = null;
        if(!arg2_45id.equals("")){
         arg2_45idTemp  = arg2_45id;
        }
        publicadores.EstadoBeneficiario publicadores1EstadoBeneficiario_46id = null;
        String arg4_47id=  request.getParameter("arg4175");
            java.lang.String arg4_47idTemp = null;
        if(!arg4_47id.equals("")){
         arg4_47idTemp  = arg4_47id;
        }
        %>
        <jsp:useBean id="publicadores1LocalDateTime_48id" scope="session" class="publicadores.LocalDateTime" />
        <%
        publicadores.Barrio publicadores1Barrio_49id = null;
        String arg7_50id=  request.getParameter("arg7181");
            java.lang.String arg7_50idTemp = null;
        if(!arg7_50id.equals("")){
         arg7_50idTemp  = arg7_50id;
        }
        String arg8_51id=  request.getParameter("arg8183");
            java.lang.String arg8_51idTemp = null;
        if(!arg8_51id.equals("")){
         arg8_51idTemp  = arg8_51id;
        }
        sampleControladorPublishProxyid.modificarUsuario(publicadores1DtUsrModificar_37id,arg1_44idTemp,arg2_45idTemp,publicadores1EstadoBeneficiario_46id,arg4_47idTemp,publicadores1LocalDateTime_48id,publicadores1Barrio_49id,arg7_50idTemp,arg8_51idTemp);
break;
case 185:
        gotMethod = true;
        String arg0_52id=  request.getParameter("arg0194");
        int arg0_52idTemp  = Integer.parseInt(arg0_52id);
        publicadores.DtArticulo getArticulo185mtemp = sampleControladorPublishProxyid.getArticulo(arg0_52idTemp);
if(getArticulo185mtemp == null){
%>
<%=getArticulo185mtemp %>
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
if(getArticulo185mtemp != null){
java.lang.String typedescripcion188 = getArticulo185mtemp.getDescripcion();
        String tempResultdescripcion188 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcion188));
        %>
        <%= tempResultdescripcion188 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">peso:</TD>
<TD>
<%
if(getArticulo185mtemp != null){
%>
<%=getArticulo185mtemp.getPeso()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">dimensiones:</TD>
<TD>
<%
if(getArticulo185mtemp != null){
java.lang.String typedimensiones192 = getArticulo185mtemp.getDimensiones();
        String tempResultdimensiones192 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedimensiones192));
        %>
        <%= tempResultdimensiones192 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 196:
        gotMethod = true;
        String arg0_53id=  request.getParameter("arg0203");
        int arg0_53idTemp  = Integer.parseInt(arg0_53id);
        publicadores.DtAlimento getAlimento196mtemp = sampleControladorPublishProxyid.getAlimento(arg0_53idTemp);
if(getAlimento196mtemp == null){
%>
<%=getAlimento196mtemp %>
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
if(getAlimento196mtemp != null){
java.lang.Integer typecantElementos199 = getAlimento196mtemp.getCantElementos();
        String tempResultcantElementos199 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecantElementos199));
        %>
        <%= tempResultcantElementos199 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcionProductos:</TD>
<TD>
<%
if(getAlimento196mtemp != null){
java.lang.String typedescripcionProductos201 = getAlimento196mtemp.getDescripcionProductos();
        String tempResultdescripcionProductos201 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcionProductos201));
        %>
        <%= tempResultdescripcionProductos201 %>
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