import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  height: 68.h,
                  width: 68.w,
                  child: Image.asset('assets/images/second.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Шодмонов Шухрат',
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 12,
                          color: Color(0xFFFFB346),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        const Icon(
                          Icons.star,
                          size: 12,
                          color: Color(0xFFFFB346),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        const Icon(
                          Icons.star,
                          size: 12,
                          color: Color(0xFFFFB346),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        const Icon(
                          Icons.star,
                          size: 12,
                          color: Color(0xFFFFB346),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        const Icon(
                          Icons.star,
                          size: 12,
                          color: Color(0xFFE0E0E0),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          '13',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                            fontSize: 11.sp,
                            color: const Color(
                              0xFF4A4A4A,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'отзывов',
                          style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                            fontSize: 11.sp,
                            color: const Color(
                              0xFFBDBDBD,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 16.h,
                          width: 36.w,
                          decoration: BoxDecoration(
                            color: const Color(0xFF63C74D),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Center(
                            child: Text(
                              '24/7',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Open Sans',
                                  fontSize: 11.sp),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Container(
                          height: 16.h,
                          width: 104.w,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF3A44),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          child: Center(
                            child: Text(
                              'Срочный вызов',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Open Sans',
                                  fontSize: 11.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/badge_1.svg'),
                      SizedBox(
                        width: 8.w,
                      ),
                      SvgPicture.asset('assets/images/badge_2.svg'),
                      SizedBox(
                        width: 8.w,
                      ),
                      SvgPicture.asset('assets/images/badge_3.svg'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/images/share.svg'),
                SizedBox(
                  width: 16.w,
                ),
                Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: const Color(0xFF63C74D)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: SvgPicture.asset('assets/images/phone.svg'),
                        ),
                        SizedBox(
                          width: 36.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 75.w),
                          child: Text(
                            'Контакт мастера',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
