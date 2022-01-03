void main(){
    Student s = new Student();
    Student s2 = new Student.withValues("Hilal",15,123);
    Student s3 = new Student.withoutSchoolNumber("Ali",15);
    s.printValues();
    s2.printValues();
    s3.printValues();


    /*Student s2 = new Student();
    s2.name;*/
}

class Student{
    // instance variable
    String? name;
    int? age;
    int? school_number;

    Student(){
        //print("constructor calisti");
    }

    Student.withValues(String name,  int age,  int school_number){
        this.name = name;
        this.age = age;
        this.school_number = school_number;
        //print("const2 calisti");
    }        

    Student.withoutSchoolNumber(this.name, this.age);
    
    void printValues(){
            print("Name: ${name ?? "henüz girilmedi!" }\nAge: ${age ?? "henüz girilmedi!"}\nSchool Number: ${school_number ?? "henüz girilmedi!"}");
        }
}