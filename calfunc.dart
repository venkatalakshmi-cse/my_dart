import 'dart:io';

void main() {
  while (true) {
    showMenu();
    int? choice = getChoice();

    if (choice == null) {
      print("Invalid choice. Try again.\n");
      continue;
    }

    if (choice == 5) {
      print("Exiting Calculator. Goodbye.");
      break;
    }

    if (choice < 1 || choice > 5) {
      print("Invalid option selected.\n");
      continue;
    }

    List<double>? numbers = getNumbers();
    if (numbers == null) {
      print("Invalid number entered. Try again.\n");
      continue;
    }

    double num1 = numbers[0];
    double num2 = numbers[1];

    double? result = performOperation(choice, num1, num2);

    if (result != null) {
      print("Result: $result\n");
    }
  }
}

void showMenu() {
  print("===== CLI Calculator =====");
  print("1. Add");
  print("2. Subtract");
  print("3. Multiply");
  print("4. Divide");
  print("5. Exit");
  stdout.write("Enter your choice: ");
}

int? getChoice() {
  String? input = stdin.readLineSync();
  return int.tryParse(input ?? "");
}

List<double>? getNumbers() {
  stdout.write("Enter first number: ");
  double? num1 = double.tryParse(stdin.readLineSync() ?? "");

  stdout.write("Enter second number: ");
  double? num2 = double.tryParse(stdin.readLineSync() ?? "");

  if (num1 == null || num2 == null) {
    return null;
  }

  return [num1, num2];
}

double? performOperation(int choice, double a, double b) {
  switch (choice) {
    case 1:
      return add(a, b);
    case 2:
      return subtract(a, b);
    case 3:
      return multiply(a, b);
    case 4:
      return divide(a, b);
    default:
      return null;
  }
}

double add(double a, double b) => a + b;

double subtract(double a, double b) => a - b;

double multiply(double a, double b) => a * b;

double? divide(double a, double b) {
  if (b == 0) {
    print("Error: Cannot divide by zero.");
    return null;
  }
  return a / b;
}