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
    
  }  
}