import 'dart:io';
import 'dart:math';

void main() {
  String? name;
  while (name == null) {
    print("Enter User Name");
    String? inputData = stdin.readLineSync();
    List newData = inputData!.trim().split("");
    if (newData.length > 0) {
      String text = newData.join();
      if (!text.contains(new RegExp(r'[0-9]'))) {
        name = text;
      }
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

  winOrLose(accounInfo);
  print(accounInfo.guessNumber);
  print("final balance is ${AccounInfo.balance}");
}

void winOrLose(AccounInfo info) {
  Random random = new Random();
  int randomNumber = random.nextInt(9) + 1;
  print("Random Number is $randomNumber ${info.guessNumber + 2}");
  if (randomNumber == info.guessNumber + 2) {
    AccounInfo.balance = AccounInfo.balance + info.betAmount;
    print("It is Same");
  } else {
    AccounInfo.balance = AccounInfo.balance - info.betAmount;
    print("It it not same");
  }

  print("Type 'Y' to play other game or other words to stop");
  String? data = stdin.readLineSync();
  if (data == 'Y') {
    main();
  } else {
    print("Thank for playing");
  }
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
