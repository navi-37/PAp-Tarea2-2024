<%@page contentType="text/html;charset=UTF-8"%>
<HTML>
<HEAD>
<TITLE>Inputs</TITLE>
</HEAD>
<BODY>
<H1>Inputs</H1>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

boolean valid = true;

if(methodID != -1) methodID = Integer.parseInt(method);
switch (methodID){ 
case 2:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 5:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">endpoint:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="endpoint8" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 10:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 13:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg020" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg016" SIZE=20></TD>
<%
java.text.DateFormat dateFormatarg016 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamparg016  = new java.util.GregorianCalendar();
java.util.Date datearg016 = gcExamparg016.getTime();
String tempResultarg016 = dateFormatarg016.format(datearg016);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultarg016 %> </TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg118" SIZE=20></TD>
<%
java.text.DateFormat dateFormatarg118 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamparg118  = new java.util.GregorianCalendar();
java.util.Date datearg118 = gcExamparg118.getTime();
String tempResultarg118 = dateFormatarg118.format(datearg118);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultarg118 %> </TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
<<<<<<< HEAD
case 22:
=======
case 20:
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<<<<<<< HEAD
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg043" SIZE=20></TD>
=======
<TD COLSPAN="3" ALIGN="LEFT">arg0:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaIngresada:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id27" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
<<<<<<< HEAD
case 45:
=======
case 29:
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">arg0:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">beneficiario:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaNacimiento:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">direccion:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="direccion54" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="direccion38" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">donacion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaIngresada:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id60" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id44" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPreparacion:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaPreparacion62" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaPreparacion62 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaPreparacion62  = new java.util.GregorianCalendar();
java.util.Date datefechaPreparacion62 = gcExampfechaPreparacion62.getTime();
String tempResultfechaPreparacion62 = dateFormatfechaPreparacion62.format(datefechaPreparacion62);
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaPreparacion46" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaPreparacion46 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaPreparacion46  = new java.util.GregorianCalendar();
java.util.Date datefechaPreparacion46 = gcExampfechaPreparacion46.getTime();
String tempResultfechaPreparacion46 = dateFormatfechaPreparacion46.format(datefechaPreparacion46);
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<<<<<<< HEAD
<TD ALIGN="left"> eg. <%= tempResultfechaPreparacion62 %> </TD>
=======
<TD ALIGN="left"> eg. <%= tempResultfechaPreparacion46 %> </TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaEntrega:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaEntrega64" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaEntrega64 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaEntrega64  = new java.util.GregorianCalendar();
java.util.Date datefechaEntrega64 = gcExampfechaEntrega64.getTime();
String tempResultfechaEntrega64 = dateFormatfechaEntrega64.format(datefechaEntrega64);
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaEntrega48" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaEntrega48 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaEntrega48  = new java.util.GregorianCalendar();
java.util.Date datefechaEntrega48 = gcExampfechaEntrega48.getTime();
String tempResultfechaEntrega48 = dateFormatfechaEntrega48.format(datefechaEntrega48);
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<<<<<<< HEAD
<TD ALIGN="left"> eg. <%= tempResultfechaEntrega64 %> </TD>
=======
<TD ALIGN="left"> eg. <%= tempResultfechaEntrega48 %> </TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id66" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id50" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
<<<<<<< HEAD
case 68:
=======
case 52:
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg075" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg059" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
<<<<<<< HEAD
case 77:
=======
case 61:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg068" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 70:
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">arg0:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email82" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email75" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pw:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="pw84" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="pw77" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nombre86" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nombre79" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
<<<<<<< HEAD
case 88:
=======
case 81:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg0102" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 104:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 107:
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">arg0:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaIngresada:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id95" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id114" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
<<<<<<< HEAD
case 97:
=======
case 116:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 119:
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">arg0:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">beneficiario:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaNacimiento:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">direccion:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="direccion106" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="direccion128" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">donacion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaIngresada:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id112" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id134" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPreparacion:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaPreparacion114" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaPreparacion114 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaPreparacion114  = new java.util.GregorianCalendar();
java.util.Date datefechaPreparacion114 = gcExampfechaPreparacion114.getTime();
String tempResultfechaPreparacion114 = dateFormatfechaPreparacion114.format(datefechaPreparacion114);
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaPreparacion136" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaPreparacion136 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaPreparacion136  = new java.util.GregorianCalendar();
java.util.Date datefechaPreparacion136 = gcExampfechaPreparacion136.getTime();
String tempResultfechaPreparacion136 = dateFormatfechaPreparacion136.format(datefechaPreparacion136);
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<<<<<<< HEAD
<TD ALIGN="left"> eg. <%= tempResultfechaPreparacion114 %> </TD>
=======
<TD ALIGN="left"> eg. <%= tempResultfechaPreparacion136 %> </TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaEntrega:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaEntrega116" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaEntrega116 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaEntrega116  = new java.util.GregorianCalendar();
java.util.Date datefechaEntrega116 = gcExampfechaEntrega116.getTime();
String tempResultfechaEntrega116 = dateFormatfechaEntrega116.format(datefechaEntrega116);
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaEntrega138" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaEntrega138 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaEntrega138  = new java.util.GregorianCalendar();
java.util.Date datefechaEntrega138 = gcExampfechaEntrega138.getTime();
String tempResultfechaEntrega138 = dateFormatfechaEntrega138.format(datefechaEntrega138);
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<<<<<<< HEAD
<TD ALIGN="left"> eg. <%= tempResultfechaEntrega116 %> </TD>
=======
<TD ALIGN="left"> eg. <%= tempResultfechaEntrega138 %> </TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id118" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id140" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
<<<<<<< HEAD
case 120:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg0123" SIZE=20></TD>
<%
java.text.DateFormat dateFormatarg0123 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamparg0123  = new java.util.GregorianCalendar();
java.util.Date datearg0123 = gcExamparg0123.getTime();
String tempResultarg0123 = dateFormatarg0123.format(datearg0123);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultarg0123 %> </TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg1125" SIZE=20></TD>
<%
java.text.DateFormat dateFormatarg1125 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamparg1125  = new java.util.GregorianCalendar();
java.util.Date datearg1125 = gcExamparg1125.getTime();
String tempResultarg1125 = dateFormatarg1125.format(datearg1125);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultarg1125 %> </TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 127:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 130:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">arg0:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaIngresada:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id137" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 139:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
=======
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
case 142:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<<<<<<< HEAD
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 145:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg0150" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 152:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
=======
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">arg0:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">numeroDeLicencia:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="numeroDeLicencia157" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="numeroDeLicencia147" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">direccion:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="direccion159" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="direccion149" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaNacimiento:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email163" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email153" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pw:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="pw165" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="pw155" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nombre167" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nombre157" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg1:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg1169" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg1159" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg2:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg2171" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg2161" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
</TABLE>
<TABLE>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg4:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg4175" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg4165" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg5:</TD>
</TABLE>
<TABLE>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg7:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg7181" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg7171" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg8:</TD>
<<<<<<< HEAD
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg8183" SIZE=20></TD>
=======
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg8173" SIZE=20></TD>
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
<<<<<<< HEAD
=======
case 175:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg0180" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 182:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
>>>>>>> c7ff48a22d92f03c4bf050040aba433a8e5308da
case 185:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg0194" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 196:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg0203" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 205:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg0214" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 1111111111:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">URLString:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="url1111111111" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 1111111112:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
}
if (valid) {
%>
Select a method to test.
<%
}
%>

</BODY>
</HTML>
