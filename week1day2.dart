/*void main()
{
int num=20;
if(num%2==0)
{print("even :$num");}
else
{print("odd :$num");}
}

void main()
{
for (int i=0;i<=100;i++)
{
if(i%3==0)
{print(i);}}}

void main() {
  var g = 99;

  switch (g) {
    case >= 90 && <= 100:
      print("Grade A");
    case >= 80 && < 90:
      print("Grade B");
    case >= 70 && < 80:
      print("Grade C");
    case >= 60 && < 70:
      print("Grade D");
    case < 60:
      print("Grade F");
    default:
      print("Invalid score");
  }
}
*/

void main()
{
int sum=0;
int num=121;
int m=num;
while(num>0)
{
var n=num%10;
sum=n+sum*10;
num~/=10;
}
if(sum==m)
{print("palindrome");}
else
{print("not palindrome");
}}