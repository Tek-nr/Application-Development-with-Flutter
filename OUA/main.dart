import 'package:flutter/material.dart';

typedef konuVeEylemFunc = String Function({String eylem, required String konu});

void main() {

  print("Main calisti");
  var konu = "Flutter";
  var eylem = " " + "ogreniyorum";
  String hepsi = yazdirHepsi(konu, eylem);
  print(hepsi);

  String hepsi1 = yazdirHepsi(konu);
  print(hepsi1);

  //var f = konuVeEylem;
  //String Function({String eylem = '', required String konu}) f = konuVeEylem;

  /*konuVeEylemFunc f = ({ String eylem = '', required String konu}) {
    String hepsi = konu + eylem;
    return hepsi;
  };*/

  konuVeEylemFunc f = ({required String konu, String eylem = ''}) => konu + " "+ eylem;

  String hepsi2= konuVeEylem(konu:konu, eylem:eylem);
  print(hepsi2);
  
  String hepsi3 = f(konu: konu);
  print(hepsi3);

  var x ="Flutter";



/*  for (int i = 0; i<10; i++){
    print("number $i");
  }
  var main_tekrar_calisti = "main tekrar" + " calisti";
  print(main_tekrar_calisti);
  
  print( findAr(main_tekrar_calisti));
  print("main bitmek uzere");
  //runApp(const MyApp());*/
}

String konuVeEylem({required String konu, String eylem = ''}) {
  String hepsi = konu + eylem;
  return hepsi;
}

String yazdirHepsi(String konu, [String eylem = '']) {
  print("konu ve eylem birleştirilecek");
  String hepsi = konu + eylem;
  return hepsi;
}



/*int findAr(String s) {
  var index = s.indexOf('ar');
  return index;
}*/

/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Build calisti");
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    print("counter calisti");
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("myhomepagestate calisti");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bro, you have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}*/
