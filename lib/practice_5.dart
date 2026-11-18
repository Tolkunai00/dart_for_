
//задача 1
// double calculateArea(double width, double heigth){
//     return width * heigth;
// }
void main(){
    // double results = calculateArea(5.0, 10.0);
    // print('Площать прямоугольника: $results');


//задача 2
// double calculateArea({
//     required double width, required double heigth,
// }) => width * heigth;
// print(calculateArea(width: 5.0, heigth: 10.0));



//задача 3
    // List<int> numbers = [2, -5, 8, -1, 10, 4];
    // List<int> positive = numbers.where((number) => number > 0).toList();
    // print(positive);


//задача 4
//   List<String> words = ['apple', 'banana', 'kiwi'];
//   List<int> lengths = words.map((word) => word.length).toList();
//   print(lengths);


// Техническое задание для самостоятельной работы
List<Map<String, dynamic>> products = [
    {
        'name': 'Ноутбук',
        'category': 'Электроника',
        'price': 500000,
    },
    {
        'name': 'Футболка',
        'category': 'Одежда',
        'price': 1000,
    },
    {
        'name': 'Наушник',
        'category': 'Электроника',
        'price': 15000,
    },
    {
        'name': 'Крассовки',
        'category': 'Обувь',
        'price': 6000,

    }
];

    //Фильтр
var electronics = products.where((item) => item['category'] == 'Электроника').toList();
print('===== Электроника =====');
electronics.forEach((item) {print('${item['name']} - ${item['price']} сом');});

    //Получение название товаров
var names = products.map((item) => item['name']).toList();
print('====== Название товаров =======');
print(names);

    //общая стоимость корзины
num total = products.fold<num>(0, (sum, item) => sum + (item['price'] as num),);
print('\n =====  Общая Стоимость  ======== ');
print('$total сом');

}