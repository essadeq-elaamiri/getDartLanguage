import 'Order.dart';

class Client {
  String name, address, email, city, phone;
  List<Order> orders = [];

  Client(this.name, this.address, this.email, this.city, this.phone);

  @override
  String toString() {
    String des = '''
    {
      "name": $name,
      "address" : $address,
      "email" : $email,
      "city" : $city,
      "address" : $address,
      "phone": ${phone},
      "orders" :[''';
    for (Order order in orders) {
      des += order.toString();
      if (order == orders[orders.length - 1]) {
        des += ',';
      }
    }

    des += ''']
    }
    ''';
    return des;
  }

  void addOrder(Order c) {
    if (!this.orders.contains(c)) {
      this.orders.add(c);
      return;
    }
    throw new Exception("Order already exists !");
  }

  void deleteOrder(int index) {
    if (index < orders.length) {
      this.orders.remove(index);
    }
    throw new Exception("Index not found");
  }
}
