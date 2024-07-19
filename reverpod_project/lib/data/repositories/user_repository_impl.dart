import 'dart:convert';
import 'package:reverpod_project/domain/entities/user.dart';
import 'package:reverpod_project/domain/repositories/user_repository.dart';
import 'package:http/http.dart' as http;
import '../dto/user_dto.dart';

// Domain Layer의 UseCase에 있는 UserRepository(추상 클래스)를 상속
class UserRepositoryImpl extends UserRepository {
  final http.Client client;

  UserRepositoryImpl(this.client);

  @override
  Future<List<User>> getUsers() async {
    final response = await client.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> userList = json.decode(response.body);
      return userList.map((json) => UserDTO.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users.');
    }
  }
}
