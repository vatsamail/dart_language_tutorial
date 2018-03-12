import 'dart:html';
import 'dart:math';

// understanding lists and maps
void main() {
	dataTest();
}

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

  for (String key in stateCapitals.keys) {
  	output += " other style: ${key} => ${stateCapitals[key]}\n";
  }
 
  querySelector("#output").text = output;
}
