import '../bank.dart';
import 'dart:io';

accountFunction(){
  print('\nchoose your option\n');
  print('1. For withdrawal 2. For deposit , 3. Back to Dashboard , 4. Exit');
  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      accountWithdrawal();
      break;
    case 2:
      accountDeposit();
      break;
    case 3:
      accountDetails();
      break;
    case 4:
      exit(0);
  }
}