import '../bank.dart';
import 'dart:io';

updateAccount(){
  print('\nEnter Account ID');
  String id = stdin.readLineSync()!;
  Map<String, dynamic> accountSearch = {};
  for (var element in dataForAccount) {
    if (element['id'].toString().trim() == id.trim()) {
      accountSearch = element;
      dataForAccount.remove(element);
      break;
    }
  }
  print(accountSearch);
  print('\nEnter Account Update');
  print('Enter your Account Holder');
  String name = stdin.readLineSync()!;
  print('Enter your balance');
  int balance = int.parse(stdin.readLineSync()!);
  String dateCreated = DateTime.now().toString();

  Map<String, dynamic> account = {
    'id': id,
    'name': name,
    'age': balance,
    'dateCreated': dateCreated
  };
  dataForAccount.add(account);
  print(dataForAccount);
    print('\nAccount Updated Successfully\nif you want to update another account press 1 or 2 to go back to dashboard account\nany other key to exit');
  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      updateAccount();
      break;
    case 2:
      accountDetails();
      break;
    default:
      exit(0);
  }
  
  }