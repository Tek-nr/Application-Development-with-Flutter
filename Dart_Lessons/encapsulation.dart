import 'database_operations.dart';

void main(){
    var user1 = DatabaseOperations();
    user1.isLogin();
    print(user1.getUsername);
    user1.setUsername= "hilal";
    print(user1.getUsername);

}