import 'dart:ffi';

void main(List<String> args) {
  // if statment
  if (null is Null) {
    print("hell no"); // hell no
  } else if (1 == 1.0) {
    print("hell yeah");
  } else {
    print("fii");
  }

  // ternary if
  String? objt = "yeat";
  var tt = null == objt ? "hell" : "paradise";
  print(tt); // paradise

// switch case
  var ee1 = 11;
  switch (ee1) {
    case 11:
      print("hello 11");
      break;
    case 12:
      print("hello ${11}");
      break;
    default:
      print("hello hh");
  }

  // Loops
  for (int i = 0; i < 11; i++) {
    print("For loop ${i}");
  }

  int i = 0;
  while (i < 11) {
    print("While loop ${i}");
    i++;
  }

  var arr1 = [1, 3, 8, 9, "t"];
  for (var elem in arr1) {
    print(elem);
  }

  arr1.forEach((element) {
    print(element);
  });

  arr1.forEach((element) => print(element));

  arr1.forEach(fun);

  //
}

void fun(args) {
  print(args);
}
