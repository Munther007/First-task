import 'dart:math';
class Color {
  Color(this.value);
  final int value;
}

class View {
  int id;
  Color? color;
  View(this.id, {Set? set , this.color});

  @override
  String toString() {
    return '$id';
  }
}

class Text extends View {
  // ignore: prefer_typing_uninitialized_variables
  var content;
  Text(int id, this.content, {Color? color}) : super(id, color:color);
}
void main() {

  int id = Random().nextInt(10000);
  String content;
  var helloText = Text(id, content='hello');

  print('hello: $helloText');
}

void task2() {
  List<int> numbers = List.generate(75, (index) => Random().nextInt(10000));
  List<int> evenNumbers =[];

  for(int e in numbers){
    if(e % 2 == 0){
      evenNumbers.add(e);
    }
  }
  print('evenNumbers: $evenNumbers');
}
