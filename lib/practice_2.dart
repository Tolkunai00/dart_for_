import "dart:io";
void main() {
  //задание 1
  print('========= Фейсконтроль =========');
  int yourAge = 25;
  if (yourAge >= 18){
    print('Разрешен доступ');
  }else {
    print('Доступ запрещен');
  }

  //задание 2
  print('Сколько вам лет?');
  int age = int.parse(stdin.readLineSync()!);
  if (age >= 18){
    print('Разрешен доступ');
  }else {
    print('Доступ запрещен');
  }

  //задание 3
  print('Введите свой логин:');
  String login = stdin.readLineSync()!;
  print('Введите свой пароль:');
  String password = stdin.readLineSync()!;
  if (login == 'admin' && password == '12345'){
    print('логин и пароль правльные, доступ разрешен');
  }else {
    print('Доступ или пароль не правильные, запрещен'); 
  }

  //задание 4
  double balance = 5000.0;

  print('===== БАНКОМАТ =====');
  print('1 - Баланс');
  print('2 - Снятие');
  print('3 - Пополнение');

  print('Выберите действие:');
  String choice = stdin.readLineSync() ?? '';

  switch (choice) {
    case '1':
      print('Ваш баланс: $balance сом');
      break;

    case '2':
      print('Введите сумму снятия:');
      double? amount = double.tryParse(stdin.readLineSync() ?? '');

      if (amount == null || amount <= 0) {
        print('Неверная сумма!');
      } else if (amount <= balance) {
        balance -= amount;
        print('Снято: $amount сом');
        print('Остаток: $balance сом');
      } else {
        print('Недостаточно средств!');
      }
      break;

    case '3':
      print('Введите сумму пополнения:');
      double? amount = double.tryParse(stdin.readLineSync() ?? '');

      if (amount == null || amount <= 0) {
        print('Неверная сумма!');
      } else {
        balance += amount;
        print('Баланс пополнен!');
        print('Новый баланс: $balance сом');
      }
      break;

    default:
      print('Неверная команда!');
  }

  //техническое задание 
  int healthy = 100;
  bool haskey = true;
  print('====== Побег из замка ======');
  print('Добро пожаловать в игру!');
  print('Твое здаровье: $healthy');

  print('''Куда хочешь пойдти? 
  1. Налево
  2. Направо
  ''');
  String choices = stdin.readLineSync() ?? '';
  if (choices == '1') {
    print('Ты пошел налево и встретил врага!');
    print('Выбери что ты будешь сделать (1. Атаковать, 2. Убежать):');
    String action = stdin.readLineSync() ?? '';
    if (action == '1'){
      print('Ты победил врага');
      print('Твое здоровье: $healthy');

      print('Ты нашел сундук выбери (1. Открыть, 2. Игнорировать):');
      String chestAction = stdin.readLineSync() ?? '';
      if (chestAction == '1'){
        print('Ты открыл сундук и нашел ключ!');
      }else if (chestAction == '2'){
        print('тЫ проигнорировал сундук и пошел дальше');
      }else {
        print('Неверная каманда!');
      }
    }
    }
      else if (choices == '2'){
      print('Ты пошел нараво и нашел кльюч!');
      haskey = true;
      print('Перед тобой ловушка (1. Перепрыгнуть, 2. Пройдти через нее):');
      String trapAction = stdin.readLineSync() ?? '';
      if (trapAction == '1'){
        print('Ты перепрыгнул через ловушку и продолжайешь путь');
      } else if (trapAction == '2'){
        healthy -= 60;
        print('Ты попал в ловущку и потерял 60 здоровья');
        print('Tвое здоровья: $healthy');
      }else {
        print('Неверная каманда!');
      }
  }
      print('===========================');
      print('Перед тобой закрытая дверь');
      if (haskey && healthy >= 50){
        print('Победа! Ты открыл дверь и добрался из замка!');
      }else {
        print('Не удалось открыть дверь и ты остался в замке!');
        print('Игра окончена!');
      }
      print('Твое здоровье: $healthy');
      print('Есть ключь: $haskey');
}
