/*
// object datatype exploration
void main()
{
Object x;
x=10;
x="vl";
print(x);
}
void main()
{
Object o;
o="lakshmi";
if (o is String)
{
print(o.length);
}}


// difference between const and final
void main()
{
var r=10;
const pi=3.14;
final time=DateTime.now();
print(time);
print("area is ${pi*r*r}");}
*/
/*
void main()
{
int n=10;
bool b=true;
double f=6.3;
print("$n,$b,$f");
}
*/

//taking input
/*
import 'dart:io';
void main()
{
stdout.write("enter");
String? n=stdin.readLineSync();
if(n!=null)
{
try{
int no=int.parse(n);
print(n);}
catch(e){
print("not a valid int");}}
else{print("no input");}
}
*/

//string manipulation
void main() {
  String name = "YourName";

  // Different string variations
  print(name);                  // plain
  print("Hello, $name!");       // with interpolation
  print(name.toUpperCase());    // uppercase
  print(name.toLowerCase());    // lowercase
  print("My name is: " + name); // concatenation
}


