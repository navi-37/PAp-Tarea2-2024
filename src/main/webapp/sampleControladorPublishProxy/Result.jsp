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
        %>
        <jsp:useBean id="publicadores1LocalDateTime_2id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_3id=  request.getParameter("id20");
            java.lang.Integer id_3idTemp = null;
        if(!id_3id.equals("")){
         id_3idTemp  = java.lang.Integer.valueOf(id_3id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_1id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_1id.setFechaIngresada(publicadores1LocalDateTime_2id);
        publicadores1DtDonacion_1id.setId(id_3idTemp);
        sampleControladorPublishProxyid.altaDonacion(publicadores1DtDonacion_1id);
break;
case 22:
        gotMethod = true;
        String email_5id=  request.getParameter("email27");
            java.lang.String email_5idTemp = null;
        if(!email_5id.equals("")){
         email_5idTemp  = email_5id;
        }
        String pw_6id=  request.getParameter("pw29");
            java.lang.String pw_6idTemp = null;
        if(!pw_6id.equals("")){
         pw_6idTemp  = pw_6id;
        }
        String nombre_7id=  request.getParameter("nombre31");
            java.lang.String nombre_7idTemp = null;
        if(!nombre_7id.equals("")){
         nombre_7idTemp  = nombre_7id;
        }
        %>
        <jsp:useBean id="publicadores1DtUsuario_4id" scope="session" class="publicadores.DtUsuario" />
        <%
        publicadores1DtUsuario_4id.setEmail(email_5idTemp);
        publicadores1DtUsuario_4id.setPw(pw_6idTemp);
        publicadores1DtUsuario_4id.setNombre(nombre_7idTemp);
        sampleControladorPublishProxyid.altaUsuario(publicadores1DtUsuario_4id);
break;
case 33:
        gotMethod = true;
        String arg0_8id=  request.getParameter("arg036");
            java.util.Calendar arg0_8idTemp = null;
        if(!arg0_8id.equals("")){
        java.text.DateFormat dateFormatarg036 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg036  = dateFormatarg036.parse(arg0_8id);
         arg0_8idTemp = new java.util.GregorianCalendar();
        arg0_8idTemp.setTime(dateTemparg036);
        }
        String arg1_9id=  request.getParameter("arg138");
            java.util.Calendar arg1_9idTemp = null;
        if(!arg1_9id.equals("")){
        java.text.DateFormat dateFormatarg138 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg138  = dateFormatarg138.parse(arg1_9id);
         arg1_9idTemp = new java.util.GregorianCalendar();
        arg1_9idTemp.setTime(dateTemparg138);
        }
        publicadores.DtReporte[] reporte33mtemp = sampleControladorPublishProxyid.reporte(arg0_8idTemp,arg1_9idTemp);
if(reporte33mtemp == null){
%>
<%=reporte33mtemp %>
<%
}else{
        String tempreturnp34 = null;
        if(reporte33mtemp != null){
        java.util.List listreturnp34= java.util.Arrays.asList(reporte33mtemp);
        tempreturnp34 = listreturnp34.toString();
        }
        %>
        <%=tempreturnp34%>
        <%
}
break;
case 40:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_12id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String direccion_13id=  request.getParameter("direccion49");
            java.lang.String direccion_13idTemp = null;
        if(!direccion_13id.equals("")){
         direccion_13idTemp  = direccion_13id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_11id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_11id.setFechaNacimiento(publicadores1LocalDateTime_12id);
        publicadores1DtBeneficiario_11id.setDireccion(direccion_13idTemp);
        %>
        <jsp:useBean id="publicadores1LocalDateTime_15id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_16id=  request.getParameter("id55");
            java.lang.Integer id_16idTemp = null;
        if(!id_16id.equals("")){
         id_16idTemp  = java.lang.Integer.valueOf(id_16id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_14id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_14id.setFechaIngresada(publicadores1LocalDateTime_15id);
        publicadores1DtDonacion_14id.setId(id_16idTemp);
        String fechaPreparacion_17id=  request.getParameter("fechaPreparacion57");
            java.util.Calendar fechaPreparacion_17idTemp = null;
        if(!fechaPreparacion_17id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion57 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion57  = dateFormatfechaPreparacion57.parse(fechaPreparacion_17id);
         fechaPreparacion_17idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_17idTemp.setTime(dateTempfechaPreparacion57);
        }
        String fechaEntrega_18id=  request.getParameter("fechaEntrega59");
            java.util.Calendar fechaEntrega_18idTemp = null;
        if(!fechaEntrega_18id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega59 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega59  = dateFormatfechaEntrega59.parse(fechaEntrega_18id);
         fechaEntrega_18idTemp = new java.util.GregorianCalendar();
        fechaEntrega_18idTemp.setTime(dateTempfechaEntrega59);
        }
        String id_19id=  request.getParameter("id61");
        int id_19idTemp  = Integer.parseInt(id_19id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_10id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_10id.setBeneficiario(publicadores1DtBeneficiario_11id);
        publicadores1DtDistribucion_10id.setDonacion(publicadores1DtDonacion_14id);
        publicadores1DtDistribucion_10id.setFechaPreparacion(fechaPreparacion_17idTemp);
        publicadores1DtDistribucion_10id.setFechaEntrega(fechaEntrega_18idTemp);
        publicadores1DtDistribucion_10id.setId(id_19idTemp);
        sampleControladorPublishProxyid.modificarDistribucion(publicadores1DtDistribucion_10id);
break;
case 63:
        gotMethod = true;
        int[] listarDonaciones63mtemp = sampleControladorPublishProxyid.listarDonaciones();
if(listarDonaciones63mtemp == null){
%>
<%=listarDonaciones63mtemp %>
<%
}else{
        String tempreturnp64 = "[";        for(int ireturnp64=0;ireturnp64< listarDonaciones63mtemp.length;ireturnp64++){
            tempreturnp64 = tempreturnp64 + listarDonaciones63mtemp[ireturnp64] + ",";
        }
        int lengthreturnp64 = tempreturnp64.length();
        tempreturnp64 = tempreturnp64.substring(0,(lengthreturnp64 - 1)) + "]";
        %>
        <%=tempreturnp64%>
        <%
}
break;
case 66:
        gotMethod = true;
        String arg0_20id=  request.getParameter("arg073");
            java.lang.String arg0_20idTemp = null;
        if(!arg0_20id.equals("")){
         arg0_20idTemp  = arg0_20id;
        }
        publicadores.DtBeneficiario getBeneficiario66mtemp = sampleControladorPublishProxyid.getBeneficiario(arg0_20idTemp);
if(getBeneficiario66mtemp == null){
%>
<%=getBeneficiario66mtemp %>
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
if(getBeneficiario66mtemp != null){
publicadores.LocalDateTime typefechaNacimiento69 = getBeneficiario66mtemp.getFechaNacimiento();
        if(typefechaNacimiento69!= null){
        String tempfechaNacimiento69 = typefechaNacimiento69.toString();
        %>
        <%=tempfechaNacimiento69%>
        <%
        }}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getBeneficiario66mtemp != null){
java.lang.String typedireccion71 = getBeneficiario66mtemp.getDireccion();
        String tempResultdireccion71 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion71));
        %>
        <%= tempResultdireccion71 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 75:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_23id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String direccion_24id=  request.getParameter("direccion84");
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
        String id_27id=  request.getParameter("id90");
            java.lang.Integer id_27idTemp = null;
        if(!id_27id.equals("")){
         id_27idTemp  = java.lang.Integer.valueOf(id_27id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_25id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_25id.setFechaIngresada(publicadores1LocalDateTime_26id);
        publicadores1DtDonacion_25id.setId(id_27idTemp);
        String fechaPreparacion_28id=  request.getParameter("fechaPreparacion92");
            java.util.Calendar fechaPreparacion_28idTemp = null;
        if(!fechaPreparacion_28id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion92 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion92  = dateFormatfechaPreparacion92.parse(fechaPreparacion_28id);
         fechaPreparacion_28idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_28idTemp.setTime(dateTempfechaPreparacion92);
        }
        String fechaEntrega_29id=  request.getParameter("fechaEntrega94");
            java.util.Calendar fechaEntrega_29idTemp = null;
        if(!fechaEntrega_29id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega94 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega94  = dateFormatfechaEntrega94.parse(fechaEntrega_29id);
         fechaEntrega_29idTemp = new java.util.GregorianCalendar();
        fechaEntrega_29idTemp.setTime(dateTempfechaEntrega94);
        }
        String id_30id=  request.getParameter("id96");
        int id_30idTemp  = Integer.parseInt(id_30id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_21id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_21id.setBeneficiario(publicadores1DtBeneficiario_22id);
        publicadores1DtDistribucion_21id.setDonacion(publicadores1DtDonacion_25id);
        publicadores1DtDistribucion_21id.setFechaPreparacion(fechaPreparacion_28idTemp);
        publicadores1DtDistribucion_21id.setFechaEntrega(fechaEntrega_29idTemp);
        publicadores1DtDistribucion_21id.setId(id_30idTemp);
        sampleControladorPublishProxyid.altaDistribucion(publicadores1DtDistribucion_21id);
break;
case 98:
        gotMethod = true;
        String arg0_31id=  request.getParameter("arg0119");
        int arg0_31idTemp  = Integer.parseInt(arg0_31id);
        publicadores.DtDistribucion getDistribucion98mtemp = sampleControladorPublishProxyid.getDistribucion(arg0_31idTemp);
if(getDistribucion98mtemp == null){
%>
<%=getDistribucion98mtemp %>
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
if(getDistribucion98mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion98mtemp.getBeneficiario();
if(tebece0 != null){
publicadores.LocalDateTime typefechaNacimiento103 = tebece0.getFechaNacimiento();
        if(typefechaNacimiento103!= null){
        String tempfechaNacimiento103 = typefechaNacimiento103.toString();
        %>
        <%=tempfechaNacimiento103%>
        <%
        }}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getDistribucion98mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion98mtemp.getBeneficiario();
if(tebece0 != null){
java.lang.String typedireccion105 = tebece0.getDireccion();
        String tempResultdireccion105 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion105));
        %>
        <%= tempResultdireccion105 %>
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
if(getDistribucion98mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion98mtemp.getDonacion();
if(tebece0 != null){
publicadores.LocalDateTime typefechaIngresada109 = tebece0.getFechaIngresada();
        if(typefechaIngresada109!= null){
        String tempfechaIngresada109 = typefechaIngresada109.toString();
        %>
        <%=tempfechaIngresada109%>
        <%
        }}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion98mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion98mtemp.getDonacion();
if(tebece0 != null){
java.lang.Integer typeid111 = tebece0.getId();
        String tempResultid111 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid111));
        %>
        <%= tempResultid111 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPreparacion:</TD>
<TD>
<%
if(getDistribucion98mtemp != null){
java.util.Calendar typefechaPreparacion113 = getDistribucion98mtemp.getFechaPreparacion();
        java.text.DateFormat dateFormatfechaPreparacion113 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaPreparacion113 = typefechaPreparacion113.getTime();
        String tempResultfechaPreparacion113 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaPreparacion113.format(datefechaPreparacion113));
        %>
        <%= tempResultfechaPreparacion113 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaEntrega:</TD>
<TD>
<%
if(getDistribucion98mtemp != null){
java.util.Calendar typefechaEntrega115 = getDistribucion98mtemp.getFechaEntrega();
        java.text.DateFormat dateFormatfechaEntrega115 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaEntrega115 = typefechaEntrega115.getTime();
        String tempResultfechaEntrega115 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaEntrega115.format(datefechaEntrega115));
        %>
        <%= tempResultfechaEntrega115 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion98mtemp != null){
%>
<%=getDistribucion98mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 121:
        gotMethod = true;
        publicadores.DtBeneficiario[] listaBeneficiarios121mtemp = sampleControladorPublishProxyid.listaBeneficiarios();
if(listaBeneficiarios121mtemp == null){
%>
<%=listaBeneficiarios121mtemp %>
<%
}else{
        String tempreturnp122 = null;
        if(listaBeneficiarios121mtemp != null){
        java.util.List listreturnp122= java.util.Arrays.asList(listaBeneficiarios121mtemp);
        tempreturnp122 = listreturnp122.toString();
        }
        %>
        <%=tempreturnp122%>
        <%
}
break;
case 124:
        gotMethod = true;
        String arg0_32id=  request.getParameter("arg0131");
        int arg0_32idTemp  = Integer.parseInt(arg0_32id);
        publicadores.DtDonacion getDonacion124mtemp = sampleControladorPublishProxyid.getDonacion(arg0_32idTemp);
if(getDonacion124mtemp == null){
%>
<%=getDonacion124mtemp %>
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
if(getDonacion124mtemp != null){
publicadores.LocalDateTime typefechaIngresada127 = getDonacion124mtemp.getFechaIngresada();
        if(typefechaIngresada127!= null){
        String tempfechaIngresada127 = typefechaIngresada127.toString();
        %>
        <%=tempfechaIngresada127%>
        <%
        }}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDonacion124mtemp != null){
java.lang.Integer typeid129 = getDonacion124mtemp.getId();
        String tempResultid129 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid129));
        %>
        <%= tempResultid129 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 133:
        gotMethod = true;
        %>
        <jsp:useBean id="publicadores1LocalDateTime_34id" scope="session" class="publicadores.LocalDateTime" />
        <%
        String id_35id=  request.getParameter("id140");
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
case 142:
        gotMethod = true;
        String arg0_36id=  request.getParameter("arg0147");
            java.lang.String arg0_36idTemp = null;
        if(!arg0_36id.equals("")){
         arg0_36idTemp  = arg0_36id;
        }
        publicadores.DtRepartidor getRepartidor142mtemp = sampleControladorPublishProxyid.getRepartidor(arg0_36idTemp);
if(getRepartidor142mtemp == null){
%>
<%=getRepartidor142mtemp %>
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
if(getRepartidor142mtemp != null){
java.lang.String typenumeroDeLicencia145 = getRepartidor142mtemp.getNumeroDeLicencia();
        String tempResultnumeroDeLicencia145 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenumeroDeLicencia145));
        %>
        <%= tempResultnumeroDeLicencia145 %>
        <%
}%>
</TD>
</TABLE>
<%
}
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