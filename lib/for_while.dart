void main() {
  // 1 ОБРАТНЫЙ ОТСЧЁТ
  print("--- 1. ОБРАТНЫЙ ОТСЧЁТ ---");
  int n1 = 3;
  if (n1 >= 0) {
    for (int i = n1; i >= 0; i--) print(i);
    int i1 = n1;
    while (i1 >= 0) {
      print(i1);
      i1--;
    }
  }

  // 2 ПРОПУСК КРАТНЫХ
  print("--- 2. ПРОПУСК КРАТНЫХ ---");
  int n2 = 4;
  int i2 = 0;
  while (i2 < n2) {
    i2++;
    if (i2 % 3 == 0) continue;
    print(i2);
  }

  // 3 СУММА ДО НУЛЯ
  print("--- 3. СУММА ДО НУЛЯ ---");
  int sum3 = 0;
  for (var n in [4, -2, 7, 0, 100]) {
    if (n == 0) break;
    if (n < 0) continue;
    sum3 += n;
  }
  print('Сумма: $sum3');

  // 4 ЦИФРЫ ЧИСЛА
  print("--- 4. ЦИФРЫ ЧИСЛА ---");
  int temp4 = (-204).abs(), count4 = 0, dSum4 = 0;
  if (temp4 == 0) {
    print("1 цифра, сумма 0");
  } else {
    do {
      dSum4 += temp4 % 10;
      count4++;
      temp4 ~/= 10;
    } while (temp4 > 0);
    print('$count4 цифр, сумма $dSum4');
  }

  // 5 УДАЛЕНИЕ ЭЛЕМЕНТОВ
  print("--- 5. УДАЛЕНИЕ ЭЛЕМЕНТОВ ---");
  var list5 = [2, 4, 5, 6];
  int idx5 = 0;
  while (idx5 < list5.length) {
    if (list5[idx5] % 2 == 0) {
      list5.removeAt(idx5);
    } else {
      idx5++;
    }
  }
  print(list5);

  // 6 ПОИСК В МАТРИЦЕ
  print("--- 6. ПОИСК В МАТРИЦЕ ---");
  var m6 = [[1], [], [3, 7], [7]];
  String found6 = "не найдено";
  outer: for (int r = 0; r < m6.length; r++) {
    for (int c = 0; c < m6[r].length; c++) {
      if (m6[r][c] == 7) {
        found6 = "$r $c";
        break outer;
      }
    }
  }
  print(found6);

  // 7 ПРОСТОЕ ЧИСЛО
  print("--- 7. ПРОСТОЕ ЧИСЛО ---");
  bool isPrime(int n) {
    if (n <= 1) return false;
    for (int i = 2; i * i <= n; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }
  print(isPrime(17));

  // 8 ОТЛОЖЕННЫЙ ВЫВОД
  print("--- 8. ОТЛОЖЕННЫЙ ВЫВОД ---");
  var fns8 = [];
  int j8 = 0;
  while (j8 < 3) {
    int c8 = j8;
    fns8.add(() => print(c8));
    j8++;
  }
  for (var f in fns8) f();

  // 9 ВТОРОЙ МАКСИМУМ
  print("--- 9. ВТОРОЙ МАКСИМУМ ---");
  int? m1, m2;
  for (var v in [5, 5, 3]) {
    if (m1 == null || v > m1) {
      m2 = m1;
      m1 = v;
    } else if (v < m1 && (m2 == null || v > m2)) {
      m2 = v;
    }
  }
  print(m2 ?? "нет результата");

  // 10 ДЛИННАЯ СЕРИЯ
  print("--- 10. ДЛИННАЯ СЕРИЯ ---");
  var l10 = [1, 2, 2, 2];
  if (l10.isEmpty) {
    print("нет серии");
  } else {
    int bVal = l10[0], bLen = 1, cVal = l10[0], cLen = 1;
    for (int k = 1; k < l10.length; k++) {
      if (l10[k] == cVal) {
        cLen++;
      } else {
        if (cLen > bLen) {
          bLen = cLen;
          bVal = cVal;
        }
        cVal = l10[k];
        cLen = 1;
      }
    }
    if (cLen > bLen) {
      bLen = cLen;
      bVal = cVal;
    }
    print("$bVal, длина $bLen");
  }
}
