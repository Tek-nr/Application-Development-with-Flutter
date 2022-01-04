abstract class Shape{
    double calculateArea();
    double calculatePerimeter();
}

class Square extends Shape{
    double? edge;
    Square(this.edge);

    @override 
    calculateArea(){
        return edge! * edge!;
    }

    @override
    calculatePerimeter(){
        return edge! * 4;
    }
}

class Circle extends Shape{
    //instance variable
    double? r;

    //class variable -> static sayesinde
    static const pi = 3.14; 

    Circle(this.r);

    calculateArea(){
        return pi* r!*r!;
    }

    calculatePerimeter(){
        return 2*pi*r!;
    }
}

void main(){
    Square sq = new Square(10);
    print("Square Area: ${sq.calculateArea()}");
    print("Square Perimeter: ${sq.calculatePerimeter()}");

    Circle cr = new Circle(7);
    print("Circle Area: ${cr.calculateArea()}");
    print("Circle Perimeter: ${cr.calculatePerimeter()}");
}