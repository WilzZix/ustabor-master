import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../catalog/catalog_page.dart';

class RegistrationVerify extends StatefulWidget {
  const RegistrationVerify({Key? key}) : super(key: key);

  @override
  State<RegistrationVerify> createState() => _RegistrationVerifyState();
}

class _RegistrationVerifyState extends State<RegistrationVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/images/Back-mob.svg'),
                Center(
                  child: Text(
                    'Регистрация',
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
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Имя Фамилия',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 2, color: Color(0xFFE0E0E0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Электронная почта',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 2, color: Color(0xFFE0E0E0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: '+998',
                    prefixIcon: Icon(Icons.phone),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 2, color: Color(0xFFE0E0E0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                const TextField(
                  decoration: InputDecoration(
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
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Подтвердить пароль',
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CatalogPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Color(0xFFE0E0E0)),
                    child: Center(
                      child: Text(
                        'Далее',
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
                        color: Color(0xFF4A4A4A)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
