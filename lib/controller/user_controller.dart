import '../model/user_model.dart';
import '../repository/user_repository.dart';

class UserController {
  final UserRepository userRepo = UserRepository();
  Future<UserModel?> LoginValidation(String email, String password) async {
    List<UserModel> userList = await userRepo.getAllUsers();
    UserModel? user;
    for (UserModel element in userList) {
      if (element.email.toUpperCase() == email.toUpperCase().trim() &&
          element.password.toUpperCase() == password.toUpperCase().trim()) {
        user = element;
      }
    }
    return user;
  }
}
