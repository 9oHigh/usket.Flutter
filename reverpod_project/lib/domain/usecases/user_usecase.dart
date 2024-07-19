import '../repositories/user_repository.dart';
import '../entities/user.dart';

class UserUsecase {
  final UserRepository repository;
  UserUsecase(this.repository);

  Future<List<User>> call() async {
    return await repository.getUsers();
  }
}