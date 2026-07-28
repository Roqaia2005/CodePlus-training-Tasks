//1
void execute(Function function) {}

void main() {
  execute(() {
    print("Hello dart");
  });

  calculate(2, 4, (a, b) {
    a + b;
  });
calculate(2, 4, (a, b) {
    a - b;
  });
calculate(2, 4, (a, b) {
    a * b;
  });
}
//2

int square(int number) => number * number;
String greet(String name) => "Hello $name";
bool isEven(int number) => number % 2 == 0;

void calculate(int a, int b, Function callback) {
  callback(a, b);
}
