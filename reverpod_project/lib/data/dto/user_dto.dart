import '../../domain/entities/user.dart';

class UserDTO extends User {
  UserDTO({required super.id, required super.name, required super.email});

  // Factory 생성자를 통해 json을 매개변수로 받아 UserDTO를 바로 반환할 수 있음
  factory UserDTO.fromJson(Map<String, dynamic> json) {
    return UserDTO(id: json['id'], name: json['name'], email: json['email']);
  }
}
