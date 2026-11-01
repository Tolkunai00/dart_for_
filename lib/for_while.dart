//задача 1 
import 'dart:io';
void main() {
    List<String> city = ['Bishkek', 'Osh', 'Batken', 'Jalal-Abad', 'Naryn'];

    print('Количества городов: ${city.length}');
    print('Первый город: ${city.first}');
    print('Последний город: ${city.last}');



//задача 2
    List<String> names = [];
    for (int i =0; i < 3; i++){
        print('Введите имя:');
        String name = stdin.readLineSync()!;
        names.add(name);
    }
    print('Введенные имена: $names');


//задача 3
    List<int> nums = [4, 5, 3, 5, 4, 5, 2];
    int sum = 0;
    for (int num in nums){
        sum += num;
    }
    double avareage = sum / nums.length;
    print('Сумма: $sum');
    print('Среднее сумма: $avareage');


//задача 4
    Map<String, int> products = {
        'Iphone': 650000,
        'Android': 350000,
        'Sumsung': 450000
    };
    print('Введите название продукта:');
    String productName = stdin.readLineSync()!;

    if (products.containsKey(productName)) {
        print('Цена продукта: ${products[productName]} сом');
    } else {
        print('Продукт не найден');
    }

//задача 5  Техническое задание для сомостаятельной работы
  List<String> tasks = [];

  while (true) {
    print('\n===== МЕНЕДЖЕР ЗАДАЧ =====');
    print('1. Посмотреть задачи');
    print('2. Добавить задачу');
    print('3. Удалить задачу');
    print('4. Выход');

    stdout.write('Выберите действие: ');
    String choice = stdin.readLineSync() ?? '';

    if (choice == '1') {
      if (tasks.isEmpty) {
        print('Список задач пуст');
      } else {
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
      }

    } else if (choice == '2') {
      stdout.write('Введите задачу: ');
      String task = stdin.readLineSync() ?? '';

      if (task.trim().isEmpty) {
        print('Задача не может быть пустой');
      } else {
        tasks.add(task);
        print('Задача добавлена!');
      }

    } else if (choice == '3') {
      if (tasks.isEmpty) {
        print('Список задач пуст');
        continue;
      }

      for (int i = 0; i < tasks.length; i++) {
        print('${i + 1}. ${tasks[i]}');
      }

      stdout.write('Введите номер задачи: ');
      int? number = int.tryParse(stdin.readLineSync() ?? '');

      if (number != null &&
          number >= 1 &&
          number <= tasks.length) {
        tasks.removeAt(number - 1);
        print('Задача удалена!');
      } else {
        print('Неверный номер задачи');
      }

    } else if (choice == '4') {
      print('Программа завершена');
      break;

    } else {
      print('Неверный выбор');
    }
  }
}




