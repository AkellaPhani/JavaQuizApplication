<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Create an account</title>

      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  </head>

  <body>

    <div class="container">

        <form:form method="POST" name="userForm" modelAttribute="userForm" id="userForm" onsubmit="return validateform();" class="form-signin" action ="/registration">
            <h2 class="form-signin-heading">Create your account</h2>
            <spring:bind path="userName">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="userName" id="userName" class="form-control" placeholder="UserName"
                                autofocus="true" required="required"></form:input>
                    <form:errors path="userName"></form:errors>
                </div>
            </spring:bind>

               <spring:bind path="email">
                                        <div class="form-group ${status.error ? 'has-error' : ''}">

                                            <form:input type="email" path="email" class="form-control"
                                                        placeholder="Enter your email" required="required"></form:input>
                                            <form:errors path="email"></form:errors>
                                        </div>
                                    </spring:bind>

            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control" placeholder="Password" required="required"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="passwordConfirm">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm" class="form-control"
                                placeholder="Confirm your password" required="required"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind>
            <button class="btn btn-lg btn-primary btn-block" type="submit" >Submit</button>
        </form:form>

    </div>
    <script>
   function validateform(){
   var name=document.userForm.userName.value;
   var password=document.userForm.password.value;
   var passwordConfirm=document.userForm.passwordConfirm.value;
console.log("Entered the validation");
   if (name==null || name==""){
     alert("Name can't be blank");
     return false;
   }else if(password.length<6){
     alert("Password must be at least 6 characters long.");
     return false;
     } else if (name.length < 6) {
     alert ("UserName should be at least 6 characters long.");
     return false;
   } else if (password != passwordConfirm) {
   alert("Passwords Do not match");
   return false;
   }
   }
   </script>

  </body>
</html>