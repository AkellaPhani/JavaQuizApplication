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
  <div class="logout" align = "right">
     <h2> <a  href="${contextPath}/logout">LogOut</a></h2>
     </div>
  <div class="container">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>


        <h2>Welcome To The Quiz  ${pageContext.request.userPrincipal.name}</h2>
       </form>
    </c:if>

    <div>

<h2>Rules for Quiz</h2>

<ol type="disc">
  <li>All the questions should be answered</li>
  <li>Results will be displayed after submitting </li>
  <li>Please Logout after completion of the quiz</li>
</ol>
    </div>

  </div>
  <form  method="GET" action="/takeQuiz" align="center">
                <p align="center"> <button class="btn btn-primary btn-lg" type="submit"  >Take Quiz</button></p>
                 </form>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>