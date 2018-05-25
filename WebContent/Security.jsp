<%@page import="java.util.Iterator"%>
<%@page import="com.cdac.beans.Securitybean"%>
<%@page import="java.util.List"%>
<%@page import="com.cdac.dao.Securitydao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/RealEstate/SecurityServlet">
<%
Securitydao dao=new Securitydao();
List<Securitybean> list=dao.aut();
Iterator<Securitybean> itr=list.iterator();
while(itr.hasNext())
{
	
Securitybean t=itr.next();
String security=t.getSecurity();

%>
<table>
<tr>
<td>
   <input type="text" class="form-control"  name="security" value=<%=security%> />
 </td>
 </tr>
 <%
 }
 %>
 <tr>
 <td>
 <input type="submit" class="btn btn-success" name="update" value="Update Security Code"/>
 </td>
 </tr>            
</table>
</form>
</body>
</html>