import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:todo_list/app/core/exception/auth_exception.dart';
import 'package:google_sign_in/google_sign_in.dart';
import './i_user_repository.dart';

class UserRepository implements IUserRepository {
  final FirebaseAuth _firebaseAuth;

  UserRepository({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;

  @override
  Future<User?> register(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        final loginTypes =
            await _firebaseAuth.fetchSignInMethodsForEmail(email);

        if (loginTypes.contains('password')) {
          throw AuthException(message: 'E-mail ja cadastrado.');
        } else {
          throw AuthException(message: 'E-mail cadastrado com Google');
        }
      } else {
        throw AuthException(message: e.message ?? 'Erro ao cadastra-se');
      }
    }
  }

  @override
  Future<User?> login(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user;
    } on PlatformException catch (e) {
      throw AuthException(message: e.message ?? 'Error ao realizar login');
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          throw AuthException(message: 'Usuario nao cadastrado');
        case 'wrong-password':
          throw AuthException(message: 'Senha invalida');
      }
      throw AuthException(message: e.message ?? 'Error ao realizar login');
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      final loginMethods =
          await _firebaseAuth.fetchSignInMethodsForEmail(email);

      if (loginMethods.contains('password')) {
        await _firebaseAuth.sendPasswordResetEmail(email: email);
      } else if (loginMethods.contains('google')) {
        throw AuthException(message: 'Cadastro realizado com Google');
      } else {
        throw AuthException(message: 'E-mail não cadastrado');
      }
    } on PlatformException catch (e) {
      throw AuthException(message: e.message ?? 'Error ao reseta senha');
    }
  }

  @override
  Future<User?> logout() async {
    await GoogleSignIn().signOut();
    _firebaseAuth.signOut();
    return null;
  }
}
