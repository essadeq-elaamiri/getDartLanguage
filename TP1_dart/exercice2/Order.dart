import 'Client.dart';

enum OrderStatus { COMPLITED, INPROGRESS, DELIVERED }

class Order {
  String refernce;
  DateTime date;
  Client client;
  OrderStatus orderStatus;

  Order(this.refernce, this.date, this.client, this.orderStatus);

  @override
  String toString() {
    return ''' 
    {
      "refernce": $refernce,
      "date": ${date.toIso8601String()},
      "orderStatus": $orderStatus,
      "client" : ${client.toString()}

    }
    ''';
  }
}
