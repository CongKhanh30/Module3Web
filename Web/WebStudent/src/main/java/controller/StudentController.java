package controller;

import model.Student;
import service.StudentService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentController", value = "/students")
public class StudentController extends HttpServlet {
    private StudentService studentService = new StudentService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action){
            case "findAll":
                showAll(request, response);
                break;
            case "create":
                showFormAdd(request, response);
                break;
            case "delete":
                delete(request, response);
                break;
            case "edit":
                showEdit(request, response);
                break;
            case "search":
                showSearch(request, response);
                break;
        }

    }

    public void showAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Student> students = studentService.findAll();
        request.setAttribute("students", students);
        RequestDispatcher dispatcher = request.getRequestDispatcher("student/home.jsp");
        dispatcher.forward(request, response);
    }

    public void showFormAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("student/create.jsp");
        dispatcher.forward(request, response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        studentService.delete(id);
        response.sendRedirect("/students?action=findAll");
    }

    private void showEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String image = request.getParameter("image");
        Student student = new Student(id, age, name, image);
        request.setAttribute("student", student);
        RequestDispatcher dispatcher = request.getRequestDispatcher("student/edit.jsp");
        dispatcher.forward(request, response);
    }

    private void showSearch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("student/search.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "create":
                createStudent(request, response);
                break;
            case "edit":
                editStudent(request, response);
                break;
            case "search":
                searchStudent(request, response);
                break;
        }
    }

    private void createStudent(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String image = request.getParameter("image");
        Student student = new Student(id, age, name, image);
        studentService.add(student);
        response.sendRedirect("/students?action=findAll");
    }

    private void editStudent(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String image = request.getParameter("image");
        Student student = new Student(id, age, name, image);
        studentService.edit(id, student);
        response.sendRedirect("/students?action=findAll");
    }

    private void searchStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        List<Student> list = studentService.findByName(name);
        request.setAttribute("list", list);
        RequestDispatcher dispatcher = request.getRequestDispatcher("student/search.jsp");
        dispatcher.forward(request, response);
    }
}