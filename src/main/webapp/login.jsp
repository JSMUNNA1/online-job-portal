<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="All_components/css.jsp" %>

</head>
<body>
   <%@include file="All_components/Navbar.jsp" %>
   
    <div class="container-fluid">
        <div class="row p-5">
          <div class="col-md-4 offset-md-4">
            <div class="card">
              <div class="card-body">
                  <div class="text-center">
                  
                  <i class="fa-fa-user-plus fa-2x" aria-hidden="true"></i>
                  
                  <h5>Login Page</h5>
                  
                   </div>
                     <div class="form-group">
                    <form action="login" method="post">
                    <label>Enter Email</label><input type="text"
                      required="required" class="form-control"
                      id="exampleInputEmail" aria-describedy="emailHelp" name="em">
                     </div>
                     <div class="form-group">
                     <label for="exampleInputPassword1">Enter Password</label>
                     <input required="required" type="password" class="form-control"
                      id="exampleInputPassword1" name="ps">
                     </div>
                     <button type="submit" class="btn btn-primary badge-pill btn-block">
                      Login</button>
                    </form>
                  </div>
             </div>
          </div>
        </div>
    
    </div>
<%@include file="All_components\footer.jsp" %>
</body>
</html>