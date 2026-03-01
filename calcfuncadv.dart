import 'dart:io';
import 'dart:math';

List<String> history = [];

void main() {
  while (true) {
    showMenu();
    int? choice = getChoice();

    if (choice == null) {
      print("Invalid choice.\n");
      continue;
    }

    if (choice == 8) {
      print("Exiting Calculator.");
      break;
    }

    if (choice == 7) {
      showHistory();
      continue;
    }

    if (choice < 1 || choice > 8) {
      print("Invalid option.\n");
      continue;
    }

    List<double>? numbers = getNumbers();
    if (numbers == null) {
      print("Invalid number entered.\n");
      continue;
    }

    double a = numbers[0];
    double b = numbers[1];

    String? record = performOperation(choice, a, b);

    if (record != null) {
      history.add(record);
      print("Result: ${record.split('=')[1]}\n");
    }
  }
}

void showMenu() {
  print("===== Advanced CLI Calculator =====");
  print("1. Add");
  print("2. Subtract");
  print("3. Multiply");
  print("4. Divide");
  print("5. Power");
  print("6. Percentage");
  print("7. View History");
  print("8. Exit");
  stdout.write("Enter your choice: ");
}

int? getChoice() {
  return int.tryParse(stdin.readLineSync() ?? "");
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

String? performOperation(int choice, double a, double b) {
  switch (choice) {
    case 1:
      return "$a + $b = ${add(a, b)}";
    case 2:
      return "$a - $b = ${subtract(a, b)}";
    case 3:
      return "$a * $b = ${multiply(a, b)}";
    case 4:
      double? result = divide(a, b);
      if (result == null) return null;
      return "$a / $b = $result";
    case 5:
      return "$a ^ $b = ${power(a, b)}";
    case 6:
      return "$a% of $b = ${percentage(a, b)}";
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

double power(double a, double b) => pow(a,b).toDouble();
double percentage(double a, double b) => (a / 100) * b;

void showHistory() {
  if (history.isEmpty) {
    print("No calculations yet.\n");
    return;
  }

  print("\n=== Calculation History ===");
  for (int i = 0; i < history.length; i++) {
    print("${i + 1}. ${history[i]}");
  }
  print("");
}