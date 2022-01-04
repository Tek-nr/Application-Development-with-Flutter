abstract class PrepareFood{
    void cook();
}

abstract class PrepareExam{
    void makeTest();
}

abstract class EatFood{
    void eat();
}

abstract class DoHomework{
    void doHomework();
}

class Student implements DoHomework, EatFood{  //extends ifadesi iki farklı class için kullanılamaz
    @override 
    void eat(){
        print("Eating...");
    }

    @override
    void doHomework(){
        print("Doing homework...");
    }
}

class Teacher implements PrepareExam, EatFood{

    @override 
    void eat(){
        print("Eating...");
    }

    @override
    void makeTest(){
        print("Preparing...");
    }
}

void main(){
    Teacher t = new Teacher();
    t.eat();
    
    Student s = new Student();
    s.doHomework();
}