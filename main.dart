import 'dart:io';
void showWelcome() {
  print('================================');
  print('МИНИ-КАЛЬКУЛЯТОР');
  print('================================');
  print('Добро пожаловать!');
}

void showResult(String operation, int result) {
  print('$operation: $result');
}

int add(int a, int b) {
  return a + b;
}

int subtract(int a, int b) {
  return a - b;
}

int multiply(int a, int b) {
  return a * b;
}

int divide(int a, int b) {
  return a ~/ b;
}

int getDefaultNumber() {
  return 10;
}

void main() {
  showWelcome();
  print('Введите первое число:');
  int firstNumber = int.parse(stdin.readLineSync()!);

  print('Введите второе число:');
  int secondNumber = int.parse(stdin.readLineSync()!);

  print('\n================================');
  print('РЕЗУЛЬТАТЫ');
  print('================================');
  showResult('Сложение', add(firstNumber, secondNumber));
  showResult('Вычитание', subtract(firstNumber, secondNumber));
  showResult('Умножение', multiply(firstNumber, secondNumber));

  if (secondNumber == 0) {
    print('Деление на ноль невозможно.');
  } else {
    showResult('Деление', divide(firstNumber, secondNumber));
  }

  print('Значение по умолчанию: ${getDefaultNumber()}');
}








