<!DOCTYPE html>
<%@page import="com.cdac.beans.Rentbean"%>
<%@page import="com.cdac.dao.Rentdao"%>
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
                <li><a href="agents.html">Agents</a></li>         
                <li><a href="blog.html">Blog</a></li>
                <li><a href="contact.html">Contact</a></li>
              </ul>
            </div>
            <!-- #Nav Ends -->

          </div>
        </div>

    </div>
<!-- #Header Starts -->
<div class="container">
<!-- Header Starts -->
<div class="header">
<a href="index-2.html"><img src="images/logo.png" alt="Realestate"></a>

              <ul class="pull-right">
                <li><a href="buysalerent.html">Buy</a></li>
                <li><a href="buysalerent.html">Sale</a></li>         
                <li><a href="buysalerent.html">Rent</a></li>
              </ul>
</div>
<!-- #Header Starts -->
</div><!-- banner -->
<div class="inside-banner">
  <div class="container"> 
    <span class="pull-right"><a href="index-2.html">Home</a> / Buy, Sale & Rent</span>
    <h2>Buy, Sale & Rent</h2>
</div>
</div>
<!-- banner -->



      <div class="row">
<div class="col-md-5 col-md-offset-1">
   
     <h1>Sale Add</h1>
     <%
    Selldao dao=new Selldao();
    List<Sellbean> list=dao.show();
    Iterator<Sellbean> itr=list.iterator();
    while(itr.hasNext())
    {
    	
        Sellbean t=itr.next();
    	String type1=t.getType();
    	String city1=t.getCity();
    		int id=t.getId();
    	String name=t.getName();
         String mobile=t.getContact();
    	String area=t.getArea();
    	String bhk=t.getBhk();
    	String furnished=t.getFurnished();
    	String description=t.getDescription();
    	String price=t.getPrice();
    	 byte [] raw=null;
    	 raw=t.getPhoto();
    	 String id1=String.valueOf(id);
    	 		
    %>
     <br>
     <br>
        <div class="image-holder"><img src="q"class="img-responsive" alt="properties">
     
          <div class="status sold">for sell</div>
        </div>
        <h4>q</h4>
        <p class="price">Price:<%=price %></p>
      <h4><%=bhk %></h4>
        <a class="btn btn-primary" href="detail1.jsp">View Details</a>
      </div>
    <%
        }
    %>
     
      <div class="col-md-5">
     <%
     Rentdao dao1=new Rentdao();
     List<Rentbean> list1=dao1.show();
     Iterator<Rentbean> itr1=list1.iterator();
     while(itr.hasNext())
     {
     	
     	Rentbean t=itr1.next();
     	String type1=t.getType();
     	String city1=t.getCity();
     		int id=t.getId();
     	String name=t.getName();
          String mobile=t.getContact();
     	String area=t.getArea();
     	String bhk=t.getBhk();
     	String furnished=t.getFurnished();
     	String description=t.getDescription();
     	String price=t.getPrice();
     	 byte [] raw=null;
     	 raw=t.getPhoto();
     	 String id1=String.valueOf(id);
     	 session.setAttribute("id", id1);
     		
     %>
      <h2>Renter Add</h2>
      <br>
      <br>
        <div class="image-holder"><img src="q"class="img-responsive" alt="properties">
     
          <div class="status sold">for sell</div>
        </div>
        <h4>q</h4>
        <p class="price">Price: price</p>
      <h4>bhk</h4>
        <a class="btn btn-primary" href="detail1.jsp">View Details</a>
      </div>
      <%
}
      %>
</div>

</body>

<!-- Mirrored from thebootstrapthemes.com/live/thebootstrapthemes-realestate/buysalerent.php by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Jul 2017 18:43:35 GMT -->
</html>



