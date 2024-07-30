import '../bank.dart';
import 'dart:io';

deleteAccount(){
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
  print(
      '\nAccount Deleted Successfully\nif you want to delete another account press 1 or 2 to go back to dashboard account\nany other key to exit');
  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      deleteAccount();
      break;
    case 2:
      accountDetails();
      break;
    default:
      exit(0);
  }
}