import 'package:dio/dio.dart';
import 'package:venhancer_education/303/data/model/user_model.dart';
import 'package:venhancer_education/303/data/repository/i_user_repository.dart';

class UserRepository implements IUserRepository {
  @override
  Future<UserModel?> fetchUser() async {
    try {
      final dio = Dio();
      final response = await dio.get("https://randomuser.me/api");
      return UserModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }
}
