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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg020" SIZE=20></TD>
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
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg043" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 45:
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="direccion54" SIZE=20></TD>
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id60" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPreparacion:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaPreparacion62" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaPreparacion62 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaPreparacion62  = new java.util.GregorianCalendar();
java.util.Date datefechaPreparacion62 = gcExampfechaPreparacion62.getTime();
String tempResultfechaPreparacion62 = dateFormatfechaPreparacion62.format(datefechaPreparacion62);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaPreparacion62 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaEntrega:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaEntrega64" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaEntrega64 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaEntrega64  = new java.util.GregorianCalendar();
java.util.Date datefechaEntrega64 = gcExampfechaEntrega64.getTime();
String tempResultfechaEntrega64 = dateFormatfechaEntrega64.format(datefechaEntrega64);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaEntrega64 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id66" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 68:
valid = false;
%>
<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup(method)%>">
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg0:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg075" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 77:
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email82" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pw:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="pw84" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nombre86" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 88:
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id95" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
case 97:
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="direccion106" SIZE=20></TD>
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id112" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaPreparacion:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaPreparacion114" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaPreparacion114 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaPreparacion114  = new java.util.GregorianCalendar();
java.util.Date datefechaPreparacion114 = gcExampfechaPreparacion114.getTime();
String tempResultfechaPreparacion114 = dateFormatfechaPreparacion114.format(datefechaPreparacion114);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaPreparacion114 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaEntrega:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="fechaEntrega116" SIZE=20></TD>
<%
java.text.DateFormat dateFormatfechaEntrega116 = java.text.DateFormat.getDateInstance();
java.util.GregorianCalendar gcExampfechaEntrega116  = new java.util.GregorianCalendar();
java.util.Date datefechaEntrega116 = gcExampfechaEntrega116.getTime();
String tempResultfechaEntrega116 = dateFormatfechaEntrega116.format(datefechaEntrega116);
%>
<TD ALIGN="left">
</TR>
<TR>
<TD> </TD>
<TD ALIGN="left"> eg. <%= tempResultfechaEntrega116 %> </TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="id118" SIZE=20></TD>
</TR>
</TABLE>
<BR>
<INPUT TYPE="SUBMIT" VALUE="Invoke">
<INPUT TYPE="RESET" VALUE="Clear">
</FORM>
<%
break;
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
case 142:
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
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">arg0:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">numeroDeLicencia:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="numeroDeLicencia157" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">direccion:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="direccion159" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">fechaNacimiento:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="email163" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pw:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="pw165" SIZE=20></TD>
</TR>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nombre:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="nombre167" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg1:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg1169" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg2:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg2171" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg4:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg4175" SIZE=20></TD>
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
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg7181" SIZE=20></TD>
</TR>
</TABLE>
<TABLE>
<TR>
<TD COLSPAN="1" ALIGN="LEFT">arg8:</TD>
<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="arg8183" SIZE=20></TD>
</TR>
</TABLE>
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
