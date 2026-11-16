import 'dart:io';
void main() {

  //задача 1
  // List<String> cities = [
  //   'Бишкек', 'баткен', 'ОШ', 'Джала-Абад', 'Чуй'
  // ];
  // print('Общий город: $cities');
  // print('Первый город: ${cities.first}');
  // print('Общий количество: ${cities.length}');
  // print('Последний город: ${cities.last}');


  //задача 2
  // List<String> words = [];
  // for (int i=0; i<3; i++){
  //   print('Введите имя: ');
  //   String? name = stdin.readLineSync() ?? '';
  //   words.add(name);
  // }
  // print('Список имен: $words');

  //задача 3
  // List<int> grades = [4, 5, 3, 5, 4, 5, 2];
  // int sum = 0;
  // for (int i = 0; i<grades.length; i++){
  //   sum = sum + grades[i];
  // }
  // double avareage = sum / grades.length;
  // print('Список оценок: $grades');
  // print('Сумма оценок: $sum');
  // print('Средний балл: $avareage');


//задача 4
  // Map<String, int> products = {
  //   'Ноутбук': 10,
  //   'Телефон': 15,
  //   'Наушник': 20,
  //   'Мышка': 8, 
  //   'Клавиатура': 12
  // };
  // print('Введите название товара:');
  // String product = stdin.readLineSync()!;
  // if (products.containsKey(product)){
  //   print('Количество на складе: ${products[product]}');
  // }else {
  //   print('Такого товара нет на складе');
  // }
  

  //техническое задание 
  List<String> tasks = [];
  
  while (true){
    print('\n ====== Менеджер Задач ======');
    print('1. Посмотреть задач');
    print('2. добавить задачу');
    print('3. Удалить задачу');
    print('4. Выход');

    print('Выберите действие');
    String choice = stdin.readLineSync()!;
    switch (choice){
      case '1':
      if (tasks.isEmpty){
        print('Список задач пуст');
      }else {
        print('==== Мои задачи ====');
        for (int i = 0; i < tasks.length; i++){
          print('${i+1}. ${tasks[i]}');
        }
      }
      break;

     case '2':
    print('Введите новую задачу');
    String task = stdin.readLineSync() ?? '';

    if (task.isNotEmpty) {
      tasks.add(task);
      print('Задача успешно добавлена');
    } else {
      print('Задача не может быть пустой');
    }
    break;

      case '3':
      if (tasks.isEmpty){
        print('Нет задач для удаление');
      }else {
        print('===== Мои задачи ======');
        for (int i = 0; i<tasks.length; i++){
          print('${i+1}. ${tasks[1]}');
        }
        print('Введите номер задачи для удаление');
        String input = stdin.readLineSync() ?? '';
        int? number = int.tryParse(input);
        if (number == null){
          print('Введите прваильное число');
        }else if (number < 1 || number > tasks.length){
          print('Такое задач нет !');
        }else {
          tasks.removeAt(number - 1);
          print('Задача успешно удалена');
        }
      }
      break;

      case '4':
      print('Программа заверщена. До свидания!');
      return;

      default:
      print('Не верный выбор! Попробуйте еще раз.');
    }
  }
}
