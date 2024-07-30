import 'dart:io';
import '../bank.dart';

updateClient() {
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
  print('\nEnter Client Update');
  print('Enter your name');
  String name = stdin.readLineSync()!;
  print('Enter your age');
  int age = int.parse(stdin.readLineSync()!);
  print('Enter your address');
  String address = stdin.readLineSync()!;
  print('Enter your email');
  String email = stdin.readLineSync()!;
  print('Enter your phone');
  String phone = stdin.readLineSync()!;
  String dateCreated = DateTime.now().toString();

  Map<String, dynamic> client = {
    'id': id,
    'name': name,
    'age': age,
    'address': address,
    'email': email,
    'phone': phone,
    'dateCreated': dateCreated
  };
  dataForClient.add(client);
  print(dataForClient);

  print('\nClient Updated Successfully\nif you want to update another client press 1 or 2 to go back to dashboard client\nany other key to exit');
  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      updateClient();
      break;
    case 2:
      clientDetails();
      break;
    default:
      exit(0);
  }
}
