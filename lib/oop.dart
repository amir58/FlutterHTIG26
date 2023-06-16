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

void main() {
  // final user3 = User();
  // const user4 = User();
  User user1 = User("Ahmed", "011");
  user1.printUserData();

  var user2 = User("Mohamed", "010");
  user2.printUserData();

  var order1 = Order();
  order1.printOrderData();
  print(order1.getOrderStatus());
  order1.changeOrderStatus2("Rejected");
  order1.changeOrderStatus3("Accepted");
  order1.changeOrderStatus5(orderStatus: "ON_THE_WAT");
  order1.changeOrderStatus6(orderStatus: 'REFUSED');
  order1.changeOrderStatus7(orderStatus: "FINISHED");
  print(order1.getOrderStatus());
}

class User {
  // Constructor => Function
  String name = "Amir";
  String phone = "01116036522";

  User(this.name, this.phone);

  void printUserData() {
    print(name);
    print(phone);
  }
}

class Order {
  int id = 0;
  late String details;
  String? status;

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

  void changeOrderStatus6({required String orderStatus}) => status = orderStatus;

  void changeOrderStatus7({String? orderStatus}) {
    status = orderStatus;
  }
}
