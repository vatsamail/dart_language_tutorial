/* 
1. Create file pubspec.yaml and add the following
name: my_project
version: 0.0.1
description: My project.
Save your project
2. Shift - F7 to run the current file on Sublime Text 3
3. Create a folder called - C:\my\ml\flutter\dartlang_try and dump all the files associated to this zipped folder.
*/
 
// Convert Dart to JS : dart2js --out=darttut.js darttut.dart
 
// Library that allows us to interact with an HTML Doc
import 'dart:html';
import 'dart:math';
 
// main is the function called when you execute your app
void main() {
  // How to define a constant
  // const double piValue = 3.141592653589793;
 
  // Says that when the button named add is clicked to call the
  // function addStuff
  // querySelector("#button").onClick.listen(getSum);
 
  // varTest();
 
  // mathTest();
 
  // condTest();
 
  // loopTest();
 
  // stringTest();
 
  // funcTest();
 
  // dataTest();
 
  // manipulateHTML();
 
  // oopTest();
 
  // overloadingTest();
 
  // exceptionTest();
 
 
}
 
// The mouse event info is sent, but not used yet
void getSum (MouseEvent event){
 
  // Get the value stored in element with the id num1, convert it from
  // a string and into an int and save it to a variable
  int num1 = int.parse((querySelector("#num1") as InputElement).value);
  int num2 = int.parse((querySelector("#num2") as InputElement).value);
 
  // Add 2 ints and convert them into a string
  var sum = (num1 + num2).toString();
 
  // Get the element with the id sum and assign it the string
  // String interpolation is used to add variable values
  querySelector("#sum").text = "${num1} + ${num2} = ${sum}";
 
}
 
// ---------- VARIABLES ----------
void varTest(){
// There 6 variable types in Dart : Integers, Floats, Booleans,
// Strings, Lists and Maps
// You declare a variable like this if you want to be able to switch
// data types (Every Variable is an Object)
var randInt = 10;
var myName = "Derek";
 
// You can also define a static type (Use " or ')
String randString = "Random String";
 
// A boolean holds the value true or false
bool canVote = true;
 
// Declare an integer (JavaScript numbers are all floats)
int maxInt = 9007199254740992; // Min Val = -9007199254740992
 
// Declare a double with 15 digit precision
double piVal = 3.141592653589793;
 
querySelector("#output").text = "Max Int : ${maxInt + 1}\nPI : ${piVal + 0.0000000000000001}";
 
// Declare a random list
List randList = [1,2,3,4];
 
// Declare a random Map made up from key value pairs
Map randMap = {1: "Tom Smith", 2: "Betty Bryant"};
}
 
// ---------- MATH ----------
void mathTest(){
// Used to generate random number
// random.nextInt(100) returns a random int from 0 to 100
// nextBool() and nextDouble() = 0.0 - 1.0
var random = new Random();
var number = 6.45;
 
querySelector("#output").text = "5.0 + 4.0 = ${5.0 + 4.0}\n5.0 - 4.0 = ${5.0 - 4.0}\n5.0 * 4.0 = ${5.0 * 4.0}\n5.0 / 4.0 = ${5.0 / 4.0}\n5.0 % 4.0 = ${5.0 % 4.0}\ne^3 = ${exp(3)}\nlog(1000) = ${log(1000)}\nmax(10,5) = ${max(10,5)}\nmin(10,5) = ${min(10,5)}\n10^5 = ${pow(10,5)}\nsqrt(81) = ${sqrt(81)}\nround(6.45) = ${number.round()}\nRandom Numbers : ${random.nextInt(100)}, ${random.nextInt(100)}, ${random.nextInt(100)}\n";
 
// Other math functions : acos, asin, atan, atan2, cos, sin, tan
// Shortcuts : +=, -=, *=, /=
}
 
// ---------- CONDITIONALS ----------
void condTest(){
// Relational Operators : ==, !=, >, <, >=, <=
// Logical Operators : &&, ||, !
 
  String output = "";
 
  var age = 13;
 
  if((age >= 5) && (age <= 6)){
    output = "Go to Kindergarten\n";
  } else if (age > 18){
    output = "Go to College\n";
  } else {
    output = "Go to Grade ${age - 5}\n";
  }
 
  output += "!(true) = ${!(true)}\n";
  output += "true || false = ${(true || false)}\n";
 
  // Use switch when you have a limited number of possibilities
  String superhero = "Superman";
 
  switch(superhero){
    case "Batman":
      output += "Batman is Bruce Wayne\n";
      break; // Leave switch statement
    case "Superman":
      output += "Superman is Clark Kent\n";
      break;
    // If nothing else matches
    default:
      output += "Hero isn't in database\n";
  }
 
 
  querySelector("#output").text = output;
 
}
 
// ---------- LOOPS ----------
void loopTest(){
  String output = "";
 
  int i = 0;
 
  while(i <= 10){
    output += "${i}, ";
 
    // Add 1 shortcut
    i++;
  }
  output += "\n";
 
  // do while is used when you have to go through the loop once
  do {
      output += "${i}, ";
      i--;
    }while(i > 0);
 
  output += "\n";
 
  // for is a self contained loop structure
  // Variables like j are not available outside of the for loop
  for(int j = 1; j <= 30; j++){
 
    // If j is a multiple of 4 skip the rest of the loop
    if((j % 4) == 0){
      continue;
    }
 
    // If j = 25 jump out of the loop completely
    if(j == 25){
      break;
    }
 
    // If j is even print it
    if((j % 2) == 0){
      output += "${j}, ";
    }
  }
  output += "\n";
 
  // Create a multiplication table with 2 fors
  for(int k = 0; k <= 10; k++){
    for(int l = 0; l <= 10; l++){
      output += "${k} * ${l} = ${k*l}\n";
    }
  }
 
  querySelector("#output").text = output;
}
 
// ---------- STRINGS ----------
// Strings are surrounded by " or '
void stringTest(){
  String output = "";
 
  // Concatenate strings
  String randString = "I " + "am a long " + "string";
  String randString2 = "Other random string";
 
  output += "0 Index : ${randString[0]}\n";
 
  // comapreTo returns a 0 if strings are equal
  output += "Strings equal ${randString.compareTo(randString2)}\n";
 
  // Check if string conatins word starting at index 0
  output += "Word long in string : ${randString.contains("long", 0)}\n";
 
  // Get the index of the match or -1
  output += "Index of long : ${randString.indexOf("long")}\n";
 
  // Replace all of 1 with another
  output += "Replace spaces : ${randString.replaceAll(" ", ", ")}\n";
 
  // Split string into a list
  List listWords = randString.split(" ");
 
  // Length of string
  output += "String Length : ${randString.length}\n";
 
  // Get substring at starting index to defined length
  output += "Index 0 - 4 : ${randString.substring(0,4)}\n";
 
  // To lower and uppercase
  output += "Uppercase : ${randString.toUpperCase()}\n";
  output += "Lowercase : ${randString.toLowerCase()}\n";
 
  // trim leading and trailing whitespace
  randString = randString.trim();
 
  // trim leading or trailing whitespace
  randString = randString.trimLeft();
  randString = randString.trimRight();
 
  // Check if string is empty
  output += "Is Empty : ${randString.isEmpty}\n";
 
  querySelector("#output").text = output;
}
 
// ---------- FUNCTIONS ----------
void funcTest(){
  String output = "";
 
  // You call a function by name followed by parameters
  output += "3 * 34 = ${getMult(3,34)}\n";
 
  // You can define single line functions
  times2(num) => num * 2;
 
  output += "56 * 2 = ${times2(56)}\n";
 
  output += addList(1, 10);
 
  // Passing functions as parameters
  times3(num) => num * 3;
 
  output += "67 * 2 = ${multiply(67, times2)}\n";
  output += "67 * 3 = ${multiply(67, times3)}\n";
 
  // Recursive Function
  output += "Factorial of 4 = ${factorial(4)}\n";
 
  querySelector("#output").text = output;
}
 
// You have to define the data types of parameters
int getMult(int num1, int num2){
  // Variable val is only available in this function (Local Var)
  int val = num1 * num2;
 
  // return a value to the statement that called this function
  return val;
}
 
// To make parameters optional surround with [ ] separated by commas
// You can, but don't have to add a default value
String addList(int start, [int quantity = 1]){
  String strList = "";
  for(int i = 1; i <= quantity; i++){
    strList += "${i}, ";
  }
  return strList + "\n";
}
 
// We can pass functions as parameters
int multiply(int num, func){
  return func(num);
}
 
// Recursive functions call themselves
int factorial(int num){
  if(num <= 1){
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}
// 1st: num = 4 * factorial(3) = 4 * 6 = 24
// 2nd: num = 3 * factorial(2) = 3 * 2 = 6
// 3rd: num = 2 * factorial(1) = 2 * 1 = 2
 
 
// ---------- LISTS & MAPS ----------
void dataTest(){
  String output = "";
 
  // Lists are used to store lists of items which each have an index
  List emptyList = [];
 
  // You can store multiple data types in a list
  List randList = ["Derek", 40, 175.5];
 
  // Cycle through list items
  for(int i = 0; i < randList.length; i++){
    output += randList[i].toString() + ", ";
  }
  output += "\n";
 
  // Add an item to the end
  randList.add("Pittsburgh");
 
  // Remove an item
  randList.remove(175.5);
 
  // Cycle through a list item with forEach
  randList.forEach((val) => output += "List Item : ${val}\n");
 
  // You can also use for in
  for(String val in randList){
    output += val.toString() + ", ";
  }
  output += "\n";
 
  // You can force a list to only hold one data type
  List<String> friends = ["Bob", "Tom"];
 
  // A Map stores key / valued pairs that are not ordered, can hold
  // any type, but must have unique keys
  Map emptyMap = {};
 
  Map stateCapitals = {"Alabama" : "Montgomery", "Alaska" : "Juneau"};
 
  Map customers = {100 : {"name" : "Paul Smith", "Balance" : 120.25}};
 
  output += "The capital of Alabama is ${stateCapitals["Alabama"]}\n";
 
  output += "Paul Smiths balance is ${customers[100]["Balance"]}\n";
 
  // Change a value in a map
  customers[100]["Balance"] = 0.00;
  output += "Paul Smiths balance is ${customers[100]["Balance"]}\n";
 
  // Remove map item
  stateCapitals.remove("Alaska");
 
  // Add item to a map
  stateCapitals.addAll({"Arizona" : "Phoenix"});
 
  // Use foreach to output a map
  stateCapitals.forEach((k, v) => output += "${k} : ${v}\n");
 
  querySelector("#output").text = output;
}
 
// ---------- MANIPULATING HTML ELEMENTS ----------
void manipulateHTML(){
  String output = "";
 
  // querySelector returns a Element object that can be used to
  // manipulate the element with the provided id
  Element title = querySelector("#sum");
 
  // You can change element text
  title.setInnerHtml("Take me to your leader");
 
  // You can style attributes directly
  title.style.color = "Blue";
 
  // You can define a class with many styles (Best Choice)
  title.classes.add("titleStyle");
 
  // You can get an elements text
  output += title.innerHtml + "\n";
 
  // Get the div named divBox
  Element divBox = querySelector("#divBox");
 
  // Add a div to the divBox
  DivElement sampDiv = new DivElement();
  sampDiv.text = "I'm a DIV";
  divBox.children.add(sampDiv);
 
  // Add an anchor element
  AnchorElement sampAnchor = new AnchorElement();
  sampAnchor.text = "Google";
 
  // Change an attribute
  sampAnchor.setAttribute("href", "http://google.com");
 
  // Add text to the end of a child
  sampAnchor.appendText("is here");
 
  // Get value of an attribute
  output += "href of link ${sampAnchor.getAttribute("href")}\n";
 
  divBox.children.add(sampAnchor);
 
  // Insert a break statement or any tag
  divBox.children.add(new Element.tag('br'));
 
  Element inputElement = new InputElement();
 
  // Change the id for an element
  inputElement.attributes['id'] = "inputElement";
  divBox.children.add(inputElement);
 
  // Function called when the input changes
  inputElementChange(MouseEvent event) => querySelector("#output").text = output + "Input Changed\n";
 
  // Add a change listener to the input element
  querySelector("#inputElement").onChange.listen(inputElementChange);
 
  // Other Elements : AreaElement, BRElement, ButtomElement,
  // ButtonInputElement, CheckboxInputElement, ContentElement,
  // DListElement, DetailsElement, DialogElement, EmailInputElement,
  // EmbedElement, FileUploadInputElement, FormElement, HeadingElement,
  // ImageElement, InputElement, LIElement, LabelElement, LinkElement,
  // MapElement, MediaElement, MenuElement, MenuItemElement,
  // OListElement, OptionElement, ParagraphElement, ParamElement,
  // PreElement, RadioButtonInputElement, ResetButtonInputElement,
  // SpanElement, SubmitButtonInputElement, TableElement,
  // TextAreaElement, TitleElement, UListElement, VideoElement
  // https://api.dartlang.org/apidocs/channels/be/dartdoc-viewer/dart:html
 
  querySelector("#output").text = output;
}
 
// ---------- OOP ----------
 
void oopTest(){
  String output = "";
 
  // Create an Animal object and assign values
  Animal bear = new Animal();
  bear.name = "Buddy";
  bear.sound = "Grrrr";
  bear._weight = 600;
 
  // Output bear values
  output += "${bear.name} said ${bear.sound} and weighs ${bear.weight}lbs\n";
  output += "${bear.run()}\n";
 
  // Call the named constructor
  Animal tiger = new Animal.three("Saber", "Rowr", 550);
  output += "${tiger.name} said ${tiger.sound} and weighs ${tiger.weight}lbs\n";
 
  // Objects can't access static methods or fields
  output += "Number of Animals : ${Animal.getNumberOfAnimals()}\n";
 
  // Dog which inherits from Animal
  Dog rover = new Dog.three("Rover", "Woof", 85);
 
  output += "${rover.name} said ${rover.sound} and weighs ${rover.weight}lbs\n";
 
  // Override method info
  output += rover.info() + "\n";
 
  // Demonstrate inherited abstract classes
  Rectangle rect = new Rectangle(5.0,10.0);
  Circle circle = new Circle(5.0);
 
  output += "Rectangle Area : ${rect.area}\nCircle Area : ${circle.area}\n";
 
  // You can instantiate using a super class and then cast to the subclass
  Shape rect2 = new Rectangle(5.0, 25.0);
  output += "Rect2 Area ${(rect2 as Rectangle).area}\n";
 
  Superhero superman = new Superhero();
  superman.flyingDesc = "flies faster then a speeding bullet";
  superman.bulletproofDesc = "bullets bounce off";
  output += "Superman ${superman.fly()}\n";
 
  // Demonstrate a mixin
  Car fordTruck = new Car("Ford Truck");
 
  output += "Ford Truck has the ID : ${fordTruck.id}\n";
 
  querySelector("#output").text = output;
}
 
// A class defines the attributes and capabilities of real world objects
class Animal {
  String name = "No Name";
  String sound = "No Sound";
 
  // A variable that starts with a _ is private and can't be accessed
  // by code outside of your program
  int _weight = 0;
 
  int get weight => _weight;
 
  // We can protect from bad values being set with a setter
  set weight(int w){
    if(w <= 0){
      _weight = 0;
    } else {
      _weight = w;
    }
  }
 
  // Constructors are used to initialize an object when created
 
  Animal(){numberOfAnimals++;}
 
  // Methods can't have the same name so if you have multiple
  // constructors you must use named constructors
  Animal.three(String name, String sound, int weight){
    this.name = name;
    this.sound = sound;
    this._weight = weight;
    numberOfAnimals++;
  }
 
  // You can create methods (functions) and can access object values
  // with this
  String run(){
    return "${this.name} runs";
  }
 
  // A static method is used when it doesn't make sense for an object
  // to be able to perform an action. Static fields share the same
  // value with all objects
  static int numberOfAnimals = 0;
 
  static String getNumberOfAnimals(){ return numberOfAnimals.toString(); }
 
  String info(){
    // You can also access variables directly without {}
    return "$name, $sound, $weight";
  }
 
}
 
// Inheritance
// When you inherit from a class you get all its methods and fields
class Dog extends Animal{
  String bite(){
    return "${this.name} bit you";
  }
 
  // You'll have to define your constructors
  Dog(){Animal.numberOfAnimals++;}
 
  Dog.three(String name, String sound, int weight){
    this.name = name;
    this.sound = sound;
    this._weight = weight;
    Animal.numberOfAnimals++;
  }
 
  // Nothing special is required to override a method
  String info(){
 
    // You can execute the superclass method with super
    return super .info() + " and bites";
  }
 
}
 
// Abstract Classes
// An abstract class can't be instantiated, but it can be inherited
abstract class Shape{
 
  // Every class that inherits must include a method named area
  double get area;
}
 
class Rectangle extends Shape{
  double height;
  double width;
 
  // Shortcut constructor
  Rectangle(this .height, this .width);
 
  double get area => height * width;
}
 
class Circle extends Shape{
  double radius;
 
  Circle(this .radius);
 
  double get area => PI * (radius * radius);
}
 
// Interfaces
// A class can inherit from multiple classes with implements
 
class Flyable {
  String fly(){ return "flies"; }
}
 
class Bulletproof {
  String hitByBullet(){ return "bullet bounces off"; }
}
 
class Superhero implements Flyable, Bulletproof{
  String flyingDesc = "flies";
  String bulletproofDesc = "bullet bounces off";
 
  String fly(){ return this.flyingDesc; }
  String hitByBullet(){ return this.bulletproofDesc; }
}
 
// Mixins
// Classes that inherit a mixin don't have to override methods, but must
// extend another class
class IdMaker {
  int get id => new DateTime.now().millisecondsSinceEpoch;
}
 
class Vehicle {
  int wheels = 4;
}
 
class Car extends Vehicle with IdMaker{
  String name = "No Name";
 
  Car(String name){ this.name = name;}
}
 
// ---------- OPERATOR OVERLOADING ----------
 
void overloadingTest(){
  String output = "";
 
  Point p1 = new Point(10,50);
  Point p2 = new Point(5,40);
 
  output += "Are Points Equal : ${p1 == p2}\n";
 
  Point p3 = p1 + p2;
 
  output += "P3 X : ${p3.x} Y : ${p3.y}\n";
 
  querySelector("#output").text = output;
}
 
class Point {
  int x, y;
  Point(this.x, this.y);
 
  operator == (Point p) => this.x == p.x && this.y == p.y;
  operator + (Point p) => new Point(this.x + p.x, this.y + p.y);
  operator - (Point p) => new Point(this.x - p.x, this.y - p.y);
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
 
  querySelector("#output").text = output;
}
 
class DivideByZeroError implements Exception {
  String cause = "Can't Divide by Zero";
  DivideByZeroError(this.cause);
}