class Person {
  int age;
  String name;
  Person(this.age, this.name);
  String toString() {
    return '{"age":$age, "name":"$name"}';
  }

  //named contructor
  /*

  Person.engineer() {
    age = 12;
    name = "hamed";
  }
  */
}

class Student extends Person {
  int code;
  int age;
  String name;
  Student(this.code, this.age, this.name) : super(age, name);
  @override
  String toString() {
    return '{"code": $code, ${super.toString()}}';
  }

  //get age => this.age;
}

void main(List<String> args) {
  Person p1 = new Person(12, "name1");
  print(p1);
  print(p1.toString());

  //
  final name = "Essadeq"; // cannot be ressigned
  const name2 = "Eddaseq"; // cannot be ressigned

  Student s1 = new Student(112, 43, "name");
  print(s1.toString());

  // exception handling
  try {
    var t = 1 / 0;
    print(t);
  } on Exception catch (e) {
    print(e);
    print(e.runtimeType);
  } catch (e) {
    print(e);
  } finally {
    print("finally");
  }
}
