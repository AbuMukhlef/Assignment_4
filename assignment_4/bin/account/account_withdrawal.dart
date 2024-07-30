import '../bank.dart';
import 'dart:io';

accountWithdrawal() {
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
      '\nYou can withdraw bigger than 50 at a time otherwise it will be rejected by the bank');
  print('\nEnter Withdrawal Amount');
  int amount = int.parse(stdin.readLineSync()!);
  if (amount <= 50) {
    print('Invalid Withdrawal');
    exit(0);
  } else {
    int balance = accountSearch['balance'] - amount;
    accountSearch['balance'] = balance;
    print(accountSearch);
  }
  print(
      '\nWithdrawal Successfully\nif you want to withdraw another amount press 1 or 2 to go back to withdraw/deposit dashboard\n, 3. to exit');
  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      accountWithdrawal();
      break;
    case 2:
      accountFunction();
      break;
    default:
      exit(0);
  }
}
