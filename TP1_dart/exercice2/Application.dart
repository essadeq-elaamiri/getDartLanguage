import 'Computer.dart';
import 'Category.dart';
import 'Client.dart';
import 'Order.dart';
import 'OrderLine.dart';

void main(List<String> args) {
  //déclarez et intentiez une liste de trois ordinateurs
  List<Computer> computers = [];
  Computer c1 = new Computer('Dell X11', 'DELL', "description", 10000.00, 122);
  Computer c2 = new Computer('HP 441', 'HP', "description", 9000.00, 344);
  Computer c3 = new Computer('MB 32 lazy', 'MB', "description", 23000.00, 9);

  // déclarez et intentiez une catégorie ;
  Category cat1 = new Category("Gamer", "description", computers);

  computers.addAll([c1, c2, c3]);

  //déclarez et intentiez un client ;
  Client client1 =
      new Client("Ahmed Karim", "address", "email", "Casa", "085564554");

  // — déclarez et instanciez une commande du client ;
  Order order1 =
      new Order("66RT", new DateTime.now(), client1, OrderStatus.INPROGRESS);

  //déclarez et instanciez une liste de trois lignes de commandes
  OrderLine orl1 = new OrderLine(13, order1, c1);

  print(orl1);

  print("Category:");
  print(cat1);
}
