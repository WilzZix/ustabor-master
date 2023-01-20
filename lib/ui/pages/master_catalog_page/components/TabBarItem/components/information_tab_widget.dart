import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InformationTabWidget extends StatelessWidget {
  const InformationTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24.h,
            ),
            Text(
              'О мастере:',
              style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: const Color(0xFF4A4A4A)),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/images/ic-city.svg'),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  'Узбекистан, Бухара',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF4A4A4A),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Ремонт под ключ. Выполняю ремонт под ключ: ванная комната под ключ, отделка стен и потолка, поклейка обоев, кладка кафеля и др. Дизайн интерьера помещений, офисов и домов, кухня на заказ.',
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
                color: const Color(0xFF4A4A4A),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Специализация:',
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w700,
                color: const Color(0xFF4A4A4A),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 48.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Color(0xFFE0E0E0)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Гипсокартон',
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
                      width: 8.w,
                    ),
                    Container(
                      height: 48.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Color(0xFFE0E0E0)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Гипсокартон',
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
                      width: 8.w,
                    ),
                    Container(
                      height: 48.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Color(0xFFE0E0E0)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            'Гипсокартон',
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
                      width: 8.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 48.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Color(0xFFE0E0E0)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Гипсокартон',
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
                      width: 8.w,
                    ),
                    Container(
                      height: 48.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: Color(0xFFE0E0E0)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Гипсокартон',
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
                      width: 8.w,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Услуги и цены:',
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w700,
                color: const Color(0xFF4A4A4A),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              height: 48.h,
              width: 122.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Color(0xFFE0E0E0)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Гипсокартон',
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
              height: 16.h,
            ),
            Row(
              children: [
                Text(
                  'Выравнивание стен',
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 4.w,
                ),
                const Text('_ _ _ _ _ _ _ _ _ _ _'),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  'от 30 000 сўм',
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(
              'Фото проектов:',
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w700,
                color: const Color(0xFF4A4A4A),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/rectangle_1459.svg'),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      height: 112.h,
                      width: 164.w,
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
                          'Смотреть все \nфото в галерее',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF63C74D),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              height: 48.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Color(0xFFE0E0E0)),
              child: Center(
                child: Text(
                  '📌  Пользователь с 2021 года,\nпоследний логин 30.08.2021 в 01:38',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF4A4A4A),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
