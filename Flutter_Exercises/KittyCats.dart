import 'package:flutter/material.dart';

void main() {
  runApp(
    MyKittenApp(),
  );
}

class MyKittenApp extends StatelessWidget {
  //stateless widget kullanıcıyla etkileşime girmez, (statik)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Cute Kitty Cats",
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        //backgroundColor: Colors.green[700],
        appBar: AppBar(
          title: const Text("Kitty Cats"),
          backgroundColor: Colors.pink[200],
          foregroundColor: Colors.white,
          shadowColor: Colors.brown,
        ),
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 300,
                height: 300,
                //color: Colors.white,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.yellow[700],
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/d9/6d/b5/d96db53dfaa9c3b81a78e3b43bdd5539.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadiusDirectional.circular(40)
                ),
                padding: EdgeInsets.all(20), //kendi içerisinde bosluk olusturur
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20), //komsu elemanlarla arasında bosluk olusturur
                alignment: Alignment.bottomCenter,
                /*child: Transform(
                  //child: const Text("BRATZZZ"),
                  transform: Matrix4.rotationZ(-0.5),
                  alignment: FractionalOffset.center,
                ),*/
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                height: 50,
                /*padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),*/
                alignment: Alignment.center,
                color: Colors.pink[200],
                child: Text("Hi Beauty :)"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
