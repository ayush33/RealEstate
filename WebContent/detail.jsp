<!DOCTYPE html>
<%@page import="java.io.IOException"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="com.cdac.dao.Selldao"%>
<%@page import="com.cdac.beans.Sellbean"%>
<%@ page import="java.util.*" %>

<html lang="en">

<!-- Mirrored from thebootstrapthemes.com/live/thebootstrapthemes-realestate/buysalerent.php by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Jul 2017 18:43:35 GMT -->
<head>
<title>Realestate Bootstrap Theme </title>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

 	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css" />
  <link rel="stylesheet" href="assets/style.css"/>
  <script src="../../../code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.js"></script>
  <script src="assets/script.js"></script>



<!-- Owl stylesheet -->
<link rel="stylesheet" href="assets/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="assets/owl-carousel/owl.theme.css">
<script src="assets/owl-carousel/owl.carousel.js"></script>
<!-- Owl stylesheet -->


<!-- slitslider -->
    <link rel="stylesheet" type="text/css" href="assets/slitslider/css/style.css" />
    <link rel="stylesheet" type="text/css" href="assets/slitslider/css/custom.css" />
    <script type="text/javascript" src="assets/slitslider/js/modernizr.custom.79639.js"></script>
    <script type="text/javascript" src="assets/slitslider/js/jquery.ba-cond.min.js"></script>
    <script type="text/javascript" src="assets/slitslider/js/jquery.slitslider.js"></script>
<!-- slitslider -->

<script src='../../google_analytics_auto.js'></script></head>

<body>


<!-- Header Starts -->
<div class="navbar-wrapper">

        <div class="navbar-inverse" role="navigation">
          <div class="container">
            <div class="navbar-header">


              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>

            </div>


            <!-- Nav Starts -->
            <div class="navbar-collapse  collapse">
              <ul class="nav navbar-nav navbar-right">
               <li class="active"><a href="index-2.html">Home</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>
              </ul>
            </div>
            <!-- #Nav Ends -->

          </div>
        </div>

    </div>
<!-- #Header Starts -->







<div class="container">
<div class="properties-listing spacer">

<div class="row"><div class="col-lg-3 col-sm-4 ">

          
  </div>
</div>

<div class="col-lg-9

 col-sm-8">
<div class="row">
<%
Selldao dao=new Selldao();
List<Sellbean> list=dao.show();
Iterator<Sellbean> itr=list.iterator();
String type=(String)session.getAttribute("type");
String city=(String)session.getAttribute("city");
while(itr.hasNext())
{
	
	Sellbean t=itr.next();
	String type1=t.getType();
	String city1=t.getCity();
	if(type.equals(type) && city.equals(city1))
    {
	int id=t.getId();
	
	String name=t.getName();
    String mobile=t.getContact();
	String area=t.getArea();
	String bhk=t.getBhk();
	String furnished=t.getFurnished();
	String description=t.getDescription();
	String price=t.getPrice();
	byte[] photo=t.getPhoto();
	String id1=String.valueOf(id);
	session.setAttribute("id1", id1);
		
%>


     <!-- properties -->
      <div class="col-lg-4 col-sm-6">
      <div class="properties">
        <div class="image-holder"><img src="images/properties/1.jpg" class="img-responsive" alt="properties">

          <div class="status sold">for sell</div>
        </div>
        <h4><%=type %></h4>
          <h4>Area: <%=area %></h4>
        <p class="price">Price:<%=price %></p>
    <%
     if(bhk!=null)
     {
    %>
      <h4>BHK: <%=bhk%></h4>
    <%
     }
    %>
    <%=id %>
        <a class="btn btn-primary" href="detail1.jsp">View Details</a>
      </div>
      </div>
      <!-- properties -->


    
      <!-- properties -->
      <div class="center">

</div>
<%
}
	
}	
%>
</div>
</div>
</div>
</div>



<!-- Modal -->
<div id="loginpop" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="row">
        <div class="col-sm-6 login">
        <h4>Login</h4>
          <form class="" role="form">
        <div class="form-group">
          <label class="sr-only" for="exampleInputEmail2">Email address</label>
          <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email">
        </div>
        <div class="form-group">
          <label class="sr-only" for="exampleInputPassword2">Password</label>
          <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
        </div>
        <div class="checkbox">
          <label>
            <input type="checkbox"> Remember me
          </label>
        </div>
        <button type="submit" class="btn btn-success">Sign in</button>
      </form>          
        </div>
        <div class="col-sm-6">
          <h4>New User Sign Up</h4>
          <p>Join today and get updated with all the properties deal happening around.</p>
          <button type="submit" class="btn btn-info"  onclick="window.location.href='register.html'">Join Now</button>
        </div>

      </div>
    </div>
  </div>
</div>
<!-- /.modal -->



</body>

<!-- Mirrored from thebootstrapthemes.com/live/thebootstrapthemes-realestate/buysalerent.php by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Jul 2017 18:43:35 GMT -->
</html>



