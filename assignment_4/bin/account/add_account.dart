import 'dart:io';
import 'dart:math';
import '../bank.dart';

addAccount(){
  print('\nEnter Account Details');
  print('Generating Account Number...');
  int id = Random().nextInt(9999);
  print('Enter your Account Holder');
  String name = stdin.readLineSync()!;
  print('Enter your balance');
  int balance = int.parse(stdin.readLineSync()!);
  String dateCreated = DateTime.now().toString();

  Map<String, dynamic> account = {
    'id': id,
    'name': name,
    'balance': balance,
    'dateCreated': dateCreated
  };
  dataForAccount.add(account);
  print(dataForAccount);

  print('\nClient Added Successfully\nif you want to add another client press 1 or 2 to go back to dashboard Account\nany other key to exit');
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

