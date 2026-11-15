void main() {
  //задача 1
  String phonename = 'Samsung';
  int yearsPhone = 2020;
  double pricesphone = 5000000.0;
  bool nfcPhones = true;
  print('смартфона: $phonename, год выпуска: $yearsPhone, цена: $pricesphone, наличие NFC: $nfcPhones');

  //задача 2
  List<String> colors = ['red', 'green', 'blue', 'yellow', 'purple'];
  print('Phone colors: $colors');

  //задача 3
  Map<String, dynamic> device = {
    'name': 'Samsung',
    'year': 2025,
    'price': 6500000.0,
  };
  print('Device: $device');

  //задача 4
  print('================================');
  print('=========== Характеристика терефона ===========');
  print('Phone name: $phonename');
  print('Phone year: $yearsPhone');
  print('Phone price: $pricesphone');
  print('Phone NFC: $nfcPhones');
  print('Phone colors: $colors');
  print('Phone device: $device');
  print('================================');


  //техническое задание 

  String chatacterNmae = 'Нинндзя';
  int characterLevel = 10;
  double currentHp = 75.5;
  double maxHp = 100.0;
  bool isActicve = true;

  List<String> equipment = ['Мечь', 'Щит', 'Шлем', 'Броня',];

  print('=========================================');
  print('================= Статус Персонажа =================');
  print('Имя: $chatacterNmae');
  print('Уровень $characterLevel');
  print('Здаровье: $currentHp / $maxHp');
  print('Жив: $isActicve');
  print('--------------------------------------');
  print('Экипировка:');

  for (String item  in equipment) {
    print('- $item');
  }
  print('=============================================');
}