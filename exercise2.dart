import 'dart:io';

void main() {
  Map<String, Object> birthdays = {
    "Albert Einstein": "01/17/1706",
    "Benjamin Franklin": "02/17/1706",
    "Ada Lovelace": "03/17/1706",
    "selena gomez": "22/7/1992",
    "Billie Eilish": "18/12/2001",
    "Taylor Swift": "13/12/1989",
    "Justin Bieber": "1/3/1994",
  };
  stdout.writeln(
      " Welcome to the birthday dictionary. We know the birthdays of:");
  birthdays.forEach((key, value) {
    print(key);
  });
  stdout.writeln("Who's birthday do you want to look up?");
  String? key = stdin.readLineSync();
  print("${key}'s birthday is ${birthdays[key]}");
}
