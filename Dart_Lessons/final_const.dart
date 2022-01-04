void main(){
    String name = "Ali";
    name = "Veli";

    final numbers = [1,2,3];
    final numbers2 = [1,2,3];

    numbers == numbers2 ? print("(Final) Equals!") : print("(Final) Not Equals!"); // içerikler aynı olsa dahi final anahtar kelimesi her nesne için bellekte yeni bir adres tutar. 


    const num_list = [4,5,6];
    const num_list2 = [4,5,6]; 

    num_list == num_list2 ? print("(Const) Equals!") : print("(Const) Not Equals!"); // içerikler aynıysa const anahtar kelimesi içeriğin bulunduğu ilk adresi gösterir, yeni adres tutmaz.

    const Student s1 = Student("Ali",20); //const iki tarafta da kullanılabilir.
    var s2 = const Student("Ali",20);

    s1 == s2 ? print("Eşit!") : print("Eşit değil!");

}

class Student{
    final int? number;
    final String? name;

    const Student(this.name, this.number);
}