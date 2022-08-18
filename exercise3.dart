import 'dart:io';
import 'dart:convert';

void main() {
  var file = File("./birthday.json");
  Map<String, dynamic> dic = json.decode(file.readAsStringSync());

  stdout.writeln(
      " Welcome to the birthday dictionary. We know the birthdays of:");
  dic.forEach((key, value) {
    print(key);
  });

  stdout.writeln("Who's birthday do you want to look up?");
  String? key = stdin.readLineSync();
  print("${key}'s birthday is ${dic[key]}");

  stdout.write("Would you like to add more people's birthdays? ");
  String answer = stdin.readLineSync()!.toLowerCase();

  switch (answer) {
    case "yes":
      stdout.write("enter the name: ");
      String name = stdin.readLineSync()!;
      stdout.write("enter the bithday format(dd/mm/yyyy): ");
      String birthday = stdin.readLineSync()!;
      dic[name] = birthday;
      file.writeAsStringSync(json.encode(dic));
      dic.forEach((key, value) {
        print("$key: $value");},);
      break;

    default:
      print("finished");
  }
}
