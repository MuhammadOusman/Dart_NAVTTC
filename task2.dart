import "dart:io";

String? name,email,pass,emailLogin,passLogin ;
bool loginStatus=false;

class Signup{
  void UserSignup(){
    print("======SINGUP=======");
    print("Enter your name:");
    name = stdin.readLineSync();
    print("Enter your email:");
    email= stdin.readLineSync();
    print("Enter your pass:");
    pass= stdin.readLineSync();
  
    print("/nAccount created successfully/n");
    print("Name: $name");
    loginStatus=true;
    print("--------------------------");
  }
}

class Login
{
  void UserLogin(){
    print("======LOGIN=======");
    print("Enter your email:");
    emailLogin= stdin.readLineSync();
    print("Enter your pass:");
    passLogin=stdin.readLineSync();

    emailLogin==email && passLogin==pass ? {print("Login Successfull"),loginStatus=true} : print("Login Failed");
    print("--------------------------");
  }
}

class Report{
  num math=0,eng=0,urdu=0,obt=0,per=0;
  void UserReport(){
  print("=====${name}'s Report Card=====");
  print("Enter marks of Math:");
  math=num.parse(stdin.readLineSync()!);
  print("Enter marks of English:");
  eng=num.parse(stdin.readLineSync()!);
  print("Enter marks of Urdu:");
  urdu=num.parse(stdin.readLineSync()!);

  obt=math + eng+ urdu;
  per=(obt/300)*100;

  print("Obtained Marks: $obt");
  print("Percentage: ${per.toStringAsFixed(2)}%");
  print("--------------------------");
 }
}
void main() 
{
  Signup s= new Signup();
  Login l= new Login();
  Report r= new Report();

  
    print("=====WELCOME=====");
    print("First time here? (y/n)");
    String? choice=stdin.readLineSync();

    if(choice=="y"){s.UserSignup();}
    else if(choice=="n"){l.UserLogin();}
    else{print("IU students not allowed here");}

    if(loginStatus==true){
      r.UserReport();
    }

    print("Thank you for using our service!");
}