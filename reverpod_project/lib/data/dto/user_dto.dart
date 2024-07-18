import '../../domain/entities/user.dart';

class UserDTO extends User {
  UserDTO({required super.id, required super.name, required super.email});

  factory UserDTO.fromJson(Map<String, dynamic> json) {
    return UserDTO(id: json['id'], name: json['name'], email: json['email']);
  }
}
