import "dart:io";

void main()
{
  num cYear=2025;
  num lYear=0;

  print("Enter your birth Year:");
  num bYear = num.parse(stdin.readLineSync()!);

  while(bYear != cYear && bYear<=cYear)
  {
    if((bYear % 4 == 0 && bYear % 100 != 0) || (bYear % 400 == 0))
    {
      lYear++;
      bYear++;
    }
    else{bYear++;}
  }

  print("The total number of Leap Years from your birth till now is : $lYear");

}