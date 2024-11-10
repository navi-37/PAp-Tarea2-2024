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
        String fechaIngresada_2id=  request.getParameter("fechaIngresada18");
            java.util.Calendar fechaIngresada_2idTemp = null;
        if(!fechaIngresada_2id.equals("")){
        java.text.DateFormat dateFormatfechaIngresada18 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaIngresada18  = dateFormatfechaIngresada18.parse(fechaIngresada_2id);
         fechaIngresada_2idTemp = new java.util.GregorianCalendar();
        fechaIngresada_2idTemp.setTime(dateTempfechaIngresada18);
        }
        String id_3id=  request.getParameter("id20");
            java.lang.Integer id_3idTemp = null;
        if(!id_3id.equals("")){
         id_3idTemp  = java.lang.Integer.valueOf(id_3id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_1id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_1id.setFechaIngresada(fechaIngresada_2idTemp);
        publicadores1DtDonacion_1id.setId(id_3idTemp);
        sampleControladorPublishProxyid.modificarDonacion(publicadores1DtDonacion_1id);
break;
case 22:
        gotMethod = true;
        publicadores.DtBeneficiario[] listaBeneficiarios22mtemp = sampleControladorPublishProxyid.listaBeneficiarios();
if(listaBeneficiarios22mtemp == null){
%>
<%=listaBeneficiarios22mtemp %>
<%
}else{
        String tempreturnp23 = null;
        if(listaBeneficiarios22mtemp != null){
        java.util.List listreturnp23= java.util.Arrays.asList(listaBeneficiarios22mtemp);
        tempreturnp23 = listreturnp23.toString();
        }
        %>
        <%=tempreturnp23%>
        <%
}
break;
case 25:
        gotMethod = true;
        int[] listarDonaciones25mtemp = sampleControladorPublishProxyid.listarDonaciones();
if(listarDonaciones25mtemp == null){
%>
<%=listarDonaciones25mtemp %>
<%
}else{
        String tempreturnp26 = "[";        for(int ireturnp26=0;ireturnp26< listarDonaciones25mtemp.length;ireturnp26++){
            tempreturnp26 = tempreturnp26 + listarDonaciones25mtemp[ireturnp26] + ",";
        }
        int lengthreturnp26 = tempreturnp26.length();
        tempreturnp26 = tempreturnp26.substring(0,(lengthreturnp26 - 1)) + "]";
        %>
        <%=tempreturnp26%>
        <%
}
break;
case 28:
        gotMethod = true;
        String arg0_4id=  request.getParameter("arg049");
        int arg0_4idTemp  = Integer.parseInt(arg0_4id);
        publicadores.DtDistribucion getDistribucion28mtemp = sampleControladorPublishProxyid.getDistribucion(arg0_4idTemp);
if(getDistribucion28mtemp == null){
%>
<%=getDistribucion28mtemp %>
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
if(getDistribucion28mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion28mtemp.getBeneficiario();
if(tebece0 != null){
java.util.Calendar typefechaNacimiento33 = tebece0.getFechaNacimiento();
        java.text.DateFormat dateFormatfechaNacimiento33 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaNacimiento33 = typefechaNacimiento33.getTime();
        String tempResultfechaNacimiento33 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaNacimiento33.format(datefechaNacimiento33));
        %>
        <%= tempResultfechaNacimiento33 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getDistribucion28mtemp != null){
publicadores.DtBeneficiario tebece0=getDistribucion28mtemp.getBeneficiario();
if(tebece0 != null){
java.lang.String typedireccion35 = tebece0.getDireccion();
        String tempResultdireccion35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion35));
        %>
        <%= tempResultdireccion35 %>
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
if(getDistribucion28mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion28mtemp.getDonacion();
if(tebece0 != null){
java.util.Calendar typefechaIngresada39 = tebece0.getFechaIngresada();
        java.text.DateFormat dateFormatfechaIngresada39 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaIngresada39 = typefechaIngresada39.getTime();
        String tempResultfechaIngresada39 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaIngresada39.format(datefechaIngresada39));
        %>
        <%= tempResultfechaIngresada39 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion28mtemp != null){
publicadores.DtDonacion tebece0=getDistribucion28mtemp.getDonacion();
if(tebece0 != null){
java.lang.Integer typeid41 = tebece0.getId();
        String tempResultid41 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid41));
        %>
        <%= tempResultid41 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPreparacion:</TD>
<TD>
<%
if(getDistribucion28mtemp != null){
java.util.Calendar typefechaPreparacion43 = getDistribucion28mtemp.getFechaPreparacion();
        java.text.DateFormat dateFormatfechaPreparacion43 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaPreparacion43 = typefechaPreparacion43.getTime();
        String tempResultfechaPreparacion43 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaPreparacion43.format(datefechaPreparacion43));
        %>
        <%= tempResultfechaPreparacion43 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaEntrega:</TD>
<TD>
<%
if(getDistribucion28mtemp != null){
java.util.Calendar typefechaEntrega45 = getDistribucion28mtemp.getFechaEntrega();
        java.text.DateFormat dateFormatfechaEntrega45 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaEntrega45 = typefechaEntrega45.getTime();
        String tempResultfechaEntrega45 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaEntrega45.format(datefechaEntrega45));
        %>
        <%= tempResultfechaEntrega45 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDistribucion28mtemp != null){
%>
<%=getDistribucion28mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 51:
        gotMethod = true;
        String fechaIngresada_6id=  request.getParameter("fechaIngresada56");
            java.util.Calendar fechaIngresada_6idTemp = null;
        if(!fechaIngresada_6id.equals("")){
        java.text.DateFormat dateFormatfechaIngresada56 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaIngresada56  = dateFormatfechaIngresada56.parse(fechaIngresada_6id);
         fechaIngresada_6idTemp = new java.util.GregorianCalendar();
        fechaIngresada_6idTemp.setTime(dateTempfechaIngresada56);
        }
        String id_7id=  request.getParameter("id58");
            java.lang.Integer id_7idTemp = null;
        if(!id_7id.equals("")){
         id_7idTemp  = java.lang.Integer.valueOf(id_7id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_5id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_5id.setFechaIngresada(fechaIngresada_6idTemp);
        publicadores1DtDonacion_5id.setId(id_7idTemp);
        sampleControladorPublishProxyid.altaDonacion(publicadores1DtDonacion_5id);
break;
case 60:
        gotMethod = true;
        String arg0_8id=  request.getParameter("arg067");
        int arg0_8idTemp  = Integer.parseInt(arg0_8id);
        publicadores.DtDonacion getDonacion60mtemp = sampleControladorPublishProxyid.getDonacion(arg0_8idTemp);
if(getDonacion60mtemp == null){
%>
<%=getDonacion60mtemp %>
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
if(getDonacion60mtemp != null){
java.util.Calendar typefechaIngresada63 = getDonacion60mtemp.getFechaIngresada();
        java.text.DateFormat dateFormatfechaIngresada63 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaIngresada63 = typefechaIngresada63.getTime();
        String tempResultfechaIngresada63 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaIngresada63.format(datefechaIngresada63));
        %>
        <%= tempResultfechaIngresada63 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDonacion60mtemp != null){
java.lang.Integer typeid65 = getDonacion60mtemp.getId();
        String tempResultid65 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid65));
        %>
        <%= tempResultid65 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 69:
        gotMethod = true;
        String fechaNacimiento_11id=  request.getParameter("fechaNacimiento76");
            java.util.Calendar fechaNacimiento_11idTemp = null;
        if(!fechaNacimiento_11id.equals("")){
        java.text.DateFormat dateFormatfechaNacimiento76 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaNacimiento76  = dateFormatfechaNacimiento76.parse(fechaNacimiento_11id);
         fechaNacimiento_11idTemp = new java.util.GregorianCalendar();
        fechaNacimiento_11idTemp.setTime(dateTempfechaNacimiento76);
        }
        String direccion_12id=  request.getParameter("direccion78");
            java.lang.String direccion_12idTemp = null;
        if(!direccion_12id.equals("")){
         direccion_12idTemp  = direccion_12id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_10id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_10id.setFechaNacimiento(fechaNacimiento_11idTemp);
        publicadores1DtBeneficiario_10id.setDireccion(direccion_12idTemp);
        String fechaIngresada_14id=  request.getParameter("fechaIngresada82");
            java.util.Calendar fechaIngresada_14idTemp = null;
        if(!fechaIngresada_14id.equals("")){
        java.text.DateFormat dateFormatfechaIngresada82 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaIngresada82  = dateFormatfechaIngresada82.parse(fechaIngresada_14id);
         fechaIngresada_14idTemp = new java.util.GregorianCalendar();
        fechaIngresada_14idTemp.setTime(dateTempfechaIngresada82);
        }
        String id_15id=  request.getParameter("id84");
            java.lang.Integer id_15idTemp = null;
        if(!id_15id.equals("")){
         id_15idTemp  = java.lang.Integer.valueOf(id_15id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_13id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_13id.setFechaIngresada(fechaIngresada_14idTemp);
        publicadores1DtDonacion_13id.setId(id_15idTemp);
        String fechaPreparacion_16id=  request.getParameter("fechaPreparacion86");
            java.util.Calendar fechaPreparacion_16idTemp = null;
        if(!fechaPreparacion_16id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion86 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion86  = dateFormatfechaPreparacion86.parse(fechaPreparacion_16id);
         fechaPreparacion_16idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_16idTemp.setTime(dateTempfechaPreparacion86);
        }
        String fechaEntrega_17id=  request.getParameter("fechaEntrega88");
            java.util.Calendar fechaEntrega_17idTemp = null;
        if(!fechaEntrega_17id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega88 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega88  = dateFormatfechaEntrega88.parse(fechaEntrega_17id);
         fechaEntrega_17idTemp = new java.util.GregorianCalendar();
        fechaEntrega_17idTemp.setTime(dateTempfechaEntrega88);
        }
        String id_18id=  request.getParameter("id90");
        int id_18idTemp  = Integer.parseInt(id_18id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_9id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_9id.setBeneficiario(publicadores1DtBeneficiario_10id);
        publicadores1DtDistribucion_9id.setDonacion(publicadores1DtDonacion_13id);
        publicadores1DtDistribucion_9id.setFechaPreparacion(fechaPreparacion_16idTemp);
        publicadores1DtDistribucion_9id.setFechaEntrega(fechaEntrega_17idTemp);
        publicadores1DtDistribucion_9id.setId(id_18idTemp);
        sampleControladorPublishProxyid.altaDistribucion(publicadores1DtDistribucion_9id);
break;
case 92:
        gotMethod = true;
        String arg0_19id=  request.getParameter("arg099");
            java.lang.String arg0_19idTemp = null;
        if(!arg0_19id.equals("")){
         arg0_19idTemp  = arg0_19id;
        }
        publicadores.DtBeneficiario getBeneficiario92mtemp = sampleControladorPublishProxyid.getBeneficiario(arg0_19idTemp);
if(getBeneficiario92mtemp == null){
%>
<%=getBeneficiario92mtemp %>
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
if(getBeneficiario92mtemp != null){
java.util.Calendar typefechaNacimiento95 = getBeneficiario92mtemp.getFechaNacimiento();
        java.text.DateFormat dateFormatfechaNacimiento95 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaNacimiento95 = typefechaNacimiento95.getTime();
        String tempResultfechaNacimiento95 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaNacimiento95.format(datefechaNacimiento95));
        %>
        <%= tempResultfechaNacimiento95 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getBeneficiario92mtemp != null){
java.lang.String typedireccion97 = getBeneficiario92mtemp.getDireccion();
        String tempResultdireccion97 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion97));
        %>
        <%= tempResultdireccion97 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 101:
        gotMethod = true;
        String email_21id=  request.getParameter("email106");
            java.lang.String email_21idTemp = null;
        if(!email_21id.equals("")){
         email_21idTemp  = email_21id;
        }
        String pw_22id=  request.getParameter("pw108");
            java.lang.String pw_22idTemp = null;
        if(!pw_22id.equals("")){
         pw_22idTemp  = pw_22id;
        }
        String nombre_23id=  request.getParameter("nombre110");
            java.lang.String nombre_23idTemp = null;
        if(!nombre_23id.equals("")){
         nombre_23idTemp  = nombre_23id;
        }
        %>
        <jsp:useBean id="publicadores1DtUsuario_20id" scope="session" class="publicadores.DtUsuario" />
        <%
        publicadores1DtUsuario_20id.setEmail(email_21idTemp);
        publicadores1DtUsuario_20id.setPw(pw_22idTemp);
        publicadores1DtUsuario_20id.setNombre(nombre_23idTemp);
        sampleControladorPublishProxyid.altaUsuario(publicadores1DtUsuario_20id);
break;
case 112:
        gotMethod = true;
        String fechaNacimiento_26id=  request.getParameter("fechaNacimiento119");
            java.util.Calendar fechaNacimiento_26idTemp = null;
        if(!fechaNacimiento_26id.equals("")){
        java.text.DateFormat dateFormatfechaNacimiento119 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaNacimiento119  = dateFormatfechaNacimiento119.parse(fechaNacimiento_26id);
         fechaNacimiento_26idTemp = new java.util.GregorianCalendar();
        fechaNacimiento_26idTemp.setTime(dateTempfechaNacimiento119);
        }
        String direccion_27id=  request.getParameter("direccion121");
            java.lang.String direccion_27idTemp = null;
        if(!direccion_27id.equals("")){
         direccion_27idTemp  = direccion_27id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_25id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_25id.setFechaNacimiento(fechaNacimiento_26idTemp);
        publicadores1DtBeneficiario_25id.setDireccion(direccion_27idTemp);
        String fechaIngresada_29id=  request.getParameter("fechaIngresada125");
            java.util.Calendar fechaIngresada_29idTemp = null;
        if(!fechaIngresada_29id.equals("")){
        java.text.DateFormat dateFormatfechaIngresada125 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaIngresada125  = dateFormatfechaIngresada125.parse(fechaIngresada_29id);
         fechaIngresada_29idTemp = new java.util.GregorianCalendar();
        fechaIngresada_29idTemp.setTime(dateTempfechaIngresada125);
        }
        String id_30id=  request.getParameter("id127");
            java.lang.Integer id_30idTemp = null;
        if(!id_30id.equals("")){
         id_30idTemp  = java.lang.Integer.valueOf(id_30id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_28id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_28id.setFechaIngresada(fechaIngresada_29idTemp);
        publicadores1DtDonacion_28id.setId(id_30idTemp);
        String fechaPreparacion_31id=  request.getParameter("fechaPreparacion129");
            java.util.Calendar fechaPreparacion_31idTemp = null;
        if(!fechaPreparacion_31id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion129 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion129  = dateFormatfechaPreparacion129.parse(fechaPreparacion_31id);
         fechaPreparacion_31idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_31idTemp.setTime(dateTempfechaPreparacion129);
        }
        String fechaEntrega_32id=  request.getParameter("fechaEntrega131");
            java.util.Calendar fechaEntrega_32idTemp = null;
        if(!fechaEntrega_32id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega131 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega131  = dateFormatfechaEntrega131.parse(fechaEntrega_32id);
         fechaEntrega_32idTemp = new java.util.GregorianCalendar();
        fechaEntrega_32idTemp.setTime(dateTempfechaEntrega131);
        }
        String id_33id=  request.getParameter("id133");
        int id_33idTemp  = Integer.parseInt(id_33id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_24id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_24id.setBeneficiario(publicadores1DtBeneficiario_25id);
        publicadores1DtDistribucion_24id.setDonacion(publicadores1DtDonacion_28id);
        publicadores1DtDistribucion_24id.setFechaPreparacion(fechaPreparacion_31idTemp);
        publicadores1DtDistribucion_24id.setFechaEntrega(fechaEntrega_32idTemp);
        publicadores1DtDistribucion_24id.setId(id_33idTemp);
        sampleControladorPublishProxyid.modificarDistribucion(publicadores1DtDistribucion_24id);
break;
case 135:
        gotMethod = true;
        String arg0_34id=  request.getParameter("arg0138");
            java.util.Calendar arg0_34idTemp = null;
        if(!arg0_34id.equals("")){
        java.text.DateFormat dateFormatarg0138 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg0138  = dateFormatarg0138.parse(arg0_34id);
         arg0_34idTemp = new java.util.GregorianCalendar();
        arg0_34idTemp.setTime(dateTemparg0138);
        }
        String arg1_35id=  request.getParameter("arg1140");
            java.util.Calendar arg1_35idTemp = null;
        if(!arg1_35id.equals("")){
        java.text.DateFormat dateFormatarg1140 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg1140  = dateFormatarg1140.parse(arg1_35id);
         arg1_35idTemp = new java.util.GregorianCalendar();
        arg1_35idTemp.setTime(dateTemparg1140);
        }
        publicadores.DtReporte[] reporte135mtemp = sampleControladorPublishProxyid.reporte(arg0_34idTemp,arg1_35idTemp);
if(reporte135mtemp == null){
%>
<%=reporte135mtemp %>
<%
}else{
        String tempreturnp136 = null;
        if(reporte135mtemp != null){
        java.util.List listreturnp136= java.util.Arrays.asList(reporte135mtemp);
        tempreturnp136 = listreturnp136.toString();
        }
        %>
        <%=tempreturnp136%>
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
        String fechaNacimiento_39id=  request.getParameter("fechaNacimiento151");
            java.util.Calendar fechaNacimiento_39idTemp = null;
        if(!fechaNacimiento_39id.equals("")){
        java.text.DateFormat dateFormatfechaNacimiento151 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaNacimiento151  = dateFormatfechaNacimiento151.parse(fechaNacimiento_39id);
         fechaNacimiento_39idTemp = new java.util.GregorianCalendar();
        fechaNacimiento_39idTemp.setTime(dateTempfechaNacimiento151);
        }
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
        publicadores1DtUsrModificar_36id.setFechaNacimiento(fechaNacimiento_39idTemp);
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
        String arg5_47id=  request.getParameter("arg5167");
            java.util.Calendar arg5_47idTemp = null;
        if(!arg5_47id.equals("")){
        java.text.DateFormat dateFormatarg5167 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg5167  = dateFormatarg5167.parse(arg5_47id);
         arg5_47idTemp = new java.util.GregorianCalendar();
        arg5_47idTemp.setTime(dateTemparg5167);
        }
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
        sampleControladorPublishProxyid.modificarUsuario(publicadores1DtUsrModificar_36id,arg1_43idTemp,arg2_44idTemp,publicadores1EstadoBeneficiario_45id,arg4_46idTemp,arg5_47idTemp,publicadores1Barrio_48id,arg7_49idTemp,arg8_50idTemp);
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