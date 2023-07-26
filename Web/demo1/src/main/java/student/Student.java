package student;

public class Student {
    private int idStudent;
    private String name;
    private int age;
    private String address;

    public Student(int idStudent, String name, int age, String address) {
        this.idStudent = idStudent;
        this.name = name;
        this.age = age;
        this.address = address;
    }

    @Override
    public String toString() {
        return  "idStudent: " + idStudent +
                ", name: " + name +
                ", age: " + age +
                ", address: " + address;
    }

    public int getIdStudent() {
        return idStudent;
    }

    public void setIdStudent(int idStudent) {
        this.idStudent = idStudent;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}