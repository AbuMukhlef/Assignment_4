import 'dart:io';
import '../bank.dart';

accountDetails() {
  print('\nWelcome to Dashboard Of Account');
  print('choose your option\n');
  print('1. Add Account , 2. Update Account , 3. Delete Account , 4. Search Account , 5. For withdrawal and deposit , 6. Back to Dashboard , 7. Exit');

  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      addAccount();
      break;
    case 2:
      updateAccount();
      break;
    case 3:
      deleteAccount();
      break;
    case 4:
      searchAccount();
      break;
    case 5:
      accountFunction();
      break;
    case 6:
      mainDashboard();
      break;
    case 7:
      exit(0);
  }
}
