<%@page import="jdk.internal.org.objectweb.asm.tree.analysis.Value"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String type=request.getParameter("value");
if(type.equals("Apartment")||type.equals("House"))
{
%>
 <div class="row">
               <div class="col-lg-20">
                  <label for="price">Price</label>
             <input type="text" class="form-control" name="price">
                </div>
               </div>
                <div class="row">
               <div class="col-lg-20">
                  <label for="area">Area in Square Feet</label>
             <input type="text" class="form-control" name="area">
                </div>
               </div>
                <div class="row">
               <div class="col-lg-20">
               <label for="bhk">BHK</label>
              <select class="form-control" name="bhk">
               <option>BHK</option>
               <option>1</option>
               <option>2</option>
               <option>3</option>
               <option>4</option>
               <option>5 and more</option>
               
               </select>
               </div>
               </div>
                 <div class="row">
               <div class="col-lg-20">
               <label for="furnished">Furnished</label>
              <select class="form-control" name="furnished">
               <option>Select</option>
               <option>Yes</option>
               <option>N0</option>
                </select>
               </div>
               </div>
              <div class="row">
               <div class="col-lg-20">
                  <label for="description">Description</label>
              <textarea class="form-control" rows="5" name="description"></textarea>
                </div>
               </div>
               <br>
               <br>
                  <div class="row">
               <div class="col-lg-20">
               <input type="file" name="photo"/>
               
                 <input type="file" name="photo1"/>
                   <input type="file" name="photo2"/>
                     <input type="file" name="photo3"/>
               </div>
               </div>
                  <div class="row">
               <div class="col-lg-20">
               <label for="city">City</label>
              <select class="form-control" name="city">
               <option>City</option>
               <option>Jaipur</option>
               <option>Kota</option>
               </select>
               </div>
               </div>
               
               <button class="btn btn-primary" name="add">Post Add</button>
<%
}
%>
<%
if(type.equals("Land and Plots")||type.equals("Shop/Office"))
{
%>
 <div class="row">
               <div class="col-lg-20">
                  <label for="price">Price</label>
             <input type="text" class="form-control" name="price">
                </div>
               </div>
                <div class="row">
               <div class="col-lg-20">
                  <label for="area">Area in Square Feet</label>
             <input type="text" class="form-control" name="area">
                </div>
               </div>
                
              <div class="row">
               <div class="col-lg-20">
                  <label for="description">Description</label>
              <textarea class="form-control" rows="5" name="description"></textarea>
                </div>
               </div>
               <br>
               <br>
                  <div class="row">
               <div class="col-lg-20">
               <input type="file" name="photo"/>
               
                 <input type="file" name="photo1"/>
                   <input type="file" name="photo2"/>
                     <input type="file" name="photo3"/>
               </div>
               </div>
                  <div class="row">
               <div class="col-lg-20">
               <label for="city">City</label>
              <select class="form-control" name="city">
               <option>City</option>
               <option>Jaipur</option>
               <option>Kota</option>
               </select>
               </div>
               </div>
               
               <button class="btn btn-primary" name="add">Post Add</button>
<%
}
%>
<%

%>

</body>
</html>