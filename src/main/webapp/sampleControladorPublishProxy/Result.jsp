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
        String fechaNacimiento_10id=  request.getParameter("fechaNacimiento40");
            java.util.Calendar fechaNacimiento_10idTemp = null;
        if(!fechaNacimiento_10id.equals("")){
        java.text.DateFormat dateFormatfechaNacimiento40 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaNacimiento40  = dateFormatfechaNacimiento40.parse(fechaNacimiento_10id);
         fechaNacimiento_10idTemp = new java.util.GregorianCalendar();
        fechaNacimiento_10idTemp.setTime(dateTempfechaNacimiento40);
        }
        String direccion_11id=  request.getParameter("direccion42");
            java.lang.String direccion_11idTemp = null;
        if(!direccion_11id.equals("")){
         direccion_11idTemp  = direccion_11id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_9id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_9id.setFechaNacimiento(fechaNacimiento_10idTemp);
        publicadores1DtBeneficiario_9id.setDireccion(direccion_11idTemp);
        String fechaIngresada_13id=  request.getParameter("fechaIngresada46");
            java.util.Calendar fechaIngresada_13idTemp = null;
        if(!fechaIngresada_13id.equals("")){
        java.text.DateFormat dateFormatfechaIngresada46 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaIngresada46  = dateFormatfechaIngresada46.parse(fechaIngresada_13id);
         fechaIngresada_13idTemp = new java.util.GregorianCalendar();
        fechaIngresada_13idTemp.setTime(dateTempfechaIngresada46);
        }
        String id_14id=  request.getParameter("id48");
            java.lang.Integer id_14idTemp = null;
        if(!id_14id.equals("")){
         id_14idTemp  = java.lang.Integer.valueOf(id_14id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_12id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_12id.setFechaIngresada(fechaIngresada_13idTemp);
        publicadores1DtDonacion_12id.setId(id_14idTemp);
        String fechaPreparacion_15id=  request.getParameter("fechaPreparacion50");
            java.util.Calendar fechaPreparacion_15idTemp = null;
        if(!fechaPreparacion_15id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion50 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion50  = dateFormatfechaPreparacion50.parse(fechaPreparacion_15id);
         fechaPreparacion_15idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_15idTemp.setTime(dateTempfechaPreparacion50);
        }
        String fechaEntrega_16id=  request.getParameter("fechaEntrega52");
            java.util.Calendar fechaEntrega_16idTemp = null;
        if(!fechaEntrega_16id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega52 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega52  = dateFormatfechaEntrega52.parse(fechaEntrega_16id);
         fechaEntrega_16idTemp = new java.util.GregorianCalendar();
        fechaEntrega_16idTemp.setTime(dateTempfechaEntrega52);
        }
        String id_17id=  request.getParameter("id54");
        int id_17idTemp  = Integer.parseInt(id_17id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_8id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_8id.setBeneficiario(publicadores1DtBeneficiario_9id);
        publicadores1DtDistribucion_8id.setDonacion(publicadores1DtDonacion_12id);
        publicadores1DtDistribucion_8id.setFechaPreparacion(fechaPreparacion_15idTemp);
        publicadores1DtDistribucion_8id.setFechaEntrega(fechaEntrega_16idTemp);
        publicadores1DtDistribucion_8id.setId(id_17idTemp);
        sampleControladorPublishProxyid.modificarDistribucion(publicadores1DtDistribucion_8id);
break;
case 56:
        gotMethod = true;
        String arg0_18id=  request.getParameter("arg059");
            java.util.Calendar arg0_18idTemp = null;
        if(!arg0_18id.equals("")){
        java.text.DateFormat dateFormatarg059 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg059  = dateFormatarg059.parse(arg0_18id);
         arg0_18idTemp = new java.util.GregorianCalendar();
        arg0_18idTemp.setTime(dateTemparg059);
        }
        String arg1_19id=  request.getParameter("arg161");
            java.util.Calendar arg1_19idTemp = null;
        if(!arg1_19id.equals("")){
        java.text.DateFormat dateFormatarg161 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg161  = dateFormatarg161.parse(arg1_19id);
         arg1_19idTemp = new java.util.GregorianCalendar();
        arg1_19idTemp.setTime(dateTemparg161);
        }
        publicadores.DtReporte[] reporte56mtemp = sampleControladorPublishProxyid.reporte(arg0_18idTemp,arg1_19idTemp);
if(reporte56mtemp == null){
%>
<%=reporte56mtemp %>
<%
}else{
        String tempreturnp57 = null;
        if(reporte56mtemp != null){
        java.util.List listreturnp57= java.util.Arrays.asList(reporte56mtemp);
        tempreturnp57 = listreturnp57.toString();
        }
        %>
        <%=tempreturnp57%>
        <%
}
break;
case 63:
        gotMethod = true;
        publicadores.DtBeneficiario[] listaBeneficiarios63mtemp = sampleControladorPublishProxyid.listaBeneficiarios();
if(listaBeneficiarios63mtemp == null){
%>
<%=listaBeneficiarios63mtemp %>
<%
}else{
        String tempreturnp64 = null;
        if(listaBeneficiarios63mtemp != null){
        java.util.List listreturnp64= java.util.Arrays.asList(listaBeneficiarios63mtemp);
        tempreturnp64 = listreturnp64.toString();
        }
        %>
        <%=tempreturnp64%>
        <%
}
break;
case 66:
        gotMethod = true;
        String fechaNacimiento_22id=  request.getParameter("fechaNacimiento73");
            java.util.Calendar fechaNacimiento_22idTemp = null;
        if(!fechaNacimiento_22id.equals("")){
        java.text.DateFormat dateFormatfechaNacimiento73 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaNacimiento73  = dateFormatfechaNacimiento73.parse(fechaNacimiento_22id);
         fechaNacimiento_22idTemp = new java.util.GregorianCalendar();
        fechaNacimiento_22idTemp.setTime(dateTempfechaNacimiento73);
        }
        String direccion_23id=  request.getParameter("direccion75");
            java.lang.String direccion_23idTemp = null;
        if(!direccion_23id.equals("")){
         direccion_23idTemp  = direccion_23id;
        }
        %>
        <jsp:useBean id="publicadores1DtBeneficiario_21id" scope="session" class="publicadores.DtBeneficiario" />
        <%
        publicadores1DtBeneficiario_21id.setFechaNacimiento(fechaNacimiento_22idTemp);
        publicadores1DtBeneficiario_21id.setDireccion(direccion_23idTemp);
        String fechaIngresada_25id=  request.getParameter("fechaIngresada79");
            java.util.Calendar fechaIngresada_25idTemp = null;
        if(!fechaIngresada_25id.equals("")){
        java.text.DateFormat dateFormatfechaIngresada79 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaIngresada79  = dateFormatfechaIngresada79.parse(fechaIngresada_25id);
         fechaIngresada_25idTemp = new java.util.GregorianCalendar();
        fechaIngresada_25idTemp.setTime(dateTempfechaIngresada79);
        }
        String id_26id=  request.getParameter("id81");
            java.lang.Integer id_26idTemp = null;
        if(!id_26id.equals("")){
         id_26idTemp  = java.lang.Integer.valueOf(id_26id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_24id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_24id.setFechaIngresada(fechaIngresada_25idTemp);
        publicadores1DtDonacion_24id.setId(id_26idTemp);
        String fechaPreparacion_27id=  request.getParameter("fechaPreparacion83");
            java.util.Calendar fechaPreparacion_27idTemp = null;
        if(!fechaPreparacion_27id.equals("")){
        java.text.DateFormat dateFormatfechaPreparacion83 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaPreparacion83  = dateFormatfechaPreparacion83.parse(fechaPreparacion_27id);
         fechaPreparacion_27idTemp = new java.util.GregorianCalendar();
        fechaPreparacion_27idTemp.setTime(dateTempfechaPreparacion83);
        }
        String fechaEntrega_28id=  request.getParameter("fechaEntrega85");
            java.util.Calendar fechaEntrega_28idTemp = null;
        if(!fechaEntrega_28id.equals("")){
        java.text.DateFormat dateFormatfechaEntrega85 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaEntrega85  = dateFormatfechaEntrega85.parse(fechaEntrega_28id);
         fechaEntrega_28idTemp = new java.util.GregorianCalendar();
        fechaEntrega_28idTemp.setTime(dateTempfechaEntrega85);
        }
        String id_29id=  request.getParameter("id87");
        int id_29idTemp  = Integer.parseInt(id_29id);
        %>
        <jsp:useBean id="publicadores1DtDistribucion_20id" scope="session" class="publicadores.DtDistribucion" />
        <%
        publicadores1DtDistribucion_20id.setBeneficiario(publicadores1DtBeneficiario_21id);
        publicadores1DtDistribucion_20id.setDonacion(publicadores1DtDonacion_24id);
        publicadores1DtDistribucion_20id.setFechaPreparacion(fechaPreparacion_27idTemp);
        publicadores1DtDistribucion_20id.setFechaEntrega(fechaEntrega_28idTemp);
        publicadores1DtDistribucion_20id.setId(id_29idTemp);
        sampleControladorPublishProxyid.altaDistribucion(publicadores1DtDistribucion_20id);
break;
case 89:
        gotMethod = true;
        String arg0_30id=  request.getParameter("arg096");
        int arg0_30idTemp  = Integer.parseInt(arg0_30id);
        publicadores.DtDonacion getDonacion89mtemp = sampleControladorPublishProxyid.getDonacion(arg0_30idTemp);
if(getDonacion89mtemp == null){
%>
<%=getDonacion89mtemp %>
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
if(getDonacion89mtemp != null){
java.util.Calendar typefechaIngresada92 = getDonacion89mtemp.getFechaIngresada();
        java.text.DateFormat dateFormatfechaIngresada92 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaIngresada92 = typefechaIngresada92.getTime();
        String tempResultfechaIngresada92 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaIngresada92.format(datefechaIngresada92));
        %>
        <%= tempResultfechaIngresada92 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getDonacion89mtemp != null){
java.lang.Integer typeid94 = getDonacion89mtemp.getId();
        String tempResultid94 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeid94));
        %>
        <%= tempResultid94 %>
        <%
}%>
</TD>
</TABLE>
<%
}
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
java.util.Calendar typefechaNacimiento103 = tebece0.getFechaNacimiento();
        java.text.DateFormat dateFormatfechaNacimiento103 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaNacimiento103 = typefechaNacimiento103.getTime();
        String tempResultfechaNacimiento103 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaNacimiento103.format(datefechaNacimiento103));
        %>
        <%= tempResultfechaNacimiento103 %>
        <%
}}%>
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
java.util.Calendar typefechaIngresada109 = tebece0.getFechaIngresada();
        java.text.DateFormat dateFormatfechaIngresada109 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaIngresada109 = typefechaIngresada109.getTime();
        String tempResultfechaIngresada109 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaIngresada109.format(datefechaIngresada109));
        %>
        <%= tempResultfechaIngresada109 %>
        <%
}}%>
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
        int[] listarDonaciones121mtemp = sampleControladorPublishProxyid.listarDonaciones();
if(listarDonaciones121mtemp == null){
%>
<%=listarDonaciones121mtemp %>
<%
}else{
        String tempreturnp122 = "[";        for(int ireturnp122=0;ireturnp122< listarDonaciones121mtemp.length;ireturnp122++){
            tempreturnp122 = tempreturnp122 + listarDonaciones121mtemp[ireturnp122] + ",";
        }
        int lengthreturnp122 = tempreturnp122.length();
        tempreturnp122 = tempreturnp122.substring(0,(lengthreturnp122 - 1)) + "]";
        %>
        <%=tempreturnp122%>
        <%
}
break;
case 124:
        gotMethod = true;
        String arg0_32id=  request.getParameter("arg0131");
            java.lang.String arg0_32idTemp = null;
        if(!arg0_32id.equals("")){
         arg0_32idTemp  = arg0_32id;
        }
        publicadores.DtBeneficiario getBeneficiario124mtemp = sampleControladorPublishProxyid.getBeneficiario(arg0_32idTemp);
if(getBeneficiario124mtemp == null){
%>
<%=getBeneficiario124mtemp %>
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
if(getBeneficiario124mtemp != null){
java.util.Calendar typefechaNacimiento127 = getBeneficiario124mtemp.getFechaNacimiento();
        java.text.DateFormat dateFormatfechaNacimiento127 = java.text.DateFormat.getDateInstance();
        java.util.Date datefechaNacimiento127 = typefechaNacimiento127.getTime();
        String tempResultfechaNacimiento127 = org.eclipse.jst.ws.util.JspUtils.markup(dateFormatfechaNacimiento127.format(datefechaNacimiento127));
        %>
        <%= tempResultfechaNacimiento127 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">direccion:</TD>
<TD>
<%
if(getBeneficiario124mtemp != null){
java.lang.String typedireccion129 = getBeneficiario124mtemp.getDireccion();
        String tempResultdireccion129 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedireccion129));
        %>
        <%= tempResultdireccion129 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 133:
        gotMethod = true;
        String numeroDeLicencia_34id=  request.getParameter("numeroDeLicencia138");
            java.lang.String numeroDeLicencia_34idTemp = null;
        if(!numeroDeLicencia_34id.equals("")){
         numeroDeLicencia_34idTemp  = numeroDeLicencia_34id;
        }
        String direccion_35id=  request.getParameter("direccion140");
            java.lang.String direccion_35idTemp = null;
        if(!direccion_35id.equals("")){
         direccion_35idTemp  = direccion_35id;
        }
        String fechaNacimiento_36id=  request.getParameter("fechaNacimiento142");
            java.util.Calendar fechaNacimiento_36idTemp = null;
        if(!fechaNacimiento_36id.equals("")){
        java.text.DateFormat dateFormatfechaNacimiento142 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaNacimiento142  = dateFormatfechaNacimiento142.parse(fechaNacimiento_36id);
         fechaNacimiento_36idTemp = new java.util.GregorianCalendar();
        fechaNacimiento_36idTemp.setTime(dateTempfechaNacimiento142);
        }
        String email_37id=  request.getParameter("email144");
            java.lang.String email_37idTemp = null;
        if(!email_37id.equals("")){
         email_37idTemp  = email_37id;
        }
        String pw_38id=  request.getParameter("pw146");
            java.lang.String pw_38idTemp = null;
        if(!pw_38id.equals("")){
         pw_38idTemp  = pw_38id;
        }
        String nombre_39id=  request.getParameter("nombre148");
            java.lang.String nombre_39idTemp = null;
        if(!nombre_39id.equals("")){
         nombre_39idTemp  = nombre_39id;
        }
        %>
        <jsp:useBean id="publicadores1DtUsrModificar_33id" scope="session" class="publicadores.DtUsrModificar" />
        <%
        publicadores1DtUsrModificar_33id.setNumeroDeLicencia(numeroDeLicencia_34idTemp);
        publicadores1DtUsrModificar_33id.setDireccion(direccion_35idTemp);
        publicadores1DtUsrModificar_33id.setFechaNacimiento(fechaNacimiento_36idTemp);
        publicadores1DtUsrModificar_33id.setEmail(email_37idTemp);
        publicadores1DtUsrModificar_33id.setPw(pw_38idTemp);
        publicadores1DtUsrModificar_33id.setNombre(nombre_39idTemp);
        String arg1_40id=  request.getParameter("arg1150");
            java.lang.String arg1_40idTemp = null;
        if(!arg1_40id.equals("")){
         arg1_40idTemp  = arg1_40id;
        }
        String arg2_41id=  request.getParameter("arg2152");
            java.lang.String arg2_41idTemp = null;
        if(!arg2_41id.equals("")){
         arg2_41idTemp  = arg2_41id;
        }
        publicadores.EstadoBeneficiario publicadores1EstadoBeneficiario_42id = null;
        String arg4_43id=  request.getParameter("arg4156");
            java.lang.String arg4_43idTemp = null;
        if(!arg4_43id.equals("")){
         arg4_43idTemp  = arg4_43id;
        }
        String arg5_44id=  request.getParameter("arg5158");
            java.util.Calendar arg5_44idTemp = null;
        if(!arg5_44id.equals("")){
        java.text.DateFormat dateFormatarg5158 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTemparg5158  = dateFormatarg5158.parse(arg5_44id);
         arg5_44idTemp = new java.util.GregorianCalendar();
        arg5_44idTemp.setTime(dateTemparg5158);
        }
        publicadores.Barrio publicadores1Barrio_45id = null;
        String arg7_46id=  request.getParameter("arg7162");
            java.lang.String arg7_46idTemp = null;
        if(!arg7_46id.equals("")){
         arg7_46idTemp  = arg7_46id;
        }
        String arg8_47id=  request.getParameter("arg8164");
            java.lang.String arg8_47idTemp = null;
        if(!arg8_47id.equals("")){
         arg8_47idTemp  = arg8_47id;
        }
        sampleControladorPublishProxyid.modificarUsuario(publicadores1DtUsrModificar_33id,arg1_40idTemp,arg2_41idTemp,publicadores1EstadoBeneficiario_42id,arg4_43idTemp,arg5_44idTemp,publicadores1Barrio_45id,arg7_46idTemp,arg8_47idTemp);
break;
case 166:
        gotMethod = true;
        String fechaIngresada_49id=  request.getParameter("fechaIngresada171");
            java.util.Calendar fechaIngresada_49idTemp = null;
        if(!fechaIngresada_49id.equals("")){
        java.text.DateFormat dateFormatfechaIngresada171 = java.text.DateFormat.getDateInstance();
        java.util.Date dateTempfechaIngresada171  = dateFormatfechaIngresada171.parse(fechaIngresada_49id);
         fechaIngresada_49idTemp = new java.util.GregorianCalendar();
        fechaIngresada_49idTemp.setTime(dateTempfechaIngresada171);
        }
        String id_50id=  request.getParameter("id173");
            java.lang.Integer id_50idTemp = null;
        if(!id_50id.equals("")){
         id_50idTemp  = java.lang.Integer.valueOf(id_50id);
        }
        %>
        <jsp:useBean id="publicadores1DtDonacion_48id" scope="session" class="publicadores.DtDonacion" />
        <%
        publicadores1DtDonacion_48id.setFechaIngresada(fechaIngresada_49idTemp);
        publicadores1DtDonacion_48id.setId(id_50idTemp);
        sampleControladorPublishProxyid.modificarDonacion(publicadores1DtDonacion_48id);
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
        String arg0_51id=  request.getParameter("arg0183");
            java.lang.String arg0_51idTemp = null;
        if(!arg0_51id.equals("")){
         arg0_51idTemp  = arg0_51id;
        }
        publicadores.DtRepartidor getRepartidor178mtemp = sampleControladorPublishProxyid.getRepartidor(arg0_51idTemp);
if(getRepartidor178mtemp == null){
%>
<%=getRepartidor178mtemp %>
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
if(getRepartidor178mtemp != null){
java.lang.String typenumeroDeLicencia181 = getRepartidor178mtemp.getNumeroDeLicencia();
        String tempResultnumeroDeLicencia181 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenumeroDeLicencia181));
        %>
        <%= tempResultnumeroDeLicencia181 %>
        <%
}%>
</TD>
</TABLE>
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