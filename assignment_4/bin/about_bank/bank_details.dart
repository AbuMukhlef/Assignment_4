import '../bank.dart';
import 'dart:io';

bankDetails() {
  print('\nWelcome to Abu_Mukhlef Bank\n\n');
  print('our bank details.....\n\n');
  print('\nchoose your option\n');
  print(
      '1. Add Client , 2. Update Client , 3. Delete Client , 4. Back to Dashboard , 5. Exit');

  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      addClient();
      break;
    case 2:
      updateClient();
      break;
    case 3:
      deleteClient();
      break;
    case 4:
      mainDashboard();
      break;
    case 5:
      exit(0);
  }
}
