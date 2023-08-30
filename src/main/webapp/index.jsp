<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<%@include file="All_components/css.jsp" %>
 <style type="text/css">
 .back-img{
   background: url("img/backimg.webp");
   
   width: 100%;
   height: 80vh;
   background-repeat: no-repeat;
   background-size: cover;
 }
 
 </style>
</head>
<body>

 <%@include file="All_components/Navbar.jsp" %>
 <%Connection con=DBConnect.getConnection();
 out.println(con);
 
 %>
 
 <div class="container-fluid back-img " ">
      <div class="text-center">
       <h1 class="text-white p-4">
       <i class="fa fa-book" aria-hidden="true"></i>Online job Portal
       </h1>
      
      </div> 
 </div>
 
 <%@include file="All_components\footer.jsp" %>
</body>
</html>