import 'dart:io';

void main() {
//задание 1

  stdout.write('Введите возрост');
  String age = stdin.readLineSync() ?? '';
  try  {
    int number = int.parse(age);
    print('Ваш возрост: $number');
  }catch(e) {
    print('Ошибка: введено не число');
  }

  
  //задание 2
  stdout.write('Введите свой возрост:');
  String ages = stdin.readLineSync() ?? '';
  try {
    int number = int.parse(ages);
    print('Ваш возраст: $number');
  }catch(e) {
    print('Ошибка введено не число');
  }finally {
    print('Проверка ввод заверщена');
  }


  //задание 3
  double safeDivide(int a, int b) {
    if (b == 0) {
      throw Exception('Деление на ноль запрешено');
    }
    return a / b;
  }
  try {
    stdout.write('Введите первое число: ');
    int a = int.parse(stdin.readLineSync() ?? '');

    stdout.write('Введите второе число');
    int b = int.parse(stdin.readLineSync() ?? '');

    double result = safeDivide(a, b);
    print('Результат: $result');
  }on FormatException {
    print('Ошибка: Введите целое число');
  }catch(e){
    print('Ошибка: $e');
  }


//задание 4
  while (true) {
    print('\n=== КАЛЬКУЛЯТОР ===');
    print('Введите 0 для выхода');

    try {
      stdout.write('Первое число: ');
      String input = stdin.readLineSync() ?? '';

      if (input == '0') break;

      double a = double.parse(input);

      stdout.write('Оператор (+, -, *, /): ');
      String op = stdin.readLineSync() ?? '';

      stdout.write('Второе число: ');
      double b = double.parse(stdin.readLineSync() ?? '');

      double result;

      switch (op) {
        case '+':
          result = a + b;
          break;
        case '-':
          result = a - b;
          break;
        case '*':
          result = a * b;
          break;
        case '/':
          if (b == 0) {
            throw Exception('Деление на ноль запрещено');
          }
          result = a / b;
          break;
        default:
          print('Неизвестный оператор');
          continue;
      }

      print('Результат: $result');
    } on FormatException {
      print('Ошибка: введите правильное число');
    } catch (e) {
      print('Ошибка: $e');
    }
  }

  print('Калькулятор закрыт');

}