import 'dart:io';

void main() {
  String? name;
  while (name == null) {
    print("Enter User Name");
    String? inputData = stdin.readLineSync();
    List newData = inputData!.trim().split("");
    if (newData.length > 0) {
      name = newData.join();
    }
  }

  late int balance;
  print("Enter Your Balance");
  balance = input();
  AccounInfo.balance = balance;

  late int userEarn;
  print("Enter Your Bet");
  userEarn = input(bet: 'betting');

  late int guessNumber;
  print("Enter Your Guess Number");
  guessNumber = input(max: 9);

  final accounInfo =
      AccounInfo(name: name, betAmount: userEarn, guessNumber: guessNumber);
  print(accounInfo.name);
  print(AccounInfo.balance);
  print(accounInfo.betAmount);
  print(accounInfo.guessNumber);
}

int input({int? max, String? bet}) {
  int? data;
  while (data == null) {
    String? inputData = stdin.readLineSync();
    String newInput = inputData!.trim();
    if (newInput != null &&
        newInput != '' &&
        !newInput.contains(new RegExp(r'[a-z]'))) {
      int? intData = int.parse(newInput);
      if (intData != null && intData > 0) {
        if (bet != null) {
          if (AccounInfo.balance < intData) {
            print("Balance is not enough");
          } else {
            data = intData;
          }
        } else {
          if (max != null) {
            if (intData == 0 || intData > max) {
              print("Guess Number Is Greater than 0 and less than $max number");
            } else {
              data = intData;
            }
          } else {
            data = intData;
          }
        }
      }
    }
  }
  return data;
}

class AccounInfo {
  final String name;
  static int balance = 0;
  late int betAmount;
  late int guessNumber;
  AccounInfo(
      {required String this.name,
      required int this.betAmount,
      required int this.guessNumber});
}
