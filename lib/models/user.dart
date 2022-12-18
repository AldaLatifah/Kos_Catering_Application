class User {
  // id INTEGER PRIMARY KEY AUTOINCREMENT,
  //       name TEXT,
  //       username TEXT,
  //       email TEXT,
  //       password TEXT,
  //       nik TEXT
  late int _id;
  late final String _name;
  late final String _username;
  late final String _email;
  late final String _password;
  late final String _nik;

  User(this._name, this._username, this._email, this._password, this._nik);

  User.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._username = map['username'];
    this._email = map['email'];
    this._password = map['password'];
    this._nik = map['nik'];
  }

  int get id => _id;
  String get name => _name;
  String get username => _username;
  String get email => _email;
  String get password => _password;
  String get nik => _nik;

  set id(int value) {
    _id = value;
  }

  set name(String value) {
    _name = value;
  }

  set username(String value) {
    _username = value;
  }

  set email(String value) {
    _email = value;
  }

  set password(String value) {
    _password = value;
  }

  set nik(String value) {
    _nik = value;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['username'] = username;
    map['email'] = email;
    map['password'] = password;
    map['nik'] = nik;
    return map;
  }
}
