<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="All_components/css.jsp" %>
<title>Admin Page</title>
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
<body >
<c:if test="${userobj.role ne 'admin'}">
 <c:redirect url="login.jsp"></c:redirect>
</c:if>



<%@include file="All_components/Navbar.jsp" %>

<div class="container-fluid back-img " >
      <div class="text-center">
       <h1 class="text-white p-4">Welcome Admin</h1>
 
      
      </div> 
 </div>


<%@include file="All_components\footer.jsp" %>
</body>
</html>