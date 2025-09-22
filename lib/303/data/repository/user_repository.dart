import 'package:dio/dio.dart';
import 'package:venhancer_education/303/data/model/user_model.dart';
import 'package:venhancer_education/303/data/repository/i_user_repository.dart';
import 'package:venhancer_education/303/utils/sample_mixins.dart';

class UserRepository with CheckConnection implements IUserRepository {
  @override
  Future<UserModel?> fetchUser() async {
    if (!await checkConnection()) {
      return null;
    }

    try {
      final dio = Dio();
      Response response;
      response = await dio.get("https://randomuser.me/api");
      return UserModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }
}
