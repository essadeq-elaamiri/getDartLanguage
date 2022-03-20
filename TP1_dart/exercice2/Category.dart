import 'Computer.dart';

class Category {
  String name, description;
  List<Computer> computers;

  Category(this.name, this.description, this.computers);

  @override
  String toString() {
    String des = '''
    {
      "name": $name,
      "description" : $description,
      "computers" :[''';
    for (Computer computer in computers) {
      des += computer.toString();
      if (computer == computers[computers.length - 1]) {
        des += ',';
      }
    }

    des += ''']
    }
    ''';
    return des;
  }

  void addComputer(Computer c) {
    if (!this.computers.contains(c)) {
      this.computers.add(c);
      return;
    }
    throw new Exception("Computer already exists !");
  }

  void deleteComputer(int index) {
    if (index < computers.length) {
      this.computers.remove(index);
    }
    throw new Exception("Index not found");
  }

  List<Computer?> findByPrice(num price) {
    return computers.map((e) {
      if (e.price == price) return e;
    }).toList(growable: true);
  }
}
