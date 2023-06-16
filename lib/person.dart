class Person {
  // variables public , private
  String? _name;
  String? _age;

  Person(this._name, this._age);

  String get name => _name ?? "";

  set name(String value) => _name = value;

  String getName() {
    return _name ?? "";
  }

  void setName(String name) {
    if (name.length == 1) {
      print('Invalid name');
      return;
    }
    _name = name;
  }

}
