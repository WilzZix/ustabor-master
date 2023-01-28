import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/contants.dart';

class ExitPage extends StatefulWidget {
  const ExitPage({super.key});

  @override
  State<ExitPage> createState() => _ExitPageState();
}



class _ExitPageState extends State<ExitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 89.h,
        ),
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            'assets/hello.png',
            height: 78.h,
            width: 78.w,
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        Text(
          'Добро пожаловать!',
          style: TextStyle(
            color: A4,
            fontSize: 22.sp,
            fontWeight: W400,
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Text(
            'Вы находитесь в режиме гостя. Войдите или зарегистрируйтесь для поиска работы.',
            style: TextStyle(color: A4, fontWeight: W400, fontSize: 16.sp),
          ),
        ),
        SizedBox(
          height: 42.h,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 48.h,
            width: 279.w,
            decoration: BoxDecoration(
              border: Border.all(color: Green),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'Войти',
                style:
                    TextStyle(color: Green, fontWeight: W600, fontSize: 14.sp),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        InkWell(
          onTap: (() {}),
          child: Container(
            height: 48.h,
            width: 279.w,
            decoration: BoxDecoration(
              color: Green,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'Зарегистрироваться',
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: W600,
                    fontSize: 14.sp),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 75.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/question.png',
                        fit: BoxFit.contain,
                        width: 24.w,
                        height: 24.h,
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        'Как найти клиентов',
                        style: TextStyle(
                            color: Color(0xff4A4A4A),
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_right_outlined,
                    size: 26,
                    color: Color(0xff4A4A4A).withOpacity(.3),
                  )
                ],
              ),
              SizedBox(
                height: 26.h,
              ),
            Row(
              children: [
                  Image.asset(
                'assets/rus.png',
                fit: BoxFit.contain,
                width: 24.w,
                height: 24.h,
              ),
              SizedBox(
                width: 18.w,
              ),
              Text(
                'Русский',
                style: TextStyle(
                    color: Color(0xff4A4A4A),
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp),
              ),
              Icon(
                Icons.arrow_drop_down_outlined,
                size: 26,
                color: Color(0xff4A4A4A).withOpacity(.3),
              )
              ],
            )
            ],
          ),
        )
      ],
    ));
  }
}
