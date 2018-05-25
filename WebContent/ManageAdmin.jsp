<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.cdac.dao.Admindao"%>
<%@page import="com.cdac.beans.Adminbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/RealEstate/AdminServlet"> 
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Manage Admin</a>
    </div>
    </div>
</nav>
<%
Adminbean a=new Adminbean();
Admindao admindao=new Admindao();
admindao.select();
List<Adminbean> list=admindao.select();
Iterator<Adminbean> itr=list.iterator();
while(itr.hasNext())
{
	 Adminbean t=itr.next();
	int id=t.getId();
	 String name=t.getName();
	 String mobile=t.getMobile();
	 String gender=t.getGender();
	 String id1=String.valueOf(id);
	 session.setAttribute("id",id1);
%>

<div class="row">
<!-- properties -->
<div id="row">
<div class="col-md-6 col-md-offset-1">
<div class="col-lg-4 col-sm-6">
<p >ID:<%=id %></p>
<p >Name:<%=name %></p>
<p >Mobile:<%=mobile %></p>
<p >Gender:<%=gender %></p>
</div>
</div>
<div class="col-md-4">
<input type="submit" class="btn btn-primary" name="delete" value="Delete" />
</div>
</div>
<div>

</div>
</div>
<svg height="30" width="500">
<line x1="0" y1="0" x2="180 y2=0"
style="stroke:rgb(255,0,0);stroke-width:2"/>
</svg>
<%
}
%>
</form>
 </body>
</html>