import 'dart:html';
import 'dart:math';

// overloading operators.
void main() {
	overloadingTest();
}

// ---------- OPERATOR OVERLOADING ----------
 
void overloadingTest(){
  String output = "";
 
  Point p1 = new Point(10,50);
  Point p2 = new Point(5,40);
 
 //output += "Are Points Equal : ${p1 == p2}\n";
 
  Point p3 = p1 + p2;
 
  output += "P3 X : ${p3.x} Y : ${p3.y}\n";
 
  querySelector("#output").text += output;
}
 
class Point {
  int x, y;
  Point(this.x, this.y);
 
//  operator == (Point p) => (this.x == p.x && this.y == p.y);
//operator == (Point p) {
//	return ((this.x == p.x) && (this.y == p.y));
//}
  operator + (Point p) => new Point(this.x + p.x, this.y + p.y);
  operator - (Point p) => new Point(this.x - p.x, this.y - p.y);
}
 
