import 'dart:convert';

class UsuarioModel {
  final String email;
  final String senha;
  final String nome;
  final int id;

  UsuarioModel({
    required this.email,
    required this.senha,
    required this.nome,
    required this.id,
  });

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    return UsuarioModel(
      email: map['email'] ?? '',
      senha: map['senha'] ?? '',
      nome: map['nome'] ?? '',
      id: map['id'] ?? '',
    );
  }
}
