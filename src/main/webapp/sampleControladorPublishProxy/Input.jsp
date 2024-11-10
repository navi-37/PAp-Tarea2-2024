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
<TD COLSPAN="3" ALIGN="LEFT">arg0:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaIngresada:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaIngresada18" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaIngresada18 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaIngresada18  = new java.util.GregorianCalendar();
java.util.Date datefechaIngresada18 = gcExampfechaIngresada18.getTime();
String tempResultfechaIngresada18 = dateFormatfechaIngresada18.format(datefechaIngresada18);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaIngresada18 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id20" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 22:
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
case 25:
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
case 28:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg049" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 51:
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaIngresada56" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaIngresada56 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaIngresada56  = new java.util.GregorianCalendar();
java.util.Date datefechaIngresada56 = gcExampfechaIngresada56.getTime();
String tempResultfechaIngresada56 = dateFormatfechaIngresada56.format(datefechaIngresada56);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaIngresada56 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id58" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 60:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg067" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 69:
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaNacimiento76" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaNacimiento76 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaNacimiento76  = new java.util.GregorianCalendar();
java.util.Date datefechaNacimiento76 = gcExampfechaNacimiento76.getTime();
String tempResultfechaNacimiento76 = dateFormatfechaNacimiento76.format(datefechaNacimiento76);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaNacimiento76 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">direccion:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="direccion78" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">donacion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaIngresada:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaIngresada82" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaIngresada82 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaIngresada82  = new java.util.GregorianCalendar();
java.util.Date datefechaIngresada82 = gcExampfechaIngresada82.getTime();
String tempResultfechaIngresada82 = dateFormatfechaIngresada82.format(datefechaIngresada82);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaIngresada82 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id84" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPreparacion:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaPreparacion86" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaPreparacion86 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaPreparacion86  = new java.util.GregorianCalendar();
java.util.Date datefechaPreparacion86 = gcExampfechaPreparacion86.getTime();
String tempResultfechaPreparacion86 = dateFormatfechaPreparacion86.format(datefechaPreparacion86);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaPreparacion86 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaEntrega:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaEntrega88" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaEntrega88 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaEntrega88  = new java.util.GregorianCalendar();
java.util.Date datefechaEntrega88 = gcExampfechaEntrega88.getTime();
String tempResultfechaEntrega88 = dateFormatfechaEntrega88.format(datefechaEntrega88);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaEntrega88 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id90" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 92:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg099" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 101:
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email106" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pw:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="pw108" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nombre110" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 112:
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaNacimiento119" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaNacimiento119 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaNacimiento119  = new java.util.GregorianCalendar();
java.util.Date datefechaNacimiento119 = gcExampfechaNacimiento119.getTime();
String tempResultfechaNacimiento119 = dateFormatfechaNacimiento119.format(datefechaNacimiento119);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaNacimiento119 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">direccion:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="direccion121" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">donacion:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">fechaIngresada:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaIngresada125" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaIngresada125 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaIngresada125  = new java.util.GregorianCalendar();
java.util.Date datefechaIngresada125 = gcExampfechaIngresada125.getTime();
String tempResultfechaIngresada125 = dateFormatfechaIngresada125.format(datefechaIngresada125);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaIngresada125 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id127" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPreparacion:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaPreparacion129" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaPreparacion129 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaPreparacion129  = new java.util.GregorianCalendar();
java.util.Date datefechaPreparacion129 = gcExampfechaPreparacion129.getTime();
String tempResultfechaPreparacion129 = dateFormatfechaPreparacion129.format(datefechaPreparacion129);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaPreparacion129 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaEntrega:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaEntrega131" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaEntrega131 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaEntrega131  = new java.util.GregorianCalendar();
java.util.Date datefechaEntrega131 = gcExampfechaEntrega131.getTime();
String tempResultfechaEntrega131 = dateFormatfechaEntrega131.format(datefechaEntrega131);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaEntrega131 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id133" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 135:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg0138" SIZE=20></TD>
<%
java.text.DateFormat dateFormatarg0138 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamparg0138  = new java.util.GregorianCalendar();
java.util.Date datearg0138 = gcExamparg0138.getTime();
String tempResultarg0138 = dateFormatarg0138.format(datearg0138);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultarg0138 %> </TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg1140" SIZE=20></TD>
<%
java.text.DateFormat dateFormatarg1140 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamparg1140  = new java.util.GregorianCalendar();
java.util.Date datearg1140 = gcExamparg1140.getTime();
String tempResultarg1140 = dateFormatarg1140.format(datearg1140);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultarg1140 %> </TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 142:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">arg0:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">numeroDeLicencia:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="numeroDeLicencia147" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">direccion:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="direccion149" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaNacimiento:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaNacimiento151" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaNacimiento151 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaNacimiento151  = new java.util.GregorianCalendar();
java.util.Date datefechaNacimiento151 = gcExampfechaNacimiento151.getTime();
String tempResultfechaNacimiento151 = dateFormatfechaNacimiento151.format(datefechaNacimiento151);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaNacimiento151 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email153" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pw:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="pw155" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nombre157" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg1159" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg2:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg2161" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg4:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg4165" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg5:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg5167" SIZE=20></TD>
<%
java.text.DateFormat dateFormatarg5167 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExamparg5167  = new java.util.GregorianCalendar();
java.util.Date datearg5167 = gcExamparg5167.getTime();
String tempResultarg5167 = dateFormatarg5167.format(datearg5167);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultarg5167 %> </TD>
</TR>
</TABLE>
<TABLE>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg7:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg7171" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg8:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg8173" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
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
case 185:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg0192" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 194:
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
