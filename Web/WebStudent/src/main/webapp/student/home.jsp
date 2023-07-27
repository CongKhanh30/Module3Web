<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
    <link rel="stylesheet" href="../css/student.css" type="text/css">
</head>
<body>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Age</th>
        <th>Image</th>
        <th colspan="2">Action</th>
    </tr>
    <c:forEach items="${students}" var="student">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.age}</td>
            <td><img src="${student.image}" alt=""></td>
            <td>
                <a href="http://localhost:8080/students?action=edit&id=${student.id}&name=${student.name}&age=${student.age}&image=${student.image}">Edit</a>
            </td>
            <td><a href="http://localhost:8080/students?action=delete&id=${student.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="http://localhost:8080/students?action=create">Add Student</a>
<br>
<a href="http://localhost:8080/students?action=search">Search Student</a>
<a href="http://localhost:8080/user?action=logout">Log out</a>
</body>
</html>