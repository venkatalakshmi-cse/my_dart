/*
// trying input and their sum
import 'dart:io';
void main()
{
stdout.write("enter number");
int? n1=int.tryParse(stdin.readLineSync() ?? "")?? 0;
stdout.write("enter number");
int? n2=int.tryParse(stdin.readLineSync() ?? "") ?? 0;
print("sum:${n1+n2}");
}

//number for vowels using switch
import 'dart:io';
void main()
{
stdout.write("enter word");
String? s=stdin.readLineSync();
int i=0;
if(s.length==0 )
{ print(0);
return;}
int count=0;
while(i<s.length)
{
String c=s[i].toLowerCase();
switch(c){
case 'a':
case 'e':
case 'i':
case 'o':
case 'u': count+=1;
break;}
i++; 
}
print("no of vowels $count");
}*/


//number of vowels in a word usimg for loop
import 'dart:io';

void main() {
  stdout.write("Enter word: ");
  String? s = stdin.readLineSync();

  // Check for null or empty input
  if (s == null || s.isEmpty) {
    print(0);
    return;
  }

  int count = 0;

  for (int i = 0; i < s.length; i++) {
    String c = s[i].toLowerCase();
    if ("aeiou".contains(c)) {
      count++;
    }
  }

  print("Number of vowels: $count");
}

//multiplication table of a number
import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int? n = int.tryParse(stdin.readLineSync() ?? "");

  if (n == null) {
    print("Invalid input, please enter a valid number.");
    return;
  }

  print("Multiplication table for $n:");
  for (int i = 1; i <= 10; i++) {
    print("$n x $i = ${n * i}");
  }
}

