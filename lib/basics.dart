void main() {
  print("Hello World!");

  print('Hello Flutter Course!');

  // String, int , bool , double

  String name = "Amir";

  int age = 20;
  bool developer = true;
  double number = 1.6;

  const String name2 = "";
  final String name3 = "";
  final name4 = "";
  const name5 = "";
  var name6 = "";

  print(name2);

  // - , + , * , / , %
  // < , > , <= , >=
  // == , !=
  // && , ||
  // ++ , --
  // is , is!
  // += , -= , *= , /= , %=
  // ? :
  // ( condition ) ? ( true ) : ( false )

  // ! , ?? , ??= ( Null Safety )

  bool isNameString = name is String;

  print(isNameString);

  bool isNameNotString = name is! String;

  print(isNameNotString);

  //                      ( condition ) ? ( true ) : ( false )
  String isNameString2 = name is String ? "String" : "other data type";
  print(isNameString2);

  double num = 10;
  num = num + 5;

  num += 5;

  num -= 5;

  num /= 5;

  num *= 10;

  num %= 5;

  print(num);

  // files & packages ( folder ) => file_name small_letters_with_under_scores
  // Class = ClassName
  // variables , functions = camelCase variableName , functionName
  // var = _ $
  var $varName;
  var _varName;
  // var #varName;

  num;
  print("");

  // if( condition ) {  } else {  }

  var orderStatus = "accepted";

  if (orderStatus == "requested") {
  } else if (orderStatus == "accepted") {
    print('accepted');
  } else if (orderStatus == "rejected" ||
      orderStatus == "canceled" ||
      orderStatus == "refused") {
  } else {
    print('Order Status Unknown');
  }

  var rate = "";

  if (orderStatus == "finished" && rate.isEmpty) {
    // visible rate button
  }

  switch (orderStatus) {
    case "requested":
      {}
      break;
    case "accepted":
      {}
      break;
    default:
      {}
  }

  var dayName = "sunday";

  switch (dayName) {
    case "friday":
    case "saturday":
      {
        print('Enjoy');
      }
      break;
    default:
      {
        print('Work');
      }
  }

  for (int i = 0; i < 10; i++) {
    if (i == 8) {
      break;
    }
    print(i);
    if (i == 5) {
      continue;
    }
    print(i);
  }

  print('-------------------');

  int x = 0;
  while (x > 5) {
    print(x);
    x++;
  }
  print('-------------------');

  int y = 0;
  do {
    print(y);
    y++;
  } while (y > 5);
  print('-------------------');

  List<String> names = ["Amir"];
  List<String> names2 = ["Ali", "Mohamed"];

  names.addAll(names2);
  names.add("Ahmed");
  print(names);

  // names.removeAt(1);
  // names.remove("Amir");
  // names.removeLast();
  // names.removeRange(0, 2);
  // names.removeWhere((element) {
  //   return element == "Amir";
  // });

  print(names.isEmpty);
  print(names.isNotEmpty);

  print(names.first);
  print(names.last);


  print(names);

  // Mr .
  // for (int i = 0; i < names.length; i++) {
  //   names[i] = "Mr . ${names[i]}";
  // }

  var mrNames = names.map((name) => "Mr . $name").toList();

  print(mrNames);

  names = names.reversed.toList();

  print(names);

  print(names.getRange(1, 3));

  print(names.contains("Ali"));

  print('-----------------------');

  String welcomeMessage = "Welcome in flutter course";

  print(welcomeMessage);

  print(welcomeMessage.length);
  // welcomeMessage = welcomeMessage.replaceAll(" ", "");
  print(welcomeMessage);
  print(welcomeMessage.length);

  print(welcomeMessage.isEmpty);
  print(welcomeMessage.isNotEmpty);

  print(welcomeMessage.toUpperCase());
  print(welcomeMessage.toLowerCase());

  print(welcomeMessage.substring(7));
  print(welcomeMessage.substring(7,10));

  String email = " amir@gmai l.com ";
  print(email);
  print(email.length);

  email = email.trim();
  email = email.trimRight();
  email = email.trimLeft();

  email = email.replaceAll(" ", "");
  print(email.length);

  // 01116036522
  // 0111 6036 522
  // 00201116036522
  // 002 0111 6036 522
  // +20111 6036 522
  // +201116036522

  String phoneNumber = "002 0111 6036 522";

  if (phoneNumber.startsWith("002")) {
    phoneNumber = phoneNumber.replaceFirst("002", "");
  }
  if (!phoneNumber.startsWith("+2")) {
    phoneNumber = "+2$phoneNumber";
  }
  phoneNumber = phoneNumber.replaceAll(" ", "");

  print(phoneNumber);

  print(phoneNumber == "01116036522");
}
