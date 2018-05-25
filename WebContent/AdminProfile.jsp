<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.cdac.dao.Admindao"%>
<%@page import="com.cdac.beans.Adminbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String id=(String)session.getAttribute("id");
String name=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
String mobile=(String)session.getAttribute("mobile");
String gender=(String)session.getAttribute("gender");
String password=(String)session.getAttribute("password");
session.setAttribute("name", name);
session.setAttribute("email", email);
session.setAttribute("mobile", mobile);
session.setAttribute("gender",gender);
session.setAttribute("id",id);
session.setAttribute("password",password);
%>
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

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><%=name%>  Profile</a>
    </div>
    </div>
</nav>
<div class="row">
<div class="col-md-6 col-md-offset-1">
<h1>ID: <%=id %></h1>
<h1>Name: <%=name %></h1>
<h1>Email:<%=email %></h1>
<h1>Mobile: <%=mobile %></h1>
<h1>Gender: <%=gender %></h1>
</div>
<div class="col-md-4">
<label>EDIT PROFILE AND CHANGE PASSWORD</label>
<br>
<br>
<input type="submit" class="btn btn-primary" name="edit" value="Edit Profile" onclick="location.href='EditAdminProfile.jsp';" />
<br>
<br>
<button type="submit" class="btn btn-primary" name="change" onclick="location.href='ChangeAdminPassword.jsp';">Change Password</button>

</div>
</div>
  </body>
</html>