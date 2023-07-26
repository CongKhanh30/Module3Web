package service;

import model.Student;
import service.iService.IStudentService;

import java.util.ArrayList;
import java.util.List;

public class StudentService implements IStudentService<Student> {
    private List<Student> students = new ArrayList<>();
    public StudentService(){
        this.students.add(new Student(1, 23, "Nguyen D Van Quang", "https://yt3.googleusercontent.com/ytc/AOPolaQgeDJBNpe-3bMTtkIHz4NQjCViJZZixCdaWEBf=s900-c-k-c0x00ffffff-no-rj"));
        this.students.add(new Student(2, 23, "Huynh Rau Den", "https://i.ex-cdn.com/mgn.vn/files/news/2022/04/01/one-piece-trai-ac-quy-cua-rau-den-cung-la-zoan-than-thoai-164530.jpg" ));
    }
    @Override
    public void add(Student student) {
        this.students.add(student);
    }

    @Override
    public int findById(int id) {
        for (int i = 0; i < this.students.size(); i++) {
            if(id == students.get(i).getId()){
                return i;
            }
        }
        return -1;
    }

    @Override
    public void delete(int id) {
        int index = this.findById(id);
        this.students.remove(index);
    }

    @Override
    public List<Student> findAll() {
        return this.students;
    }

    @Override
    public void edit(int id, Student student) {
        int index = this.findById(id);
        this.students.set(index, student);
    }
}
