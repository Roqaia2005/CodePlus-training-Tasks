// where last where first where reduce fold map

void main() {
  List<int> l = [1, 2, 3, 4, 5];

  List<int> even = l.where((number) => number % 2 == 0).toList();
  List<int> odd = l.where((number) => number % 2 != 0).toList();
  int firstOdd = l.firstWhere((number) => number % 2 != 0);
  int firstEven = l.lastWhere((number) => number % 2 == 0);

  print(
    "Even numbers are $even,odd numbers are $odd, first odd number is $firstOdd, last even number is $firstEven",
  );
  int sum = l.reduce((a, b) {
    return a + b;
  });

  print(sum);

  int sum2 = l.fold(2, (a, b) {
    return a + b;
  });
  print(sum2);
  List<int> l2 = l.map((n) => n * 2).toList();

  print(l2);
}
