<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
String id=(String)session.getAttribute("id");
String name=(String)session.getAttribute("name");
String email=(String)session.getAttribute("email");
String mobile=(String)session.getAttribute("mobile");
String gender=(String)session.getAttribute("gender");
String password=(String)session.getAttribute("password");
session.setAttribute("id", id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<form method="post" action="/RealEstate/AdminServlet">
<div class="container">
  <form>
    <div class="form-group">
      <label for="usr">Name:</label>
      <input type="text" class="form-control" name="name" value=<%=name %>>
    </div>
    <div class="form-group">
      <label for="pwd">Email:</label>
      <input type="text" class="form-control" name="email" value=<%=email %>>
    </div>
    <div class="form-group">
      <label for="pwd">Mobile:</label>
      <input type="text" class="form-control" name="mobile" value=<%=mobile %>>
    </div>
    <div class="form-group">
      <label for="pwd">Gender</label>
      <input type="text" class="form-control" name="gender" value=<%=gender%>>
    </div>
  </form>
  <input type="submit" class="btn btn-primary" name="edit" value="Edit Profile" />
</div>
</form>
</body>
</html>