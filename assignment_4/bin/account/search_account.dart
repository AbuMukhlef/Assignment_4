import '../bank.dart';
import 'dart:io';

searchAccount(){
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
  print('\nAccount Search has been Successfully Completed\nif you want to search another account press 1 or 2 to go back to dashboard Account\nany other key to exit\n');
  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      searchAccount();
      break;
    case 2:
      accountDetails();
      break;
    default:
      exit(0);
  }
}