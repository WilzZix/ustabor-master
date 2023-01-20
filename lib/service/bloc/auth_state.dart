part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class LoginnedBefore extends AuthState {
  final String token;

  LoginnedBefore(this.token);
}

class LoginLoaded extends AuthState {
  final LoginModel user;

  LoginLoaded(this.user);
}

class LoginLoading extends AuthState {}

class LoginFailed extends AuthState {
  final String error;

  LoginFailed(this.error);
}
