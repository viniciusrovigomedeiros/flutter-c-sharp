class UserModel {
  final int id;
  final String name;
  final String password;
  final String email;

  UserModel(
    this.id,
    this.name,
    this.password,
    this.email,
  );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'password': password,
      'email': email,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      map['id'] as int,
      map['nome'] as String,
      map['senha'] as String,
      map['email'] as String,
    );
  }
}
