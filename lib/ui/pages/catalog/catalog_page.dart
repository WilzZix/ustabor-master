import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usta_bor_app/ui/pages/master_catalog_page/master_catalog_page.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              const AppBarWidget(),
              SizedBox(
                height: 24.h,
              ),
              const HeaderWidget(),
              SizedBox(
                height: 16.h,
              ),
              const AdsItem(),
              SizedBox(
                height: 16.h,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.white),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  child: Column(
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MasterCatalogPage(),
                            ),
                          );
                        },
                        child: Row(
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
                                        borderRadius:
                                            BorderRadius.circular(4.r),
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
                                        borderRadius:
                                            BorderRadius.circular(4.r),
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
                            Container(
                              height: 48.h,
                              width: 48.w,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF63C74D)),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child:
                                    SvgPicture.asset('assets/images/phone.svg'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 32.h,
                            width: 89.w,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF2F2F2),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Сантехники',
                                  style: TextStyle(color: Color(0xFF4A4A4A)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Container(
                            height: 32.h,
                            width: 121.w,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF2F2F2),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Ванные комнаты',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xFF4A4A4A)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Container(
                            height: 32.h,
                            width: 84.w,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF2F2F2),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Отопление',
                                style: TextStyle(color: Color(0xFF4A4A4A)),
                              ),
                            ),
                          ),
                        ],
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
                          const Text('_ _ _ _ _ _ _ _ _'),
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
                        height: 8.h,
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
                          const Text('_ _ _ _ _ _ _ _ _'),
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
                        height: 8.h,
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
                          const Text('_ _ _ _ _ _ _ _ _'),
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
                        height: 24.h,
                      ),
                      Container(
                        height: 64.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 96.w,
                              height: 64.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Image.asset('assets/images/therd.png'),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Container(
                              width: 96.w,
                              height: 64.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Image.asset('assets/images/therd.png'),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Container(
                              width: 96.w,
                              height: 64.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Image.asset('assets/images/therd.png'),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Container(
                              width: 96.w,
                              height: 64.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Image.asset('assets/images/therd.png'),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AdsItem extends StatelessWidget {
  const AdsItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: const Color(
                0xFFFFB64E,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
                      child: Image.asset('assets/images/first.png'),
                    ),
                    Text(
                      'СП ООО \nGRAND ROAD TASHKENT',
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp),
                    ),
                    Container(
                      height: 48.h,
                      width: 48.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFF63C74D)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset('assets/images/phone.svg'),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  height: 188.h,
                  width: 311.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(6.r)),
                  child: Image.asset('assets/images/track_image.png'),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 16.h,
            width: 88.w,
            decoration: BoxDecoration(
              color: const Color(0xFFFFB64E),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Center(
              child: Text(
                'РЕКЛАМА',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 11.sp),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Все мастера',
          style: TextStyle(
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: const Color(0xFF4A4A4A),
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF2F2F2),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(
              10.r,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              '7 250',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                  fontFamily: 'Open Sans'),
            ),
          ),
        ),
      ],
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset('assets/images/filter.svg'),
                            Text(
                              'Фильтр',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Open Sans',
                                  fontSize: 22.sp),
                            ),
                            Container(
                              height: 48.h,
                              width: 48.w,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ], shape: BoxShape.circle, color: Colors.white),
                              child: Icon(
                                Icons.close,
                                size: 20.w,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return SingleChildScrollView(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.w),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/Back-mob.svg'),
                                              Text(
                                                'Выбор категории',
                                                style: TextStyle(
                                                    fontFamily: 'Open Sans',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 22.sp),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 28.h,
                                          ),
                                          Container(
                                            height: 38.h,
                                            child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                Container(
                                                  height: 38.h,
                                                  width: 122.w,
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF63C74D),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.r)),
                                                  child: Center(
                                                      child: Text(
                                                    'Популярные',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: 'Open Sans',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.sp),
                                                  )),
                                                ),
                                                SizedBox(
                                                  width: 8.w,
                                                ),
                                                Container(
                                                  height: 38.h,
                                                  width: 75.w,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(
                                                              0xFF63C74D)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.r)),
                                                  child: Center(
                                                      child: Text(
                                                    'Строй',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF63C74D),
                                                        fontFamily: 'Open Sans',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.sp),
                                                  )),
                                                ),
                                                SizedBox(
                                                  width: 8.w,
                                                ),
                                                Container(
                                                  height: 38.h,
                                                  width: 75.w,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(
                                                              0xFF63C74D)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.r)),
                                                  child: Center(
                                                      child: Text(
                                                    'Авто',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF63C74D),
                                                        fontFamily: 'Open Sans',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.sp),
                                                  )),
                                                ),
                                                SizedBox(
                                                  width: 8.w,
                                                ),
                                                Container(
                                                  height: 38.h,
                                                  width: 75.w,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(
                                                              0xFF63C74D)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.r)),
                                                  child: Center(
                                                      child: Text(
                                                    'Техника',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF63C74D),
                                                        fontFamily: 'Open Sans',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.sp),
                                                  )),
                                                ),
                                                SizedBox(
                                                  width: 8.w,
                                                ),
                                                Container(
                                                  height: 38.h,
                                                  width: 75.w,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(
                                                              0xFF63C74D)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.r)),
                                                  child: Center(
                                                      child: Text(
                                                    'Строй',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF63C74D),
                                                        fontFamily: 'Open Sans',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.sp),
                                                  )),
                                                ),
                                                SizedBox(
                                                  width: 8.w,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 34.h,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/ic-kitchen.svg'),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                'Кухни',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF4A4A4A)),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/ic-kitchen.svg'),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                'Ванные комнаты',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF4A4A4A)),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/ic-kitchen.svg'),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                'Гипсокартон',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF4A4A4A)),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/ic-kitchen.svg'),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                'Электрики',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF4A4A4A)),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/ic-kitchen.svg'),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                'Двери',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF4A4A4A)),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/ic-kitchen.svg'),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                'Камины',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF4A4A4A)),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/ic-kitchen.svg'),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                'Ландшафтный дизайн',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF4A4A4A)),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/ic-kitchen.svg'),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                'Лестницы',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF4A4A4A)),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/ic-kitchen.svg'),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                'Маляры - Штукатуры',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF4A4A4A)),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/ic-kitchen.svg'),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text(
                                                'Кухни',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF4A4A4A)),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            height: 48.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(
                                  0xFFE0E0E0,
                                ),
                              ),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 16.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/images/ic-filter-sort.svg'),
                                      SizedBox(
                                        width: 16.w,
                                      ),
                                      const Text('Все категории')
                                    ],
                                  ),
                                  SvgPicture.asset('assets/images/arrow.svg')
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Container(
                          height: 48.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(
                                0xFFE0E0E0,
                              ),
                            ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 16.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/ic-filter-city.svg'),
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                    const Text('Все города')
                                  ],
                                ),
                                SvgPicture.asset('assets/images/arrow.svg')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Container(
                          height: 48.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(
                                0xFFE0E0E0,
                              ),
                            ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 16.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/ic-filter-sort-1.svg'),
                                    SizedBox(
                                      width: 16.w,
                                    ),
                                    const Text('По популярности')
                                  ],
                                ),
                                SvgPicture.asset('assets/images/arrow.svg')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Container(
                          height: 48.h,
                          decoration: BoxDecoration(
                            color: const Color(0xFF63C74D),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Center(
                            child: Text(
                              'Найти',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 48.h,
                        ),
                        Text(
                          'Очистить',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFBDBDBD),
                              fontFamily: 'Open Sans'),
                        )
                      ],
                    ),
                  );
                });
          },
          child: Container(
            height: 48.h,
            width: 48.w,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ], shape: BoxShape.circle, color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: SvgPicture.asset(
                'assets/images/filter.svg',
              ),
            ),
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        Container(
          height: 48.h,
          width: 279.w,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.w, horizontal: 16.w),
              hintText: 'Быстрый поиск',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  // height: 40.h,
                  // width: 40.w,
                  decoration: BoxDecoration(
                    color: const Color(0xFF63C74D),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
