import 'dart:html';
import 'dart:math';

// classes - important

void main() {
	oopTest();
}

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
