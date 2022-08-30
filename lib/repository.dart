import 'package:dio/dio.dart';

import 'model.dart';

class UsuarioRepository {
  final Dio dio;

  UsuarioRepository({
    required this.dio,
  });

  List<UsuarioModel> usuarios = [];

  Future<List<UsuarioModel>> getAllUsers() async {
    try {
      final response = await dio.get<List>('http://192.168.0.65/api/Usuario/');
      print(response);
      return response.data!.map((e) => UsuarioModel.fromMap(e)).toList();
    } on DioError catch (e) {
      print(e);
      rethrow;
    }
    // usuarios = List.from(response.data.map((user) {
    //   return UsuarioModel.fromMap(user);
    // }));
  }

  Future<UsuarioModel> delete(int id) async {
    final response = await dio.delete('http://192.168.0.65/api/Usuario/$id');
    return response.data!.map((e) => UsuarioModel.fromMap(e));
  }
}
