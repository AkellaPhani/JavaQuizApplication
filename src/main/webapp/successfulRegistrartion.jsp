<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create an account</title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container" >
<c:if test="${not empty message}">
<h2  align="center"> User registered Successfully verification mail sent to email</h2>

              <h2 align="center"><p id="panel">${message}</p></h2>

          </c:if>
            <h2 align="center" style="margin-left:20px;" > <a href="${contextPath}/registration">Create User       </a>
                             <a href="${contextPath}/login">   User Login</a></h2>
</div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>

