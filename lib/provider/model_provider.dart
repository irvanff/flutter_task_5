import 'package:flutter/foundation.dart';

import '/model/user.dart';

class ModelProvider extends ChangeNotifier {
  final List<Users> _list = <Users>[];

  List<Users> get users => _list;

  void addUser(Users user) {
    _list.add(user);
    notifyListeners();
  }

  void editUser(int index, Users user) {
    _list[index] = user;
    notifyListeners();
  }

  void deleteUser(int index) {
    _list.removeAt(index);
    notifyListeners();
  }
}
