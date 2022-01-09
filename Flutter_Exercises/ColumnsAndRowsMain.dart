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
        //backgroundColor: Colors.pink[50],
        backgroundColor: Colors.green[700],

        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                color: Colors.white,
                child: Text("Container I"),
              ),
              Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100,
                      color: Colors.yellow,
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                color: Colors.blue,
                child: Text("Container II"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
