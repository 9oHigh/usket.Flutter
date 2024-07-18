import 'package:reverpod_project/domain/entities/user.dart';
import 'package:riverpod/riverpod.dart';
import '../../domain/usecases/user_usecase.dart';

class UserViewModel extends StateNotifier<AsyncValue<List<User>>> {
  final UserUsecase _userUsecase;

  UserViewModel(this._userUsecase) : super(const AsyncValue.loading()) {
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    try {
      state = const AsyncValue.loading();
      final users = await _userUsecase();
      state = AsyncValue.data(users);
    } catch (err, stack) {
      state = AsyncValue.error(err, stack);
    }
  }
}
