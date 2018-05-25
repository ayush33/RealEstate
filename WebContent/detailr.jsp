<!DOCTYPE html>
<%@page import="com.cdac.beans.Rentbean"%>
<%@page import="com.cdac.dao.Rentdao"%>
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
                <li><a href="about.jsp">About</a></li>
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

   <div class="col-lg-7">
  </div>
          
  </div>
</div>

<div class="col-lg-9

 col-sm-8">
<div class="row">
<%
Rentdao dao=new Rentdao();
List<Rentbean> list=dao.show();
Iterator<Rentbean> itr=list.iterator();
String type=(String)session.getAttribute("type");
String city=(String)session.getAttribute("city");
while(itr.hasNext())
{
	
	Rentbean t=itr.next();
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
	 byte [] raw=null;
	 raw=t.getPhoto();
	 String id1=String.valueOf(id);
	 session.setAttribute("id", id1);
		
%>


    <!-- properties -->
      <div class="col-lg-4 col-sm-6">
      <div class="properties">
        <div class="image-holder"><img src="images/properties/1.jpg" class="img-responsive" alt="properties">

          <div class="status sold">for sell</div>
        </div>
        <h4><%=type %></h4>
          <h4>Area: <%=area %></h4>
        <p class="price">Price: <%=price %></p>
    <%
     if(bhk!=null)
     {
    %>
      <h4>BHK: <%=bhk%></h4>
    <%
     }
    %>
        <a class="btn btn-primary" href="detail1r.jsp">View Details</a>
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



</body>

<!-- Mirrored from thebootstrapthemes.com/live/thebootstrapthemes-realestate/buysalerent.php by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Jul 2017 18:43:35 GMT -->
</html>



