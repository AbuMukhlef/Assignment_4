import '../bank.dart';
import 'dart:io';

accountDeposit() {
  int amount, balance;
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
  print(
      '\nYou can deposit only 5000 at a time otherwise it will be rejected by the bank');
  print('\nEnter Deposit Amount');
  amount = int.parse(stdin.readLineSync()!);
  if (amount <= 5000) {
    balance = accountSearch['balance'] + amount;
    accountSearch['balance'] = balance;
    print(accountSearch);
  } else {
    print('Invalid Deposit');
    exit(0);
  }
  print(
      '\nDeposit Successfully\nif you want to deposit another amount press 1 or 2 to go back to withdraw/deposit dashboard\n3. to exit');
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
