  <%@ page import="java.sql.*" %>
        <%@ page  import="java.util.Properties" %>
		<%@ page  import="javax.mail.*" %>
		<%@ page import="javax.mail.internet.*" %>
		<%@ page import="java.util.Random" %>
						

<%@page import="java.util.Iterator"%>
<%@page import="com.cdac.beans.Registerbean"%>
<%@page import="java.util.List"%>
<%@page import="com.cdac.dao.Registerdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="ForgotPassword.jsp">
<%
String email=request.getParameter("email");
System.out.println(email);

String result=null;
final String username="ayush.1996.jain@gmail.com";
final String password="fourbottleayu";	
String subject="Forgot Password";
String mesg="Your New Password is";
Properties props=new Properties();
props.put("mail.smtp.host","smtp.gmail.com");//for yahoo it is smtp.mail.yahoo.com
props.put("mail.smtp.auth","true");
props.put("mail.debug","true");
props.put("mail.smtp.port","465");
props.put("mail.smtp.socketFactory.port","465");
props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.socketFactory.fallback","false");
Session s=Session.getInstance(props,new Authenticator()
  {   protected PasswordAuthentication getPasswordAuthentication()
  	 {
  		return new PasswordAuthentication(username,password);		
  	 }
  			
  });

   try
   {			  
  		Message message=new MimeMessage(s);
  		Random random=new Random();
  		int r=random.nextInt(1000);
  		String password1=String.valueOf(r);
  		message.setFrom(new InternetAddress(username));
  		    message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
  		    message.setSubject(subject);
  		    message.setText(mesg+" random: "+r);
  		    Transport.send(message);
  		    out.println("<script>alert('Your Password is send to your mail')</script>");
  		    String pass=Integer.toString(r);	       
  	   Registerdao dao=new Registerdao();
  	 dao.chnage(email, password1);
  	 response.sendRedirect("Login.jsp");
   }
	catch(MessagingException e)
	{
		e.printStackTrace();
	
	}	
 
%>


 </form>          
</body>
</html>