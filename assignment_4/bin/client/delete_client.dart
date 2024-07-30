import 'dart:io';
import 'dart:math';
import '../bank.dart';

deleteClient() {
  print('\nEnter Client ID');
  String id = stdin.readLineSync()!;
  Map<String, dynamic> clientSearch = {};
  for (var element in dataForClient) {
    if (element['id'].toString().trim() == id.trim()) {
      clientSearch = element;
      dataForClient.remove(element);
      break;
    }
  }
  print(clientSearch);
  print(
      '\nClient Deleted Successfully\nif you want to delete another client press 1 or 2 to go back to dashboard client\nany other key to exit');
  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      deleteClient();
      break;
    case 2:
      clientDetails();
      break;
    default:
      exit(0);
  }
}
