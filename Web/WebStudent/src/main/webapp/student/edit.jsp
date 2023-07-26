<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit Student</title>
</head>
<body>
<%--<form action="http://localhost:8080/student?action=edit&id=${student.id}" method="post">--%>
<form action="http://localhost:8080/students?action=edit" method="post">
    <label>
        <input type="number" name="id" placeholder="Id" value="${student.id}" readonly>
    </label>
    <label>
        <input type="text" name="name" placeholder="Name" value="${student.name}">
    </label>
    <label>
        <input type="number" name="age" placeholder="Age" value="${student.age}">
    </label>
    <label>
        <input type="text" name="image" placeholder="Image" value="${student.image}">
    </label>
    <button>EDIT</button>
</form>
</body>
</html>