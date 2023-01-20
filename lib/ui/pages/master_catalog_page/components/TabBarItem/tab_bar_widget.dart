import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TabBarWidget extends StatefulWidget {
  TabBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SizedBox(
          height: 41.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    tabIndex = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/ic-info.svg'),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Информация',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Open Sans',
                              color: const Color(0xFF4A4A4A),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    tabIndex == 0
                        ? Container(
                            height: 2.h,
                            width: 151.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color(0xFF63C74D),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    tabIndex = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/ic-reviews.svg'),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Отзывы',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Open Sans',
                              color: Color(0xFF4A4A4A),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    ),
                    tabIndex == 1
                        ? Container(
                            height: 2.h,
                            width: 151.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color(0xFF63C74D),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    tabIndex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/ic-photos.svg'),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Фото работ',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Open Sans',
                              color: Color(0xFF4A4A4A),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    ),
                    tabIndex == 2
                        ? Container(
                            height: 2.h,
                            width: 151.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Color(0xFF63C74D),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
