import 'dart:io';
import 'dart:math';
import '../bank.dart';

addAccount() {
  String name, dateCreated;
  int id;
  print('\nEnter Account Details\n');
  print('***you have 500 RS to open an account***');
  print('Enter your balance');
  int balance = int.parse(stdin.readLineSync()!);
  if (balance > 500) {
    print('Generating Account Number...');
    id = Random().nextInt(9999);
    print('Enter your Account Holder');
    name = stdin.readLineSync()!;
    dateCreated = DateTime.now().toString();
  } else {
    print('Invalid Balance');
    exit(0);
  }

  Map<String, dynamic> account = {
    'id': id,
    'name': name,
    'balance': balance,
    'dateCreated': dateCreated
  };
  dataForAccount.add(account);
  print(dataForAccount);

  print(
      '\nClient Added Successfully\nif you want to add another client press 1 or 2 to go back to dashboard Account\nany other key to exit');
  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      addAccount();
      break;
    case 2:
      accountDetails();
      break;
    default:
      exit(0);
  }
}
