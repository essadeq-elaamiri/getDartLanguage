/*
  - Compiled
  - Static Type
  it supports 2 types of compilation:
  1. AOT : compile deployement
  2. JIT : compile during development (on thr fly)

  // import 'dart:core' , builtin and it is
  // automaticlly imported
*/

void main() {
  // define a variables
  // type inferance
  var name = "Essadeq";
  // staticly type defined
  String fallName = name + " Elaamiri";

  print('$fallName'); // Essadeq Elaamiri
  print(fallName); // Essadeq Elaamiri
  print(fallName); // Essadeq Elaamiri

  //
}
