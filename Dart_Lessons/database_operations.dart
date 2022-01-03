class DatabaseOperations{
    String _username= "hnt";
    String _password = "12345";

void isLogin(){
    if(_username == "hnt" && _password == "12345"){
        print("Giris Basarili!");
    } else{
        print("Giris Basarisiz!");
    }
    }
    
    /*String get username{
    return _username;
    }*/

    String get getUsername => _username;

    void set setUsername(String value){
        this._username = value;
    }

    /*void set username(String value){
        this._username = value;
}*/
}

