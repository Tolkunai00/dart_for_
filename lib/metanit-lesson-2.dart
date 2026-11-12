void main() {
  // упражнение 1
  const int yourAge = 16;
  const bool isKid = yourAge >= 0 && yourAge <= 16;
  print(isKid);


  // упражнение 2
  const int jantaiAge = 15;
  const int aliAge = 17;
  const bool areKids = (jantaiAge >= 0 && jantaiAge <= 16) &&
                       (aliAge >= 0 && aliAge <= 16);
  print(areKids);


  // упражнение 3
  const int manapAge = 18;
  const int dimaAge = 15;
  const bool ifChild = (manapAge >= 0 && manapAge <= 16) ||
                       (dimaAge >= 0 && dimaAge <= 16);
  print(ifChild);


  // упражнение 4
  int experience = 1;

  if (experience >= 0 && experience < 2) {
    print('Junior developer');
  } else if (experience >= 2 && experience < 5) {
    print('Middle developer');
  } else if (experience >= 5) {
    print('Senior developer');
  } else {
    print('Неверный стаж');
  }


  // упражнение 5
  int score = 75;
  String result = score > 50 ? 'Зачет сдан' : 'Зачет не сдан';
  print(result);
}