import 'dart:ffi';
import 'dart:io';

class Person {
  String name = "hello";
}

void main(List<String> args) {
  //*********** Std io

  //stdout.writeln("Name :");

  /*
  The Dart language now supports sound null safety!
  When you opt into null safety, types in your code are non-nullable by default, meaning that variables can’t contain null unless you say they can. With null safety, your runtime null-dereference errors turn into edit-time analysis errors.

  To indicate that a variable might have the value null, just add ? to its type declaration:
  */

  //String? name = stdin.readLineSync(); //nullableString
  //print("Hello $name");

  /*
   *  Name :
      Essqdeq
      Hello Essqdeq
   */

  //***********  DataType
  /*
    int 
    double
    String
    bool
    dynamic
  */

  int a = 1;
  var var_a = 11;
  print(a.runtimeType.toString());
  print(var_a.runtimeType.toString());

  String hero = "Ahmed";
  var hero_var = "Ahmde";

  print(hero.runtimeType.toString());
  print(hero_var.runtimeType.toString());

  dynamic weakHero = "Aka";
  print(weakHero.runtimeType.toString());

  int? nullTest = null; // accept null after adding ? to type

  print(nullTest); // null
  print(nullTest.runtimeType); // Null

  /*
    Everything is object in Dart ,even functions
     
  */

  //*********** String Type Conversion Contant & null*/

  var string1 = "Hello";
  var string2 = '22';
  var string3 = "hello \n hello2 \t hello3 ";

  // string to int
  int string2_value = int.parse(string2);
  print(string2_value == 22); // true

  // string to double
  double string2_value_d = double.parse(string2);
  print(string2_value_d == 22.0); // true
  print(string2_value_d == 22); // true

  // to string

  print(122.toString());
  print(11.77.toString());
  print(11.77.toString().indexOf(7.toString())); // 3

  // constants
  const c1 = "jemala";
  print(c1);
  print(c1.runtimeType); // String

  /***** Operators */
  /*
    +
    -
    /
    %
    ==
    *=
    +=
    /=
    -=
    --
    ++
    <
    >
    <=
    >=
    &&
    ||
    !=

  */

  /*********** Null Aware Operator */
  // obj?prop : access the property if obj is not null;
  //, obj = obj1?? obj2 : obj will recieve the value of obj1 if it not null, otherwise it will recieve the value of obj2
  // , obj??= obj2: obj recives the value of obj2 if it is null;

  Person? obj = null; // obj is null here
  //obj?.name = "laarbi";

  // the two folowing statements are the same
  if (obj != null) {
    print(obj.name);
  }
  print(obj?.name); // if obj is not null call name

  // single line conditions

  //int? number1 = null;
  int? number1 = 10;

  int? number2 = number1 ?? 8;
  // it the same as
  if (number1 == null) {
    number2 = 8;
  } else {
    number2 = number1;
  }
  print(number2);

  int? number3 = null;

  number3 ??= 233;
  print(number3);

  // ther same as
  if (number3 == null) {
    number3 = 233;
  }

  // the same as
  number3 = number3 == null ? 233 : number3;

  /**** ***** is operator */
  print(1 is int); // true
  print("hello" is dynamic);
  print("hellos" is Null); // false
  print("null" is Null); // false
  print("EE" is String); // true
}
