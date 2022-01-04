class Person{
    String? name;
    int? age;
    double? height;
    double? weight;

    Person(this.name, this.age, this.height){
        print("Person object was created!");
    }

    void classType(){
        print("Person Class");
    }
}

class Student extends Person{
    String? student_no;
    int? classroom;

    Student(String name, int age, double height) : super(name, age, height){
        print("Student object was created!");
    } 

    @override
    void classType(){
         super.classType();
        print("+ Student Class");
    }
}

void main(){

    Student s1 = new Student("Ali",21, 175);
    print(s1.name);
    s1.classType();

    Person p1 = new Person("Ahmet", 25, 182);
    print(p1.name);
    p1.classType();

    List<Person> students =[]; //Upcasting
    students.add(s1);

    print(calculateDateOfBirth(s1));
}

//Polymorphism
int calculateDateOfBirth(Person person){
    return 2021 - person.age!; //ünlem koyarak degiskenin null gelmeyeceğini belirttik.
}