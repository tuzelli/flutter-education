import 'package:venhancer_education/303/data/model/user_model.dart';

abstract class IUserRepository {
  Future<UserModel?> fetchUser();
}
