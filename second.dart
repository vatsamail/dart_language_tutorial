// some comments - https://www.youtube.com/watch?v=OLjyCy-7U2U
import 'dart:html';
import 'dart:math';

void main() {
	// const double piValue = 3.142;
	// adding click list
	querySelector("#button").onClick.listen(execSomeFunc);
}

void execSomeFunc(MouseEvent event) {
	int num1 = int.parse((querySelector("#num1") as InputElement).value);
	int num2 = int.parse((querySelector("#num2") as InputElement).value);

	var sum = (num1 + num2).toString();
	// var is a generic variable
	// if you want to put something in the html, it should be a string

	querySelector("#sum").text = "$num1 + $num2 = $sum";
}