import 'bank.dart';
import 'dart:io';

mainDashboard() {
  print('\nWelcome to Dashboard');
  print('choose your option\n');
  print('1. Account Details , 2. Bank Details , 3. Client Details , 4. Exit');

  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      accountDetails();
      break;
    case 2:
      bankDetails();
      break;
    case 3:
      clientDetails();
      break;
    case 4:
      exit(0);
  }
}
