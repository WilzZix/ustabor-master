part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class LoginPressed extends AuthEvent {
  final String login;
  final String password;
  final String language;

  LoginPressed({
    required this.login,
    required this.password,
    required this.language,
  });
}

