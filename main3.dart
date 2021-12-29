import 'package:flutter/material.dart';

void main() {
  List<Ogretmen> ogretmenler = [
    Ogretmen("Ali"),
  IngilizceOgretmeni("Verbs", "John"),
  ];

  for (final o in ogretmenler){
    o.merhabaDe();
  }

  MyClass<int> m = MyClass<int>(4);
  m.yazdirMyClass();

  MyClassS<String> s = MyClassS("animal");
  s.yazdir();
  s.kullan();
}

class Ogretmen{
  String ad;

  Ogretmen(this.ad);

  void merhabaDe(){
    print("Merhaba ben ${this.ad} ogretmen");
  }
}

class IngilizceOgretmeni extends Ogretmen{
  String chapter;
  
  IngilizceOgretmeni(this.chapter, String name) : super(name) ;

 /* @override
  void merhabaDe() {
    // TODO: implement merhabaDe
    super.merhabaDe();
    print("I was at the chapter $chapter");
  }*/

}


class MyClass<T>{
  T val;

  MyClass(this.val);

  void yazdirMyClass(){
    print("T value = $val");
  }
}

class MyClassS<T extends String>{
  T val;

  MyClassS(this.val);

  void yazdir(){
    print("T value = $val");
  }

  void kullan(){
    print("Length: ${val.length}\nIs empty? = ${val.isEmpty}");
  }
}