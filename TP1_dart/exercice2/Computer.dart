import 'dart:convert';

import 'Category.dart';

class Computer {
  String name, brand, description;
  num price, storage;
  Category? category = null;
  Computer(this.name, this.brand, this.description, this.price, this.storage);

  @override
  String toString() {
    return '''{
      "name": $name,
      "brand":$brand,
      "description": $description,
      "price": $price,
      "storgae": $storage,
      "Category": ${category.toString()}

    }''';
  }

  num getPriceForQuantity(int q) {
    if (q <= storage) return q * price;
    throw new Exception("Storage below quetity");
  }
}
