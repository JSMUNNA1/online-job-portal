<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@page import="com.entity.*" %>
<%@page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="All_components/css.jsp" %>
<title>view job</title>
</head>
<body style="background-color: #f0f1f2;">
<c:if test="${userobj.role ne 'admin'}">
 <c:redirect url="login.jsp"></c:redirect>
</c:if>

<%@include file="All_components/Navbar.jsp" %>


   <div class="container">
     <div class="row">
       <div class="col-md-12">
         
         <h5 class="test-center text-primary">All Jobs</h5>
         
       <!-- jstl code  -->
                     <c:if test="${not empty succMsg }">
                       <div class="alert alert-success" role="alert">${succMsg}</div>
                       <c:remove var="succMsg" />
                     </c:if>  
         
         
         
          <% JobDAO dao=new JobDAO( DBConnect.getConnection());
        List<Jobs>list=dao.getAllJobs();
        for(Jobs j: list)
        {%>
        	<div class="card mt-2">
           <div class="card-body">
             <div class="text-center text-primary">
                <i class="far fa-clipboard fa-2x"></i>
             </div>
             
     
             
             
               <h6><%=j.getTitle() %></h6>
               <p><%=j.getDescription() %></p>
               <br>
               <div class="form-row">
                 <div class="form-group col-md-3">
                   <input type="text" class="form-control form-control-sm"
                   value="Location: <%=j.getLocation() %>" readonly="readonly" >
                 
                 </div>
                 
                 <div class="form-group col-md-3">
                   <input type="text" class="form-control form-control-sm"
                     value="category:<%=j.getCategory() %>" readonly="readonly">
                   
                 
                 </div>
                 
                 <div class="form-group col-md-3">
                 <input type="text" class="form-control form-control-sm"
                   value="Status:<%=j.getStatus() %>" readonly="readonly" >
                 </div>
               </div>
               <h6>Publish Date:2023-5-20</h6>
               <div class="text-center ">
                <a href="editjob.jsp?id=<%=j.getId() %>" class="btn btn-sm bg-success text-white">Edit</a>
                <a href="delete?id=<%=j.getId() %>" class="btn btn-sm bg-danger text-white">Delete</a>
               </div>
               
           </div>
         </div>
         
         
        	
        <%}
     %>    
        
         
         
       </div>
     </div>
   </div>


<%@include file="All_components\footer.jsp" %>
</body>
</html>