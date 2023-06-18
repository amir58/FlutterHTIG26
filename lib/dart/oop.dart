// OOP
// Class , Function , Variables
// Class => Container ( Function , Variables )
// Object => Copy of class

// class ClassName { Function , Variables }
// ClassName objectName = ClassName();
// var objectName = ClassName();
// final objectName = ClassName();
// const objectName = ClassName();

// DataType variableName = value ;
// String firstName = "Amir";
// int    age       = 20    ;

// dataType functionName( parameters ) { bodyFunction }
// void printMyName(){ print("Amir"); }


import 'package:flutter26/dart/person.dart';

void main() {
  var order1 = Order(
    id: 1,
    details: 'd',
  );

  order1.printOrderData();
  print(order1.getOrderStatus());
  order1.changeOrderStatus2("Rejected");
  order1.changeOrderStatus3("Accepted");
  order1.changeOrderStatus5(orderStatus: "ON_THE_WAT");
  order1.changeOrderStatus6(orderStatus: 'REFUSED');
  order1.changeOrderStatus7(orderStatus: "FINISHED");
  print(order1.getOrderStatus());

  order1.namedParameters(text: "text", hint: "hint");
  order1.defaultParameters("t");

  print('------------------');
  Person person = Person(
    "Ahmed",
    "20",
  );
  print(person.getName());
  person.setName("Ali");
  print(person.getName());
  print(person.name);
  person.name = "Aziz";
  print(person.name);
}

class Order {
  int id = 0;
  late String details;
  String? status;
  late String date;

  Order({required this.id, required this.details, this.status});

  Order.writeName({
    required this.id,
    required this.details,
    this.status,
    required this.date,
  }) {}

  void printOrderData() {
    // ??=
    details = "iPhone";

    // status = "Requested";
    // status ??= "Accepted";
    //
    // print(status!.length);
    // print(status!.isEmpty);
    // print(status!.isNotEmpty);
    // print(status!.toLowerCase());
    // print(status!.toUpperCase());

    print(id);
    print(details);
    if (status != null) {
      print(status);
      print(status ?? "Non Null");
    }
  }

  // DataType functionName ( parameters => variables ) { body }
  // void functionName ( parameters => variables ) { body }

  void printOrderStatus() {
    print(status);
  }

  String getOrderStatus() {
    return status ?? "Order Status Unknown";
  }

  String getOrderStatus2() => status ?? "Order Status Unknown";

  int getOrderId() {
    return id;
  }

  int getOrderId2() => id;

  void changeOrderStatus(String orderStatus) {
    status = orderStatus;
  }

  void changeOrderStatus2(String orderStatus) => status = orderStatus;

  void changeOrderStatus3([String orderStatus = ""]) {
    status = orderStatus;
  }

  void changeOrderStatus4([String orderStatus = ""]) => status = orderStatus;

  void changeOrderStatus5({String orderStatus = ""}) => status = orderStatus;

  void changeOrderStatus6({required String orderStatus}) =>
      status = orderStatus;

  void changeOrderStatus7({String? orderStatus}) {
    status = orderStatus;
  }

  void defaultParameters(String text, [String hint = ""]) {}

  void namedParameters({required String text, String hint = ""}) {}
}
