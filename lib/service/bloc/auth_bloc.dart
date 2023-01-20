import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:usta_bor_app/service/const.dart';
import 'package:usta_bor_app/service/models/login_model.dart';
import 'package:usta_bor_app/service/repository/auth_repository.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository repository = AuthRepository();

  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>(
      (event, emit) async {
        if (event is LoginPressed) {
          await _emitLoginPressed(event, emit);
        }
      },
    );
  }

  Future<void> _emitLoginPressed(
    LoginPressed event,
    Emitter<AuthState> emit,
  ) async {
    print('WORKED HERE');
    emit(LoginLoading());

    try {
      if (kDebugMode) {
        print('PASSWORD IS ${event.password}');
        print('LOGIN IS ${event.login}');
      }

      LoginModel response =
          await repository.login(event.login, event.password, event.language);

      if (kDebugMode) {
        print('PASSWORD IS ${event.password}');
      }
      saveUser(response.result.userId.toString());
      emit(
        LoginLoaded(response),
      );
    } catch (err) {
      if (kDebugMode) {
        print('ERROR BLOC is $err');
      }

      emit(LoginFailed('error'));
    }
  }
}
