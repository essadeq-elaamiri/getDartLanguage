import 'Computer.dart';
import 'Order.dart';

import 'Order.dart';
import 'Computer.dart';

class OrderLine {
  int quantity;
  Order order;
  Computer computer;
  num total = 0;

  OrderLine(this.quantity, this.order, this.computer);

  @override
  String toString() {
    return '''
    {
      "quantity": $quantity,
      "order": ${order.toString()},
      "computer": ${computer.toString()}
      "total" : ${computer.getPriceForQuantity(quantity)}
    }
  ''';
  }
}
