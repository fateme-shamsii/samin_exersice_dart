import 'dart:io';
import 'dart:convert';
import 'package:intl/intl.dart';
void main() {
  File file = File("./birthday.json");
  Map<String, dynamic> data = json.decode(file.readAsStringSync());
  DateFormat extractor = DateFormat("MMMM");

  List<String> months = [
    for (var d in data.values) extractor.format(formatter(d.toString()))
  ];

  counter(months);
}

DateTime formatter(String birthday) {
  return DateFormat("dd/MM/yyyy").parse(birthday);
}

void counter(List m) {
  Map<String, int> occurances = {};

  m.forEach((e) {
    if (!occurances.containsKey(e)) {
      occurances[e] = 1;
    } else {
      occurances[e] = 1 + occurances[e]!;
    }
  });
  occurances.forEach((key, value) {
    print("$key: $value");
  });
}
