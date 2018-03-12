import 'dart:html';
// handling exceptions with try and custom exception class
void main() {
	exceptionTest();
}

// ---------- EXCEPTION HANDLING ----------
// We use exceptions to catch errors that would otherwise crash our programs
 
void exceptionTest(){
  divideNums(4, 5);
}
 
void divideNums(int num1, int num2){
  String output = "";
 
  try {
    if(num2 == 0){
      throw new DivideByZeroError("Error");
    } else {
      output += "$num1 / $num2 = ${num1/num2}\n";
    }
  } on DivideByZeroError {
      output += "Can't Divide by Zero\n";
    }
 
  querySelector("#output").text += output;
}
 
class DivideByZeroError implements Exception {
  String cause = "Can't Divide by Zero";
  DivideByZeroError(this.cause);
}