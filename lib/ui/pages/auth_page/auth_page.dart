import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usta_bor_app/ui/pages/main_page/main_page.dart';
import 'package:usta_bor_app/ui/pages/registration/registration_page.dart';

import '../login_page/login_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 42.w, vertical: 40.h),
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/images/give_five_auth.png'),
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  'Добро пожаловать!',
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 22.sp),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  'Вы находитесь в режиме гостя. Войдите или зарегистрируйтесьдля поиска работы.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 42.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        width: 2.w,
                        color: const Color(
                          0xFF63C74D,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Войти',
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF63C74D),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegistrationPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xFF63C74D)),
                    child: Center(
                      child: Text(
                        'Зарегистрироваться',
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
                  height: 112.h,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainPage(),
                        ),
                      );
                    },
                    child: SvgPicture.asset('assets/images/close_auth.svg'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
