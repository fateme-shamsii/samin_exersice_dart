import 'dart:io';
import 'dart:core';

void main() {
  var alist = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var blist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  Set<int> result = {};
  alist.forEach((element) {
    if (blist.contains(element)) result.add(element);
  });
  print(result.toList());
}
