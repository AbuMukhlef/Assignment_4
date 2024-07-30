import '../bank.dart';
import 'dart:io';

accountDeposit() {
  print('\nEnter Account ID');
  String id = stdin.readLineSync()!;
  Map<String, dynamic> accountSearch = {};
  for (var element in dataForAccount) {
    if (element['id'].toString().trim() == id.trim()) {
      accountSearch = element;
      break;
    }
  }
  print(accountSearch);
  print('\nEnter Deposit Amount');
  int amount = int.parse(stdin.readLineSync()!);
  int balance = accountSearch['balance'] + amount;
  accountSearch['balance'] = balance;
  print(accountSearch);
  print(
      '\nDeposit Successfully\nif you want to deposit another amount press 1 or 2 to go back to withdraw/deposit dashboard\nany other key to exit');
  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      accountDeposit();
      break;
    case 2:
      accountFunction();
      break;
    default:
      exit(0);
  }
}
