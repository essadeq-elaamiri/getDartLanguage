void main(List<String> args) {
  //List
  List names = ['Jack', 'Heleri', 2, 8, 9, 1.22, false];
  print(names.length);
  print(names.getRange(0, 3));
  print(names[0]);

  print("*" * 22);
  //List<String> names2 = [...names]; // error

  //print(names2);

  // Set : unique  collection of items
  var set11 = {"helo", "a", "c", "b", "a", "c", "a"};
  print(set11); // {helo, a, c, b}
  Set set1 = new Set.from(names);
  print(set1);

  // Map {key: value}
  var map1 = {'name': "Hellogua", 'age': 1322, 1: "text"};
  print(map1);
  print(map1[1]);
  print(map1['name']);
}
