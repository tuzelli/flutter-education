import 'package:flutter/material.dart';
import 'package:venhancer_education/303/data/repository/user_repository.dart';
import 'package:venhancer_education/303/utils/check_connection.dart';

class UserVM extends ChangeNotifier with CheckConnection {
  bool isLoading = false;
  Future<void> fetchUser() async {
    if (!await checkUserConnection()) {
      return;
    }

    isLoading = true;
    notifyListeners();
    await UserRepository().fetchUser();
    isLoading = false;
    notifyListeners();
  }
}
