import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usta_bor_app/ui/pages/main_page/main_page.dart';

import '../../../service/bloc/auth_bloc.dart';
import '../registration/registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AuthBloc bloc = AuthBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider.value(
          value: bloc,
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is LoginFailed) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      state.error,
                      textAlign: TextAlign.center,
                    ),
                    duration: const Duration(seconds: 3),
                    backgroundColor: Colors.redAccent,
                  ),
                );
              }

              if (state is LoginLoaded) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                );
              }
            },
            builder: (context, state) {
              print('STATE IS $state');
              if (state is LoginLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xFF63C74D),
                  ),
                );
              }
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/images/Back-mob.svg'),
                    Center(
                      child: Text(
                        'Вход',
                        style: TextStyle(
                          color: const Color(0xFF4A4A4A),
                          fontWeight: FontWeight.w400,
                          fontSize: 24.sp,
                          fontFamily: 'Open Sans',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    TextField(
                      controller: loginController,
                      decoration: const InputDecoration(
                        hintText: 'Номер телефона',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xFFE0E0E0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        hintText: 'Пароль',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xFFE0E0E0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (loginController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty) {
                          bloc.add(
                            LoginPressed(
                              login: loginController.text,
                              password: passwordController.text,
                              language: 'uz',
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                "Maydonlarni to'ldiring",
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                              duration: Duration(seconds: 3),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: 48.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: const Color(0xFFE0E0E0),
                        ),
                        child: Center(
                          child: Text(
                            'Войти',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Center(
                      child: Text(
                        'Забыли пароль?',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                            fontFamily: 'Open Sans',
                            color: const Color(0xFF4A4A4A)),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
