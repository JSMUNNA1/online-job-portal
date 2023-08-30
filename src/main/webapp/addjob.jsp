<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="All_components/css.jsp"%>
<title>Add job</title>
</head>
<body style='background-color: #f0f1f2;'>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<c:if test="${userobj.role ne 'admin'}">
 <c:redirect url="login.jsp"></c:redirect>
</c:if>
	<%@include file="All_components/Navbar.jsp"%>

	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						
						<i class="fas fa-user-friends fa-3x"></i>
                    <!-- jstl code  -->
                     <c:if test="${not empty succMsg }">
                       <div class="alert alert-success" role="alert">${succMsg}</div>
                       <c:remove var="succMsg" />
                     </c:if>
                      
						<h5>Add Jobs</h5>

					</div>
					<form action="addjob" method="post">
						<div class="form-group">
							<label>Enter Title</label><input type="text" name="title"
								required="required" class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label><select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected="selected">Choss...</option>
									<option value="Odisha">Odisha</option> 
									<option value="Jharkhand">Jharkhand</option> 
									<option value="Gujuraj">Gujurat</option> 
									<option value="Bhubaneswar">Bhubaneswar</option> 
									<option value="Delhi">Delhi</option> 
									<option value="Banglore">Banglore</option> 
									<option value="Chennai">Chennai</option> 
									<option value="Hydrabad">Hydrabad</option> 
									
									
									</select>
							</div>
							
							<div class="form-group col-md-4">
								<label>Category</label><select name="category"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected="selected">Choss...</option>
									<option value="IT">IT</option> 
									<option value="Devloper">Devloper</option> 
									<option value="Banking">Banking</option> 
									<option value="Engineer">Engineer</option> 
									<option value="Teacher">Teacher</option> 
									
									
									
									</select>
							</div>
							   <div class="form-group col-md-4">
							   <label>Status</label><select class="form-control"
							    name="status">
							     <option class="Active" value="Active">Active</option>
							     <option class="Inactive" value="Inactive">Inactive</option>
							     </select>
							   </div>
						</div>
						<div class="form-group">
						<label>Enter Description</label>
						<textarea required="required" rows="6" cols=""
						name="desc" class="form-control"></textarea>
						</div>
						<div>
						<button class="btn btn-success">Publish job</button>
						</div>
					</form>
				</div>
			</div>
		</div>

	</div>




	<%@include file="All_components\footer.jsp"%>
</body>
</html>