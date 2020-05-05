<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Quiz</title>

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <style>
table, td {
  border: 1px solid black;
  align:center;
}
input[type=radio],
    input.radio {
      float: left;
      clear: none;
      margin: 0px 0 0 2px;
    }
    </style>

</head>
<body>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<div >
<h2 align = "center">Quiz</h2>
<form methos="POST" name="answerForm" modelAttribute="answerForm"  onsubmit="return validateform();" action="/answerSubmit">
<ol type="1">
<c:forEach var="question" items="${questions}">
<li>${question.content}
<input type="hidden" name="questionId" value="${question.id}">

<ol style="list-style: none;">
<c:forEach var="answer" items="${question.answers}">
<li>
<input type="radio" name="question_${question.id}" value="${answer.id}">
    ${answer.content}
</li>
</c:forEach>
</ol>

</li>
</c:forEach>
</ol>
<button class="btn btn-primary btn-lg" align="center" type="submit">Submit Quiz</button>
</div>
</form>

<script>
 function validateform(){

       var inputElems = document.getElementsByTagName("input"),
        count = 0;

        for (var i=0; i<inputElems.length; i++) {
           if (inputElems[i].type == "radio" && inputElems[i].checked == true){
              count++;

           }
        }
        if(count<5) {
        alert("Answer all the questions to submit ")
        return false;
     }
     }
</script>


</body>


</html>

