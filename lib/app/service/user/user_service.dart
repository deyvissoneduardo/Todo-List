import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_list/app/repository/user/user_repository.dart';

import './i_user_service.dart';

class UserService implements IUserService {
  final UserRepository _userRepository;

  UserService({required UserRepository userRepository})
      : _userRepository = userRepository;

  @override
  Future<void> forgotPassword(String email) =>
      _userRepository.forgotPassword(email);

  @override
  Future<User?> login(String email, String password) =>
      _userRepository.login(email, password);

  @override
  Future<User?> logout() => _userRepository.logout();

  @override
  Future<User?> register(String email, String password) =>
      _userRepository.register(email, password);
}
