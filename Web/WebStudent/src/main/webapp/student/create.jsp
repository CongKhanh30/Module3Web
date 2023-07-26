<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create</title>
</head>
<body>
<form action="http://localhost:8080/students?action=create" method="post">
    <label>
        <input type="number" name="id" placeholder="Id">
    </label>
    <label>
        <input type="text" name="name" placeholder="Name">
    </label>
    <label>
        <input type="number" name="age" placeholder="Age">
    </label>
    <label>
        <input type="text" name="image" placeholder="Image">
    </label>
    <button>ADD</button>
</form>
</body>
</html>
