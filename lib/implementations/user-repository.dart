import '../models/user.dart';
import '../repositories/user-repository.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class UserRepositoryImplementation implements UserRepository {
  @override
  Future<List<User>> getAll() async {
    var data =
        await http.get(Uri.https('randomuser.me', "api", {"results": "20"}));
    var jsonData = json.decode(data.body);
    List<User> users = [];
    var results = jsonData["results"];
    for (var item in results) {
      User user = User(item["name"]["first"], item["email"], item["phone"],
          item["picture"]['large']);
      users.add(user);
    }
    return users;
  }
}
