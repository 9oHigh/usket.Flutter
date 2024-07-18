import 'package:reverpod_project/data/repositories/user_repository_impl.dart';
import 'package:reverpod_project/domain/repositories/user_repository.dart';
import 'package:reverpod_project/domain/usecases/user_usecase.dart';
import 'package:reverpod_project/presentation/viewmodels/user_view_model.dart';
import 'package:riverpod/riverpod.dart';
import 'package:http/http.dart' as http;
import '../domain/entities/user.dart';

final httpClientProvider = Provider((ref) => http.Client());

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final client = ref.watch(httpClientProvider);
  return UserRepositoryImpl(client);
});

final userUseCaseProvider = Provider<UserUsecase>((ref) {
  final repository = ref.watch(userRepositoryProvider);
  return UserUsecase(repository);
});

final userViewModelProvider =
    StateNotifierProvider<UserViewModel, AsyncValue<List<User>>>((ref) {
  final userUsecase = ref.watch(userUseCaseProvider);
  return UserViewModel(userUsecase);
});
