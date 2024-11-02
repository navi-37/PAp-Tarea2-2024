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
        <jsp:useBean id="publicadores1LocalDateTime_4id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_5id=  request.getParameter("id27");
            java.lang.Integer id_5idTemp = null;
        if(!id_5id.equals("")){
         id_5idTemp  = java.lang.Integer.valueOf(id_5id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_3id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_3id.setFechaIngresada(publicadores1LocalDateTime_4id);
        publicadores1DtDonacion_3id.setId(id_5idTemp);
        sampleControladorPublishProxyid.altaDonacion(publicadores1DtDonacion_3id);
break;
case 29:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_8id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String direccion_9id=  request.getParameter("direccion38");
            java.lang.String direccion_9idTemp = null;
        if(!direccion_9id.equals("")){
         direccion_9idTemp  = direccion_9id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_7id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_7id.setFechaNacimiento(publicadores1LocalDateTime_8id);
        publicadores1DtBeneficiario_7id.setDireccion(direccion_9idTemp);
        %>
        <jsp:useBean id="publicadores1LocalDateTime_11id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_12id=  request.getParameter("id44");
            java.lang.Integer id_12idTemp = null;
        if(!id_12id.equals("")){
         id_12idTemp  = java.lang.Integer.valueOf(id_12id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_10id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_10id.setFechaIngresada(publicadores1LocalDateTime_11id);
        publicadores1DtDonacion_10id.setId(id_12idTemp);
        String fechaPreparacion_13id=  request.getParameter("fechaPreparacion46");
            java.util.Calendar fechaPreparacion_13idTemp = null;
        if(!fechaPreparacion_13id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion46 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion46  = dateFormatfechaPreparacion46.parse(fechaPreparacion_13id);
         fechaPreparacion_13idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_13idTemp.setTime(dateTempfechaPreparacion46);
        }
        String fechaEntrega_14id=  request.getParameter("fechaEntrega48");
            java.util.Calendar fechaEntrega_14idTemp = null;
        if(!fechaEntrega_14id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega48 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega48  = dateFormatfechaEntrega48.parse(fechaEntrega_14id);
         fechaEntrega_14idTemp = new java.util.GregorianCalendar();
        fechaEntrega_14idTemp.setTime(dateTempfechaEntrega48);
        }
        String id_15id=  request.getParameter("id50");
        int id_15idTemp  = Integer.parseInt(id_15id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_6id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_6id.setBeneficiario(publicadores1DtBeneficiario_7id);
        publicadores1DtDistribucion_6id.setDonacion(publicadores1DtDonacion_10id);
        publicadores1DtDistribucion_6id.setFechaPreparacion(fechaPreparacion_13idTemp);
        publicadores1DtDistribucion_6id.setFechaEntrega(fechaEntrega_14idTemp);
        publicadores1DtDistribucion_6id.setId(id_15idTemp);
        sampleControladorPublishProxyid.altaDistribucion(publicadores1DtDistribucion_6id);
break;
case 52:
        gotMethod = true;
        String arg0_16id=  request.getParameter("arg059");
            java.lang.String arg0_16idTemp = null;
        if(!arg0_16id.equals("")){
         arg0_16idTemp  = arg0_16id;
        }
        publicadores.DtBeneficiario getBeneficiario52mtemp = sampleControladorPublishProxyid.getBeneficiario(arg0_16idTemp);
if(getBeneficiario52mtemp == null){
%>
<%=getBeneficiario52mtemp %>
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
if(getBeneficiario52mtemp != null){
publicadores.LocalDateTime typefechaNacimiento55 = getBeneficiario52mtemp.getFechaNacimiento();
        if(typefechaNacimiento55!= null){
        String tempfechaNacimiento55 = typefechaNacimiento55.toString();
        %>
        <%=tempfechaNacimiento55%>
        <%
        }}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getBeneficiario52mtemp != null){
java.lang.String typedireccion57 = getBeneficiario52mtemp.getDireccion();
        String tempResultdireccion57 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion57));
        %>
        <%= tempResultdireccion57 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 61:
        gotMethod = true;
        String arg0_17id=  request.getParameter("arg068");
        int arg0_17idTemp  = Integer.parseInt(arg0_17id);
        publicadores.DtDonacion getDonacion61mtemp = sampleControladorPublishProxyid.getDonacion(arg0_17idTemp);
if(getDonacion61mtemp == null){
%>
<%=getDonacion61mtemp %>
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
if(getDonacion61mtemp != null){
publicadores.LocalDateTime typefechaIngresada64 = getDonacion61mtemp.getFechaIngresada();
        if(typefechaIngresada64!= null){
        String tempfechaIngresada64 = typefechaIngresada64.toString();
        %>
        <%=tempfechaIngresada64%>
        <%
        }}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDonacion61mtemp != null){
java.lang.Integer typeid66 = getDonacion61mtemp.getId();
        String tempResultid66 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid66));
        %>
        <%= tempResultid66 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 70:
        gotMethod = true;
        String email_19id=  request.getParameter("email75");
            java.lang.String email_19idTemp = null;
        if(!email_19id.equals("")){
         email_19idTemp  = email_19id;
        }
        String pw_20id=  request.getParameter("pw77");
            java.lang.String pw_20idTemp = null;
        if(!pw_20id.equals("")){
         pw_20idTemp  = pw_20id;
        }
        String nombre_21id=  request.getParameter("nombre79");
            java.lang.String nombre_21idTemp = null;
        if(!nombre_21id.equals("")){
         nombre_21idTemp  = nombre_21id;
        }
        %>
        <jsp:useBean id="publicadores1DtUsuario_18id" scope="session" class="publicadores.DtUsuario" />
        <%
        publicadores1DtUsuario_18id.setEmail(email_19idTemp);
        publicadores1DtUsuario_18id.setPw(pw_20idTemp);
        publicadores1DtUsuario_18id.setNombre(nombre_21idTemp);
        sampleControladorPublishProxyid.altaUsuario(publicadores1DtUsuario_18id);
break;
case 81:
        gotMethod = true;
        String arg0_22id=  request.getParameter("arg0102");
        int arg0_22idTemp  = Integer.parseInt(arg0_22id);
        publicadores.DtDistribucion getDistribucion81mtemp = sampleControladorPublishProxyid.getDistribucion(arg0_22idTemp);
if(getDistribucion81mtemp == null){
%>
<%=getDistribucion81mtemp %>
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
if(getDistribucion81mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion81mtemp.getBeneficiario();
if(tebece0 != null){
publicadores.LocalDateTime typefechaNacimiento86 = tebece0.getFechaNacimiento();
        if(typefechaNacimiento86!= null){
        String tempfechaNacimiento86 = typefechaNacimiento86.toString();
        %>
        <%=tempfechaNacimiento86%>
        <%
        }}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getDistribucion81mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion81mtemp.getBeneficiario();
if(tebece0 != null){
java.lang.String typedireccion88 = tebece0.getDireccion();
        String tempResultdireccion88 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion88));
        %>
        <%= tempResultdireccion88 %>
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
if(getDistribucion81mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion81mtemp.getDonacion();
if(tebece0 != null){
publicadores.LocalDateTime typefechaIngresada92 = tebece0.getFechaIngresada();
        if(typefechaIngresada92!= null){
        String tempfechaIngresada92 = typefechaIngresada92.toString();
        %>
        <%=tempfechaIngresada92%>
        <%
        }}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion81mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion81mtemp.getDonacion();
if(tebece0 != null){
java.lang.Integer typeid94 = tebece0.getId();
        String tempResultid94 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid94));
        %>
        <%= tempResultid94 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPreparacion:</TD>
<TD>
<%
if(getDistribucion81mtemp != null){
java.util.Calendar typefechaPreparacion96 = getDistribucion81mtemp.getFechaPreparacion();
        java.text.DateFormat dateFormatfechaPreparacion96 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaPreparacion96 = typefechaPreparacion96.getTime();
        String tempResultfechaPreparacion96 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaPreparacion96.format(datefechaPreparacion96));
        %>
        <%= tempResultfechaPreparacion96 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaEntrega:</TD>
<TD>
<%
if(getDistribucion81mtemp != null){
java.util.Calendar typefechaEntrega98 = getDistribucion81mtemp.getFechaEntrega();
        java.text.DateFormat dateFormatfechaEntrega98 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaEntrega98 = typefechaEntrega98.getTime();
        String tempResultfechaEntrega98 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaEntrega98.format(datefechaEntrega98));
        %>
        <%= tempResultfechaEntrega98 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion81mtemp != null){
%>
<%=getDistribucion81mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 104:
        gotMethod = true;
        publicadores.DtBeneficiario[] listaBeneficiarios104mtemp = sampleControladorPublishProxyid.listaBeneficiarios();
if(listaBeneficiarios104mtemp == null){
%>
<%=listaBeneficiarios104mtemp %>
<%
}else{
        String tempreturnp105 = null;
        if(listaBeneficiarios104mtemp != null){
        java.util.List listreturnp105= java.util.Arrays.asList(listaBeneficiarios104mtemp);
        tempreturnp105 = listreturnp105.toString();
        }
        %>
        <%=tempreturnp105%>
        <%
}
break;
case 107:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_24id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_25id=  request.getParameter("id114");
            java.lang.Integer id_25idTemp = null;
        if(!id_25id.equals("")){
         id_25idTemp  = java.lang.Integer.valueOf(id_25id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_23id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_23id.setFechaIngresada(publicadores1LocalDateTime_24id);
        publicadores1DtDonacion_23id.setId(id_25idTemp);
        sampleControladorPublishProxyid.modificarDonacion(publicadores1DtDonacion_23id);
break;
case 116:
        gotMethod = true;
        int[] listarDonaciones116mtemp = sampleControladorPublishProxyid.listarDonaciones();
if(listarDonaciones116mtemp == null){
%>
<%=listarDonaciones116mtemp %>
<%
}else{
        String tempreturnp117 = "[";        for(int ireturnp117=0;ireturnp117< listarDonaciones116mtemp.length;ireturnp117++){
            tempreturnp117 = tempreturnp117 + listarDonaciones116mtemp[ireturnp117] + ",";
        }
        int lengthreturnp117 = tempreturnp117.length();
        tempreturnp117 = tempreturnp117.substring(0,(lengthreturnp117 - 1)) + "]";
        %>
        <%=tempreturnp117%>
        <%
}
break;
case 119:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_28id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String direccion_29id=  request.getParameter("direccion128");
            java.lang.String direccion_29idTemp = null;
        if(!direccion_29id.equals("")){
         direccion_29idTemp  = direccion_29id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_27id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_27id.setFechaNacimiento(publicadores1LocalDateTime_28id);
        publicadores1DtBeneficiario_27id.setDireccion(direccion_29idTemp);
        %>
        <jsp:useBean id="publicadores1LocalDateTime_31id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_32id=  request.getParameter("id134");
            java.lang.Integer id_32idTemp = null;
        if(!id_32id.equals("")){
         id_32idTemp  = java.lang.Integer.valueOf(id_32id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_30id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_30id.setFechaIngresada(publicadores1LocalDateTime_31id);
        publicadores1DtDonacion_30id.setId(id_32idTemp);
        String fechaPreparacion_33id=  request.getParameter("fechaPreparacion136");
            java.util.Calendar fechaPreparacion_33idTemp = null;
        if(!fechaPreparacion_33id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion136 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion136  = dateFormatfechaPreparacion136.parse(fechaPreparacion_33id);
         fechaPreparacion_33idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_33idTemp.setTime(dateTempfechaPreparacion136);
        }
        String fechaEntrega_34id=  request.getParameter("fechaEntrega138");
            java.util.Calendar fechaEntrega_34idTemp = null;
        if(!fechaEntrega_34id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega138 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega138  = dateFormatfechaEntrega138.parse(fechaEntrega_34id);
         fechaEntrega_34idTemp = new java.util.GregorianCalendar();
        fechaEntrega_34idTemp.setTime(dateTempfechaEntrega138);
        }
        String id_35id=  request.getParameter("id140");
        int id_35idTemp  = Integer.parseInt(id_35id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_26id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_26id.setBeneficiario(publicadores1DtBeneficiario_27id);
        publicadores1DtDistribucion_26id.setDonacion(publicadores1DtDonacion_30id);
        publicadores1DtDistribucion_26id.setFechaPreparacion(fechaPreparacion_33idTemp);
        publicadores1DtDistribucion_26id.setFechaEntrega(fechaEntrega_34idTemp);
        publicadores1DtDistribucion_26id.setId(id_35idTemp);
        sampleControladorPublishProxyid.modificarDistribucion(publicadores1DtDistribucion_26id);
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
        String arg0_51id=  request.getParameter("arg0180");
            java.lang.String arg0_51idTemp = null;
        if(!arg0_51id.equals("")){
         arg0_51idTemp  = arg0_51id;
        }
        publicadores.DtRepartidor getRepartidor175mtemp = sampleControladorPublishProxyid.getRepartidor(arg0_51idTemp);
if(getRepartidor175mtemp == null){
%>
<%=getRepartidor175mtemp %>
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
if(getRepartidor175mtemp != null){
java.lang.String typenumeroDeLicencia178 = getRepartidor175mtemp.getNumeroDeLicencia();
        String tempResultnumeroDeLicencia178 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenumeroDeLicencia178));
        %>
        <%= tempResultnumeroDeLicencia178 %>
        <%
}%>
</TD>
</TABLE>
<%
}
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