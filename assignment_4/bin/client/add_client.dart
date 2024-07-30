import 'dart:io';
import 'dart:math';
import '../bank.dart';

addClient(){
  print('\nEnter Client Details');
  int id = Random().nextInt(9999);
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

  print('\nClient Added Successfully\nif you want to add another client press 1 or 2 to go back to dashboard client\nany other key to exit');
  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      addClient();
      break;
    case 2:
      clientDetails();
      break;
    default:
      exit(0);
  }
}