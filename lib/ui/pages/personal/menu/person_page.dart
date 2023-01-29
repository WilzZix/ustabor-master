import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/edit.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/exit.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/order_page/order_page.dart';

class PersonPafe extends StatefulWidget {
  const PersonPafe({super.key});

  @override
  State<PersonPafe> createState() => _PersonPafeState();
}

class _PersonPafeState extends State<PersonPafe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 60.h),
              Container(
                height: 197.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EditPage()),
                            );
                          }),
                          child: Container(
                            height: 42.h,
                            width: 42.w,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFFF),
                                borderRadius: BorderRadius.circular(21)),
                            child: Image.asset(
                              'assets/edit.png',
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  'assets/images/second.png',
                                  fit: BoxFit.contain,
                                  width: 100.w,
                                  height: 100.h,
                                ),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Text(
                                'Шодмонов Шухрат',
                                style: TextStyle(
                                    color: Color(0xff4A4A4A),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Мастер',
                                style: TextStyle(
                                    color: Color(0xff4A4A4A).withOpacity(.5),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ExitPage()),
                            );
                          },
                          child: Container(
                              height: 42.h,
                              width: 42.w,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xffFFFFFFF),
                                  borderRadius: BorderRadius.circular(100)),
                              child: Image.asset('assets/exitt.png')),
                        )
                      ],
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 43.h,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      
                    },
                    child: Row(
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
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  InkWell(
                    onTap: (() {
                        Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OrderPage()));
                    }),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/master.png',
                              fit: BoxFit.contain,
                              width: 24.w,
                              height: 24.h,
                            ),
                            SizedBox(
                              width: 18.w,
                            ),
                            Text(
                              'Мои заказчики',
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
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  InkWell(
                    onTap: (() {
                      
                    }),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/menu.png',
                              fit: BoxFit.contain,
                              width: 24.w,
                              height: 24.h,
                            ),
                            SizedBox(
                              width: 18.w,
                            ),
                            Text(
                              'Мои заявки',
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
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  InkWell(
                    onTap: (() {
                      
                    }),
                    child: Row(
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
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
