import "dart:io";

void main(){
  num num1,num2;
  String op;

  print("Enter first number:");
  num1 =num.parse(stdin.readLineSync()!);
  print("Enter second number:");
  num2 =num.parse(stdin.readLineSync()!);

  print("Enter operator (+,-,*,/):");
  op= stdin.readLineSync()!;

  switch(op){
    case "+":
      print("After addition: ${num1+num2}");
      break;
    case "-":
      print("After subtraction: ${num1-num2}");
      break;
    case "*":
      print("After multiplication: ${num1*num2}");
      break;
    case "/":
      print("After division: ${num1/num2}");
      break;
    default:
      print("Invalid operator");

  }


}