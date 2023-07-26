<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
          integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="../css/index.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-12">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand" href="http://localhost:8080/students?action=findAll"><img
                        src="https://cdn.bitrix24.com/b15410047/bitrix24/13b/13b69fcb7eadbba8f78e938906b60699/logo_ftiyKDop.png"
                        alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link text-white" href="http://localhost:8080/students?action=add"><i
                                    class="fa-solid fa-user-plus"
                                    style="color: #f1f2f3;"></i></a>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    </form>
                </div>
            </nav>
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-12">
            <table class="table">
                <tr class="head-table">
                    <th scope="col">ID</th>
                    <th scope="col">Tên</th>
                    <th scope="col">Tuổi</th>
                    <th scope="col">Ảnh</th>
                    <th scope="col">Sửa</th>
                    <th scope="col">Xóa</th>
                </tr>
                <tbody>
                <c:forEach items="${students}" var="student">
                    <tr>
                        <td scope="row">${student.id}</td>
                        <td>${student.name}</td>
                        <td><img src="${student.image}" style="width: 50px; height: 50px"></td>
                        <td>${student.age}</td>
                        <td>
                            <a href="#" style="color: cornflowerblue">
                                <i class="fa-solid fa-pen-clip"></i>
                            </a>
                        </td>
                        <td>
                            <a style="color: red" data-toggle="modal" data-target="#exampleModal${student.id}"
                               href="">
                                <i class="fa-solid fa-trash"></i>
                            </a>
                            <div class="modal fade" id="exampleModal${student.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            Bạn chắc chắn xóa <span>${student.name}</span> không ?
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
<%--                                            <form action="http://localhost:8080/students?action=delete&id=${student.id}" method="post">--%>
<%--                                                <button type="submit" class="btn btn-primary" style="color: #ebedef">Xóa</button>--%>
<%--                                            </form>--%>
                                            <a class="btn btn-primary"  style="color: #ebedef" href="http://localhost:8080/students?action=delete&id=${student.id}">Xoa</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>



