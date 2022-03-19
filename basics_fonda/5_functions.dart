// functions

void sayBebe() {
  print("bebe");
}

void sayBubu() => print("bubu");

void sayBebeTimes(n) {
  for (int i = 0; i < n; i++) {
    print('bebe');
  }
}

String sayBebeTimesToString(n) {
  String bebe = "";
  for (int i = 0; i < n; i++) {
    bebe += 'bebe\n';
  }
  return bebe;
}

DateTime getDate() {
  print(DateTime.april); // 4
  DateTime date = DateTime.now();

  return date;
}

int calculateAge(birthYear) {
  DateTime date = DateTime.now();
  return (date.year - birthYear) as int;
}

// anonymouse functions == lambda fuctions

// optional named arguments args
void sayBebeTimes2({n, word}) {
  for (int i = 0; i < n; i++) {
    print(word ?? 'bebe');
  }
}

// optional positioned arguments args
// respect positions
void sayBebeTimes3([n, word]) {
  for (int i = 0; i < n; i++) {
    print(word ?? 'bebe');
  }
}

num sum(args) {
  num sum = 0;
  for (num ar in args) {
    sum += ar;
  }
  return sum;
}

void main(List<String> args) {
  print(getDate());
  print(calculateAge(1999));
  print(calculateAge);
  print(calculateAge.runtimeType);
  sayBubu();
  sayBebeTimes2(n: 11);
  sayBebeTimes2(word: "eee", n: 3);
  sayBebeTimes3(10, "HHH");

  print(sum([2, 7, 88, 44.9]));
}
