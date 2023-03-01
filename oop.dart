import 'dart:ffi';

void main() {
  // final car = Car(type: "toyota", speed: 200, manufacture: "Japan");
  // final game = Game(type: "Arcade", feature: ["fight with demon", "buy item"]);
  // final newCar = Car(type: "nissan", speed: 200, manufacture: 'jdnk');
  // print(game.type);
  // car.drive();
  // game.login();
  // game.play();
  // newCar.drive();
  final car = Car();
  car.setType = "toyota";
}

class Car {
  late String _type;
  int? speed;
  late String _manufacture;
  // void drive() {
  //   print("$_type is driving at ${speed ?? 0}");
  // }
  set setType(data) {
    _type = data;
  }

  get getType{
    return _type;
  }
  // Car(
  //     {required String this.type,
  //     int? this.speed,
  //     required String this.manufacture});
}

class Game {
  final String type;

  List? feature;

  void login() {
    print("Login success");
  }

  void play() {
    print("You can play now");
  }

  Game({required String this.type, List? this.feature});
}
