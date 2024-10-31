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
        %>
        <jsp:useBean id="publicadores1LocalDateTime_5id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String direccion_6id=  request.getParameter("direccion29");
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
        String id_9id=  request.getParameter("id35");
            java.lang.Integer id_9idTemp = null;
        if(!id_9id.equals("")){
         id_9idTemp  = java.lang.Integer.valueOf(id_9id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_7id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_7id.setFechaIngresada(publicadores1LocalDateTime_8id);
        publicadores1DtDonacion_7id.setId(id_9idTemp);
        String fechaPreparacion_10id=  request.getParameter("fechaPreparacion37");
            java.util.Calendar fechaPreparacion_10idTemp = null;
        if(!fechaPreparacion_10id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion37 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion37  = dateFormatfechaPreparacion37.parse(fechaPreparacion_10id);
         fechaPreparacion_10idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_10idTemp.setTime(dateTempfechaPreparacion37);
        }
        String fechaEntrega_11id=  request.getParameter("fechaEntrega39");
            java.util.Calendar fechaEntrega_11idTemp = null;
        if(!fechaEntrega_11id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega39 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega39  = dateFormatfechaEntrega39.parse(fechaEntrega_11id);
         fechaEntrega_11idTemp = new java.util.GregorianCalendar();
        fechaEntrega_11idTemp.setTime(dateTempfechaEntrega39);
        }
        String id_12id=  request.getParameter("id41");
        int id_12idTemp  = Integer.parseInt(id_12id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_3id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_3id.setBeneficiario(publicadores1DtBeneficiario_4id);
        publicadores1DtDistribucion_3id.setDonacion(publicadores1DtDonacion_7id);
        publicadores1DtDistribucion_3id.setFechaPreparacion(fechaPreparacion_10idTemp);
        publicadores1DtDistribucion_3id.setFechaEntrega(fechaEntrega_11idTemp);
        publicadores1DtDistribucion_3id.setId(id_12idTemp);
        sampleControladorPublishProxyid.modificarDistribucion(publicadores1DtDistribucion_3id);
break;
case 43:
        gotMethod = true;
        String arg0_13id=  request.getParameter("arg050");
        int arg0_13idTemp  = Integer.parseInt(arg0_13id);
        publicadores.DtDonacion getDonacion43mtemp = sampleControladorPublishProxyid.getDonacion(arg0_13idTemp);
if(getDonacion43mtemp == null){
%>
<%=getDonacion43mtemp %>
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
if(getDonacion43mtemp != null){
publicadores.LocalDateTime typefechaIngresada46 = getDonacion43mtemp.getFechaIngresada();
        if(typefechaIngresada46!= null){
        String tempfechaIngresada46 = typefechaIngresada46.toString();
        %>
        <%=tempfechaIngresada46%>
        <%
        }}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDonacion43mtemp != null){
java.lang.Integer typeid48 = getDonacion43mtemp.getId();
        String tempResultid48 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid48));
        %>
        <%= tempResultid48 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 52:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_16id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String direccion_17id=  request.getParameter("direccion61");
            java.lang.String direccion_17idTemp = null;
        if(!direccion_17id.equals("")){
         direccion_17idTemp  = direccion_17id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_15id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_15id.setFechaNacimiento(publicadores1LocalDateTime_16id);
        publicadores1DtBeneficiario_15id.setDireccion(direccion_17idTemp);
        %>
        <jsp:useBean id="publicadores1LocalDateTime_19id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_20id=  request.getParameter("id67");
            java.lang.Integer id_20idTemp = null;
        if(!id_20id.equals("")){
         id_20idTemp  = java.lang.Integer.valueOf(id_20id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_18id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_18id.setFechaIngresada(publicadores1LocalDateTime_19id);
        publicadores1DtDonacion_18id.setId(id_20idTemp);
        String fechaPreparacion_21id=  request.getParameter("fechaPreparacion69");
            java.util.Calendar fechaPreparacion_21idTemp = null;
        if(!fechaPreparacion_21id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion69 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion69  = dateFormatfechaPreparacion69.parse(fechaPreparacion_21id);
         fechaPreparacion_21idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_21idTemp.setTime(dateTempfechaPreparacion69);
        }
        String fechaEntrega_22id=  request.getParameter("fechaEntrega71");
            java.util.Calendar fechaEntrega_22idTemp = null;
        if(!fechaEntrega_22id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega71 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega71  = dateFormatfechaEntrega71.parse(fechaEntrega_22id);
         fechaEntrega_22idTemp = new java.util.GregorianCalendar();
        fechaEntrega_22idTemp.setTime(dateTempfechaEntrega71);
        }
        String id_23id=  request.getParameter("id73");
        int id_23idTemp  = Integer.parseInt(id_23id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_14id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_14id.setBeneficiario(publicadores1DtBeneficiario_15id);
        publicadores1DtDistribucion_14id.setDonacion(publicadores1DtDonacion_18id);
        publicadores1DtDistribucion_14id.setFechaPreparacion(fechaPreparacion_21idTemp);
        publicadores1DtDistribucion_14id.setFechaEntrega(fechaEntrega_22idTemp);
        publicadores1DtDistribucion_14id.setId(id_23idTemp);
        sampleControladorPublishProxyid.altaDistribucion(publicadores1DtDistribucion_14id);
break;
case 75:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_25id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_26id=  request.getParameter("id82");
            java.lang.Integer id_26idTemp = null;
        if(!id_26id.equals("")){
         id_26idTemp  = java.lang.Integer.valueOf(id_26id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_24id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_24id.setFechaIngresada(publicadores1LocalDateTime_25id);
        publicadores1DtDonacion_24id.setId(id_26idTemp);
        sampleControladorPublishProxyid.altaDonacion(publicadores1DtDonacion_24id);
break;
case 84:
        gotMethod = true;
        String email_28id=  request.getParameter("email89");
            java.lang.String email_28idTemp = null;
        if(!email_28id.equals("")){
         email_28idTemp  = email_28id;
        }
        String pw_29id=  request.getParameter("pw91");
            java.lang.String pw_29idTemp = null;
        if(!pw_29id.equals("")){
         pw_29idTemp  = pw_29id;
        }
        String nombre_30id=  request.getParameter("nombre93");
            java.lang.String nombre_30idTemp = null;
        if(!nombre_30id.equals("")){
         nombre_30idTemp  = nombre_30id;
        }
        %>
        <jsp:useBean id="publicadores1DtUsuario_27id" scope="session" class="publicadores.DtUsuario" />
        <%
        publicadores1DtUsuario_27id.setEmail(email_28idTemp);
        publicadores1DtUsuario_27id.setPw(pw_29idTemp);
        publicadores1DtUsuario_27id.setNombre(nombre_30idTemp);
        sampleControladorPublishProxyid.altaUsuario(publicadores1DtUsuario_27id);
break;
case 95:
        gotMethod = true;
        String arg0_31id=  request.getParameter("arg0102");
            java.lang.String arg0_31idTemp = null;
        if(!arg0_31id.equals("")){
         arg0_31idTemp  = arg0_31id;
        }
        publicadores.DtBeneficiario getBeneficiario95mtemp = sampleControladorPublishProxyid.getBeneficiario(arg0_31idTemp);
if(getBeneficiario95mtemp == null){
%>
<%=getBeneficiario95mtemp %>
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
if(getBeneficiario95mtemp != null){
publicadores.LocalDateTime typefechaNacimiento98 = getBeneficiario95mtemp.getFechaNacimiento();
        if(typefechaNacimiento98!= null){
        String tempfechaNacimiento98 = typefechaNacimiento98.toString();
        %>
        <%=tempfechaNacimiento98%>
        <%
        }}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getBeneficiario95mtemp != null){
java.lang.String typedireccion100 = getBeneficiario95mtemp.getDireccion();
        String tempResultdireccion100 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion100));
        %>
        <%= tempResultdireccion100 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 104:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_33id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_34id=  request.getParameter("id111");
            java.lang.Integer id_34idTemp = null;
        if(!id_34id.equals("")){
         id_34idTemp  = java.lang.Integer.valueOf(id_34id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_32id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_32id.setFechaIngresada(publicadores1LocalDateTime_33id);
        publicadores1DtDonacion_32id.setId(id_34idTemp);
        sampleControladorPublishProxyid.modificarDonacion(publicadores1DtDonacion_32id);
break;
case 113:
        gotMethod = true;
        int[] listarDonaciones113mtemp = sampleControladorPublishProxyid.listarDonaciones();
if(listarDonaciones113mtemp == null){
%>
<%=listarDonaciones113mtemp %>
<%
}else{
        String tempreturnp114 = "[";        for(int ireturnp114=0;ireturnp114< listarDonaciones113mtemp.length;ireturnp114++){
            tempreturnp114 = tempreturnp114 + listarDonaciones113mtemp[ireturnp114] + ",";
        }
        int lengthreturnp114 = tempreturnp114.length();
        tempreturnp114 = tempreturnp114.substring(0,(lengthreturnp114 - 1)) + "]";
        %>
        <%=tempreturnp114%>
        <%
}
break;
case 116:
        gotMethod = true;
        String arg0_35id=  request.getParameter("arg0137");
        int arg0_35idTemp  = Integer.parseInt(arg0_35id);
        publicadores.DtDistribucion getDistribucion116mtemp = sampleControladorPublishProxyid.getDistribucion(arg0_35idTemp);
if(getDistribucion116mtemp == null){
%>
<%=getDistribucion116mtemp %>
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
if(getDistribucion116mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion116mtemp.getBeneficiario();
if(tebece0 != null){
publicadores.LocalDateTime typefechaNacimiento121 = tebece0.getFechaNacimiento();
        if(typefechaNacimiento121!= null){
        String tempfechaNacimiento121 = typefechaNacimiento121.toString();
        %>
        <%=tempfechaNacimiento121%>
        <%
        }}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getDistribucion116mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion116mtemp.getBeneficiario();
if(tebece0 != null){
java.lang.String typedireccion123 = tebece0.getDireccion();
        String tempResultdireccion123 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion123));
        %>
        <%= tempResultdireccion123 %>
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
if(getDistribucion116mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion116mtemp.getDonacion();
if(tebece0 != null){
publicadores.LocalDateTime typefechaIngresada127 = tebece0.getFechaIngresada();
        if(typefechaIngresada127!= null){
        String tempfechaIngresada127 = typefechaIngresada127.toString();
        %>
        <%=tempfechaIngresada127%>
        <%
        }}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion116mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion116mtemp.getDonacion();
if(tebece0 != null){
java.lang.Integer typeid129 = tebece0.getId();
        String tempResultid129 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid129));
        %>
        <%= tempResultid129 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPreparacion:</TD>
<TD>
<%
if(getDistribucion116mtemp != null){
java.util.Calendar typefechaPreparacion131 = getDistribucion116mtemp.getFechaPreparacion();
        java.text.DateFormat dateFormatfechaPreparacion131 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaPreparacion131 = typefechaPreparacion131.getTime();
        String tempResultfechaPreparacion131 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaPreparacion131.format(datefechaPreparacion131));
        %>
        <%= tempResultfechaPreparacion131 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaEntrega:</TD>
<TD>
<%
if(getDistribucion116mtemp != null){
java.util.Calendar typefechaEntrega133 = getDistribucion116mtemp.getFechaEntrega();
        java.text.DateFormat dateFormatfechaEntrega133 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaEntrega133 = typefechaEntrega133.getTime();
        String tempResultfechaEntrega133 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaEntrega133.format(datefechaEntrega133));
        %>
        <%= tempResultfechaEntrega133 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion116mtemp != null){
%>
<%=getDistribucion116mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
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
        String numeroDeLicencia_37id=  request.getParameter("numeroDeLicencia147");
            java.lang.String numeroDeLicencia_37idTemp = null;
        if(!numeroDeLicencia_37id.equals("")){
         numeroDeLicencia_37idTemp  = numeroDeLicencia_37id;
        }
        String direccion_38id=  request.getParameter("direccion149");
            java.lang.String direccion_38idTemp = null;
        if(!direccion_38id.equals("")){
         direccion_38idTemp  = direccion_38id;
        }
        %>
        <jsp:useBean id="publicadores1LocalDateTime_39id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String email_40id=  request.getParameter("email153");
            java.lang.String email_40idTemp = null;
        if(!email_40id.equals("")){
         email_40idTemp  = email_40id;
        }
        String pw_41id=  request.getParameter("pw155");
            java.lang.String pw_41idTemp = null;
        if(!pw_41id.equals("")){
         pw_41idTemp  = pw_41id;
        }
        String nombre_42id=  request.getParameter("nombre157");
            java.lang.String nombre_42idTemp = null;
        if(!nombre_42id.equals("")){
         nombre_42idTemp  = nombre_42id;
        }
        %>
        <jsp:useBean id="publicadores1DtUsrModificar_36id" scope="session" class="publicadores.DtUsrModificar" />
        <%
        publicadores1DtUsrModificar_36id.setNumeroDeLicencia(numeroDeLicencia_37idTemp);
        publicadores1DtUsrModificar_36id.setDireccion(direccion_38idTemp);
        publicadores1DtUsrModificar_36id.setFechaNacimiento(publicadores1LocalDateTime_39id);
        publicadores1DtUsrModificar_36id.setEmail(email_40idTemp);
        publicadores1DtUsrModificar_36id.setPw(pw_41idTemp);
        publicadores1DtUsrModificar_36id.setNombre(nombre_42idTemp);
        String arg1_43id=  request.getParameter("arg1159");
            java.lang.String arg1_43idTemp = null;
        if(!arg1_43id.equals("")){
         arg1_43idTemp  = arg1_43id;
        }
        String arg2_44id=  request.getParameter("arg2161");
            java.lang.String arg2_44idTemp = null;
        if(!arg2_44id.equals("")){
         arg2_44idTemp  = arg2_44id;
        }
        publicadores.EstadoBeneficiario publicadores1EstadoBeneficiario_45id = null;
        String arg4_46id=  request.getParameter("arg4165");
            java.lang.String arg4_46idTemp = null;
        if(!arg4_46id.equals("")){
         arg4_46idTemp  = arg4_46id;
        }
        %>
        <jsp:useBean id="publicadores1LocalDateTime_47id" scope="session" class="publicadores.LocalDateTime" />
        <%
        publicadores.Barrio publicadores1Barrio_48id = null;
        String arg7_49id=  request.getParameter("arg7171");
            java.lang.String arg7_49idTemp = null;
        if(!arg7_49id.equals("")){
         arg7_49idTemp  = arg7_49id;
        }
        String arg8_50id=  request.getParameter("arg8173");
            java.lang.String arg8_50idTemp = null;
        if(!arg8_50id.equals("")){
         arg8_50idTemp  = arg8_50id;
        }
        sampleControladorPublishProxyid.modificarUsuario(publicadores1DtUsrModificar_36id,arg1_43idTemp,arg2_44idTemp,publicadores1EstadoBeneficiario_45id,arg4_46idTemp,publicadores1LocalDateTime_47id,publicadores1Barrio_48id,arg7_49idTemp,arg8_50idTemp);
break;
case 175:
        gotMethod = true;
        publicadores.DtRepartidor[] listaRepartidores175mtemp = sampleControladorPublishProxyid.listaRepartidores();
if(listaRepartidores175mtemp == null){
%>
<%=listaRepartidores175mtemp %>
<%
}else{
        String tempreturnp176 = null;
        if(listaRepartidores175mtemp != null){
        java.util.List listreturnp176= java.util.Arrays.asList(listaRepartidores175mtemp);
        tempreturnp176 = listreturnp176.toString();
        }
        %>
        <%=tempreturnp176%>
        <%
}
break;
case 178:
        gotMethod = true;
        String arg0_51id=  request.getParameter("arg0185");
        int arg0_51idTemp  = Integer.parseInt(arg0_51id);
        publicadores.DtAlimento getAlimento178mtemp = sampleControladorPublishProxyid.getAlimento(arg0_51idTemp);
if(getAlimento178mtemp == null){
%>
<%=getAlimento178mtemp %>
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
if(getAlimento178mtemp != null){
java.lang.Integer typecantElementos181 = getAlimento178mtemp.getCantElementos();
        String tempResultcantElementos181 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecantElementos181));
        %>
        <%= tempResultcantElementos181 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">descripcionProductos:</TD>
<TD>
<%
if(getAlimento178mtemp != null){
java.lang.String typedescripcionProductos183 = getAlimento178mtemp.getDescripcionProductos();
        String tempResultdescripcionProductos183 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedescripcionProductos183));
        %>
        <%= tempResultdescripcionProductos183 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 187:
        gotMethod = true;
        String arg0_52id=  request.getParameter("arg0196");
            java.lang.String arg0_52idTemp = null;
        if(!arg0_52id.equals("")){
         arg0_52idTemp  = arg0_52id;
        }
        publicadores.DtUsuario getUsuario187mtemp = sampleControladorPublishProxyid.getUsuario(arg0_52idTemp);
if(getUsuario187mtemp == null){
%>
<%=getUsuario187mtemp %>
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
if(getUsuario187mtemp != null){
java.lang.String typeemail190 = getUsuario187mtemp.getEmail();
        String tempResultemail190 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail190));
        %>
        <%= tempResultemail190 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pw:</TD>
<TD>
<%
if(getUsuario187mtemp != null){
java.lang.String typepw192 = getUsuario187mtemp.getPw();
        String tempResultpw192 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepw192));
        %>
        <%= tempResultpw192 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD>
<%
if(getUsuario187mtemp != null){
java.lang.String typenombre194 = getUsuario187mtemp.getNombre();
        String tempResultnombre194 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenombre194));
        %>
        <%= tempResultnombre194 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 198:
        gotMethod = true;
        String arg0_53id=  request.getParameter("arg0203");
            java.lang.String arg0_53idTemp = null;
        if(!arg0_53id.equals("")){
         arg0_53idTemp  = arg0_53id;
        }
        publicadores.DtRepartidor getRepartidor198mtemp = sampleControladorPublishProxyid.getRepartidor(arg0_53idTemp);
if(getRepartidor198mtemp == null){
%>
<%=getRepartidor198mtemp %>
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
if(getRepartidor198mtemp != null){
java.lang.String typenumeroDeLicencia201 = getRepartidor198mtemp.getNumeroDeLicencia();
        String tempResultnumeroDeLicencia201 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenumeroDeLicencia201));
        %>
        <%= tempResultnumeroDeLicencia201 %>
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