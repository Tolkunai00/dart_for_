//задача 1
import 'dart:io';
void main() {
  for (int i = 10; i>=1; i--) {
    print(i);}
    print('Старт!');

//задача 2
  while (true){
    print('Напишите что небудь:');
    String? text = stdin.readLineSync();

    if(text == 'стоп'){
      print('Програма Звершена');
      break;
    }
    print('Попугай: $text');
  }

//задача 3
  for(int i = 1; i<=20; i++){
  if (i % 2 != 0){
    continue;}
    if (i % 2 == 0){
    print(i);
  }
  }

//задача 4 
  String? pin;
  do {
    print('Введите PIN-КОД');
    pin = stdin.readLineSync();

    if(pin!='1234'){
      print('Неверный pin-код повторите еще раз');
    }
  }while(pin != '1234');
  print('Сейф открыт');



//доп задание
//обьяснение мое проект банкомат снова и снова можно выбрать категории до входа


  double balance = 100000;
  while(true){
    print('\n======== БАНКОМАТ =========');
    print('1. проверить баланс');
    print('2. пополнить баланс');
    print('3. снчть деньги');

    stdout.write('Выберите пункт: ');
    String? choice = stdin.readLineSync();
    int? choose = int.tryParse(choice ?? '');
    if(choice==null){
      print('Ошибка! Введите число.');
      continue;
    }
    switch(choose){
      case 1:
      print('Ваш баланс $balance сом');
      break;

      case 2:
      stdout.write('Введите сумму пополнения: ');
      double? amount = double.tryParse(stdin.readLineSync() ?? '');
      if (amount == null || amount <= 0){
        print('Не верная сумма !');
        continue;}
      if(amount > balance){
        print('Недостаточно средств');
        continue;
      }
        balance -= amount;
        print('Деньги успешно сняты !');
        print('Текущий баланс $balance сом');
        break;
      case 3:
      stdout.write('Введите сумму для снятия');
      double? amount = double.tryParse(stdin.readLineSync() ?? '');
      if (amount == null || amount <= 0){
        print('Не верная сумма !');
      }
      if (amount! > balance){
        print('Не достаточно сердств!');
        continue;
      }
      balance -= amount;
      print('Деньги успешно сняты!');
      print('Остаток: $balance сом');
      break;

      case 4:
      print('Спосибо за исползование банкомата!');
      return;
      default:
        print('Такого пункта меню нет !');

    }
  }
}




