<%--
  Created by IntelliJ IDEA.
  User: Teomant
  Date: 27.04.2018
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body bgcolor="pink">
<h1>Calculator</h1>
<hr>
<form action="WebClient.jsp" method="POST">
    <p>Enter first value:
        <input type="text" name="num1" size="25"></p>
    <br>
    <p>Enter second value:
        <input type="text" name="num2" size="25"></p>
    <br>
    <b>Seclect your choice:</b><br>
    <input type="radio" name="group1" value ="add">Addition<br>
    <input type="radio" name="group1" value ="sub">Subtraction<br>
    <input type="radio" name="group1" value ="multi">Multiplication<br>
    <input type="radio" name="group1" value ="div">Division<br>
    <p>
        <input type="submit" value="Submit">
        <input type="reset" value="Reset"></p>
</form>
</body>
</html>