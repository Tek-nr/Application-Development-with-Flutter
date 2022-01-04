//import 'package:flutter/material.dart';

/*class Ogrenci{
  String ad;
  String soyad;
  int yas;
  String cinsiyet;
  int not;
  bool mezunMu;
  static String okulAdi = "AliVeli Universitesi";

  Ogrenci(this.ad, this.soyad, this.yas, this.cinsiyet, this.not): mezunMu=false ;

  bool ortalamaninUstundeMi(double ortalama){
    return not>ortalama;
  }

  String get adiSoyadi => "$ad $soyad";
  set adiSoyadi(String value){
    int bosluk = value.indexOf(" ");
    ad = value.substring(0,bosluk);
    soyad = value.substring(bosluk+1);
  }

  static void setOkulAdi(String yeniOkulAdi){
    okulAdi = yeniOkulAdi;
  }

  @override
  String toString() {
    return "$ad $soyad $yas $cinsiyet $not $mezunMu";
  }
}

String? getAli() => "ali";*/


class Ogrenci{
  String ad;
  late int yas;
  Ogrenci(this.ad, this.yas);
  Ogrenci.OgrenciC2(this.ad, int y ): yas = y;
  Ogrenci.OgrenciC3(this.ad, int y){
    yas = y; //-> yas late olmasaydı kabul etmezdi
  }
  Ogrenci.onsekiz(String ad): this(ad,18);

  void merabaDe(){
    print("Merhaba ben $ad, $yas yasindayim.");
  }
}

void main() {
  print("calisiyorr");
  Ogrenci o1 = Ogrenci.OgrenciC2("Ali", 16);
  Ogrenci o2 = Ogrenci.onsekiz("Melahat");
  final Ogrenci o3 = Ogrenci("ali", 19);
  o3.yas=22;
  o1.merabaDe();
  o2.merabaDe();
  o3.merabaDe();
  /*String s;
  s="ali";
  print(s);
  print(s.length);

  String? sn;
  sn = getAli();
  print(sn);
  if(sn !=null){
    print(sn.length +5);
  }*/


  /*final ogr1 = Ogrenci("ali", "demir", 21, "-", 56);
  final ogr2 = Ogrenci("veli", "celik", 22, "-", 86);
  print("$ogr1 , $ogr2");
  print("${ogr1.not} - ${ogr2.not}");
  if(ogr2.ortalamaninUstundeMi(70)){
    print( "Tebrikler" );
  }
  print(ogr1.adiSoyadi);
  ogr2.adiSoyadi = "Ali Demir Celik";
  print(ogr2);
  print(Ogrenci.okulAdi);
  String? x;
  print(x?.length);*/

  /*final liste=[
    {"1","2"},
    {"3","4"},
    {"5","6"},
  ];
  print(liste);
  final ikinci = liste[1];
  ikinci.remove("4");
  print(ikinci);
  print(liste);

  var liste1= [1,2,3];
  var liste2= [4,5,6];

  print(liste1);
  print(liste2);
  liste2 = liste1;
  print("sonrasi: ");
  print(liste2);
  print(liste1);

  liste2[1]=10;
  print(liste1);
  print(liste2);*/

  /*final etiketler = {
    "arkiler":1,
    "okul":2,
    "kurs":55
  };

  print(etiketler);
  print(etiketler["is"]);
  print(etiketler["arkiler"]);
  etiketler["arkiler"]=36;
  print(etiketler["arkiler"]);
  print(etiketler.containsKey("okul"));*/

  /*final mesajlar = ["a","b","c"];

  print("Hosgeldiniz");
  var mesajSayisi = 10;
  var mi =0;

  print(mesajlar);
  mesajlar.add("d");
  print(mesajlar);
  mesajlar.addAll(["e","f"]);
  print(mesajlar);

  if(mesajlar.contains("a")){
    print("Mesaj Var!");
  } else{
    print("Mesaj Yok!");
  }

  mesajlar.remove("c");
  print(mesajlar);

  mesajlar.removeAt(2);
  print(mesajlar);

  print(mesajlar.first);
  print(mesajlar.last);

  if(mesajlar.isEmpty){
    print("mesaj yok!");
  } else{
    print("mesaj var!");
  }*/

/*  while(mi<mesajSayisi){
    print("$mi. mesaj");
    mi++;
  }*/

  /*for(int i=0;i<mesajlar.length;i++){
    print(mesajlar[i]);
  }

  for (var i in mesajlar){
    print("Mesaj: ");
    if(i == "b")
      continue;
    print(i);
  }

  print("${mesajlar.length*2} adet okunmamış mesajınız var!");*/

  /*if(mesajSayisi > 0){
    print("Yeni mesajiniz var!");
  } else if(mesajSayisi == 1){
    print("Bir yeni mesajiniz var!");
  } else{
    print("Yeni mesajiniz yok!");
  }

  switch(mesajSayisi){
    case 1:
      print("Bir yeni mesaj");
      break;
    case 2:
      print("İki yeni mesaj!");
      break;
    case 3:
      print("Uc yeni mesaj!");
      break;
    default:
      print("Cok yeni mesaj!");
      break;
  }

  print(mesajSayisi == 0 ? "Yeni mesaj yok..." : "Yeni mesaj var...");

  print("$mesajSayisi adet okunmamis mesajiniz var!");*/
/*  final a = "a";
  final deg = "degisken "+a;
  var d = "degisken";

  var x;
  x=1;
  x="bir";
  print(x);

  print(deg);
  print("main calisti");
  altProgram();*/
}



/*void altProgram(){
  print("alt program calisti");
}*/
