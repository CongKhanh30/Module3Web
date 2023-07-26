package student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "testdangnhap", value = "/dangnhap")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        writer.println("<form action=\"http://localhost:8080/dangnhap\" method=\"post\">\n" +
                "    <input type=\"text\" name=\"user\" placeholder=\"Nhập tài khoản\">\n" +
                "    <input type=\"password\" name=\"password\" placeholder=\"Nhập mật khẩu\">\n" +
                "    <button>Đăng nhập</button>\n" +
                "</form>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        String user = request.getParameter("user");
        String password = request.getParameter("password");
        if (user.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")){
            writer.println("Chào ADMIN");
        } else if (user.equalsIgnoreCase("user") && password.equalsIgnoreCase("123")){
            writer.println("Chào user");
            writer.println(getStudent());
        }else {
            writer.println("người dùng không tồn tại");
        }
    }
    private String getStudent(){
        ArrayList<Student> students = new ArrayList<>();
        Student student1 = new Student(1, "Quang", 23, "Hải Dương");
        Student student2 = new Student(2, "Khánh", 22, "Nạng Sơn");
        Student student3 = new Student(3, "Hiếu", 24, "Vĩnh Phúc");

        students.add(student1);
        students.add(student2);
        students.add(student3);
        String str = "";
        for(Student student: students){
            str += "<h2>" + student.toString() + "</h2>";
        }
        return str;
    }
}