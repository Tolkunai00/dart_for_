import 'dart:io';

void main() {

//задача 1
  for (int i=0; i<=20; i++){
    print(i);
  }
  print('Старт!');


//задача 2
while (true){
  print('Введите слова');
  String? word = stdin.readLineSync();
  if (word == 'стоп'){
    break;
  }
  print('Попугай: $word');
}


//задача 3
  for (int i=0; i<=20; i++){
    if (i % 2 == 0){
      continue;
    }
    print('Нечетные числа: $i');
  }


//задача 4
String? password;
do {
  print('Введите пинкод:');
  password = stdin.readLineSync();

  if (password != '12345'){
    print('Не верный пинкод, попробуйте еще раз');
  }
} while (password != '12345');
    print('Пинкод верный! Сейф открыт!');


//задача 5 

  int balance = 1000;

  while (true) {
    print('\n=== БАНКОМАТ ===');
    print('1. Проверить баланс');
    print('2. Пополнить баланс');
    print('3. Снять деньги');
    print('4. Выход');
    print('Выберите действие:');

    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print('Ваш баланс: $balance сом');
    } else if (choice == '2') {
      print('Введите сумму пополнения:');
      int? money = int.tryParse(stdin.readLineSync() ?? '');
      if (money == null || money <= 0) {
        print('Неверная сумма!');
        continue;
      }
      balance += money;
      print('Баланс пополнен: $balance сом');
    } else if (choice == '3') {
      print('Введите сумму снятия:');
      int? money = int.tryParse(stdin.readLineSync() ?? '');
      if (money == null || money <= 0) {
        print('Неверная сумма!');
        continue;
      }
      if (money > balance) {
        print('Недостаточно средств!');
        continue;
      }
      balance -= money;
      print('Остаток: $balance сом');
    } else if (choice == '4') {
      print('До свидания!');
      break;
    } else {
      print('Неверный выбор!');
      continue;
    }
  }
}
