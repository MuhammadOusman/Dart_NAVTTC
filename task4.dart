import "dart:io";

void main()
{
  print("Enter a number to find its factorial:");
  num i= num.parse(stdin.readLineSync()!);
  num fac=1;
  for (i;i>=1; i--)
  {
    fac=fac*i;
  }
  print("The factorial of the number is $fac");
}