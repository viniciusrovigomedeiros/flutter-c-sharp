import 'package:dio/dio.dart';

import 'model.dart';

class UsuarioRepository {
  final Dio dio;

  UsuarioRepository({
    required this.dio,
  });

  List<UsuarioModel> usuarios = [];

  Future<List<UsuarioModel>> getAllUsers() async {
    final response = await dio.get('http://192.168.0.65/api/Usuario/');

    usuarios = List.from(response.data.map((user) {
      return UsuarioModel.fromMap(user);
    }));

    print(response);
    return usuarios;
  }
}
