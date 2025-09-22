import 'package:flutter/material.dart';
import 'package:venhancer_education/303/data/model/user_model.dart';
import 'package:venhancer_education/303/data/repository/user_repository.dart';
import 'package:venhancer_education/303/utils/snackbar_mixin.dart';

class UserVM extends ChangeNotifier with SnackBars {
  bool isLoading = false;

  Future<void> fetchUser(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    UserRepository rp = UserRepository();
    final UserModel? result = await rp.fetchUser();
    infoSnackbar(context);
    isLoading = false;
    notifyListeners();
  }
}
