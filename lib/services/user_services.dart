import 'package:sewa_kost_application/helpers/DBHelper.dart';
import 'package:sewa_kost_application/models/user.dart';

class UserService {
  static const name = 'name';

  DBHelper _dbHelper = DBHelper();

  Future<int> addItem(User item) async {
    //returns number of items inserted as an integer

    final db = await _dbHelper.init(); //open database
    final sql =
        '''INSERT INTO users(name, username, email, password, nik) VALUES (?,?,?,?,?)''';
    List<dynamic> params = [
      item.name,
      item.username,
      item.email,
      item.password,
      item.nik,
    ];
    final result = await db.rawInsert(sql, params);
    return result;
  }

  Future<User?> getLogin(String user, String password) async {
    var dbClient = await _dbHelper.init();
    var res = await dbClient.rawQuery(
        "SELECT * FROM users WHERE email = '$user' and password = '$password'");
    var todos;
    if (res.length > 0) {
      todos = User.fromMap(res.first);
    } else {
      todos = null;
    }

    return todos;
  }
}
