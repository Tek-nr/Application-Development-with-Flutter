import 'dart:io';

void main(){
    print("Uygulama açıldı");
    print("Butona basildi");
    /*Future<String> data = fetchData();
    print(data); //işlem bitmeden yazdırdığı için değerler görünmez "Instance of 'Future<String>'" yazar.*/

    /*String data = await fetchData(); // await tüm işlemin bitmesini bekler. Kullanılabilmesi için fonksiyonun asenkron olması gerekir. 
    //main fonksiyona async ifadesi eklendi
    print(data);*/
    showData();
    print("Diğer işlemlere devam edildi");

    /*fetchData().then((value) => print(value)).catchError((onError){//then fonsksiyonu işlem bittikten sonra yapmak istediğimiz şeyi yaptırmak için kullanilir.
        print(onError); // catchError parametresi herhangi bir hata durumunda hatayı yazdırır.
    }).whenComplete(() => print("Veri çekme işlemi sonlandı")) ; //whenComplete sonuç ne olursa olsun bana bir şey döndür.*/
    
}

void showData() async{
    String data = await fetchData();
    print(data);
}

/*Feature anahtar kelimesi geleceği temsl ettiği ve gelecekte başımıza ne geleceğini bilemeyeceğimiz için 
fonksiyonumuzu her ihtimale karşın hazır tutmalıyız*/
Future<String> fetchData(){ // String dönebilir de dönmeyebilir de 
    print("FetchData fonksiyonuna girildi");
    print("Veri çekilmeye başlandı");
    //sleep(Duration(seconds: 5)); 
    return Future.delayed(Duration(seconds: 5), (){
       return "Veri çekildi";
    });
    
}