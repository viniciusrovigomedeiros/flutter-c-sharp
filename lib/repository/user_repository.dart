import 'package:dio/dio.dart';

import '../model/user_model.dart';

class UserRepository {
  final Dio dio = Dio();

  Future<List<UserModel>> getAllUsers() async {
    final response = await dio.get('http://192.168.0.65/api/Usuario');

    List<UserModel> users = [];

    print(response.data);
    users = List.from(response.data.map((char) {
      return UserModel.fromMap(char);
    }));

    return users;
  }

  Future<String> addUser(UserModel user) async {
    var data = {
      "name": user.name,
      "email": user.email,
      "password": user.password,
      "id": 0
    };
    final response = await dio.post(
      'http://192.168.0.65/api/Usuario/',
      data: data,
    );

    return response.data;
  }
}
