import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:usta_bor_app/ui/pages/personal/promo_page/moda_sheet.dart';

class PromoPage extends StatefulWidget {
  const PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  bool isOn = true;
  @override
  Widget build(BuildContext context) {
    return Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 24.h,
          ),
          InkWell(
            onTap: (() {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(8))),
                  builder: (context) => SizedBox(
                    height: 680.h,
                    child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(children: [
                              SizedBox(
                                height: 8.h,
                              ),
                              Container(
                                width: 32.w,
                                height: 4.h,
                                decoration: BoxDecoration(
                                    color: Color(0xffD8D8D8),
                                    borderRadius: BorderRadius.circular(2)),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 40.w,
                                  ),
                                  Text(
                                    'Как привлечь клиентов?',
                                    style: TextStyle(
                                        color: Color(0xff4A4A4A),
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  // SizedBox(
                                  //   width: 6.w,
                                  // ),
                                  InkWell(
                                    onTap: (() {
                                      Navigator.pop(context);
                                    }),
                                    child: Container(
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffFFFFFF),
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.clear,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Container(
                                height: 57.h,
                                // width: 343.w,
                                decoration: BoxDecoration(
                                    color:
                                        const Color(0xff63C74D).withOpacity(.2),
                                    borderRadius: BorderRadius.circular(6)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 24),
                                        child: Image.asset(
                                          'assets/number.png',
                                          height: 40.h,
                                          width: 37.w,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          '👍  Качественные фотографии',
                                          style: TextStyle(
                                              color: Color(0xff4A4A4A),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Container(
                                height: 231.h,
                                // width: 343.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6)),
                                child: Image.asset(
                                  'assets/promo_one.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff4A4A4A),
                                      ),
                                      children: const [
                                    TextSpan(
                                      text:
                                          'Загружайте только качественные фотографии, в горизонтальной ориентации, размером не меньше 1000х600 пикселей.',
                                      style:
                                          TextStyle(fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                        text:
                                            ' Больше информации о фото можно найти'),
                                    TextSpan(
                                      text: ' здесь.',
                                      style: TextStyle(
                                          color: Color(0xff63C74D),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(
                                        text:
                                            'Также у вас есть возможность заказать услуги фотографа, который поможет вам сделать качественные фотографии ваших проектов. '),
                                  ])),
                              SizedBox(
                                height: 16.h,
                              ),
                              InkWell(
                                onTap: (() {
                                  setState(() {
                                    isOn = !isOn;
                                  });
                                }),
                                child: Row(
                                  children: [
                                    isOn
                                        ? Text('Читать далее',
                                            style: TextStyle(
                                                color: const Color(0xff63C74D),
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14.sp))
                                        : Text('Скрыть все',
                                            style: TextStyle(
                                                color: Color(0xff63C74D),
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14.sp)),
                                    SizedBox(
                                      width: 13.w,
                                    ),
                                    Icon(
                                      isOn
                                          ? Icons.arrow_right_outlined
                                          : Icons.arrow_drop_up_outlined,
                                      size: 20.h,
                                      color:
                                          const Color(0xff63C74D).withOpacity(.4),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              ModalSheet(),
                              SizedBox(
                                height: 48.h,
                              ),
                              Container(
                                height: 57.h,
                                //   width: 343.w,
                                decoration: BoxDecoration(
                                    color: Color(0xff63C74D).withOpacity(.2),
                                    borderRadius: BorderRadius.circular(6)),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 24),
                                        child: Image.asset(
                                          'assets/two_number.png',
                                          height: 40.h,
                                          width: 37.w,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40.w,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          '👍  Продвижение услуг',
                                          style: TextStyle(
                                              color: Color(0xff4A4A4A),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              Container(
                                height: 231.h,
                                //  width: 343.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6)),
                                child: Image.asset(
                                  'assets/promo_two.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(
                                height: 16.h,
                              ),
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Color(0xff4A4A4A),
                                      ),
                                      children: const [
                                    TextSpan(
                                      text:
                                          'Повышайте свою популярность и делитесь своими работами с аудиторией. Используйте социальные сети для продвижения своих услуг. Более детально про рекламу в соц сетях читайте',
                                      style:
                                          TextStyle(fontWeight: FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text: ' здесь.',
                                      style: TextStyle(
                                          color: Color(0xff63C74D),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    TextSpan(
                                        text:
                                            ' Мы можем предложить услуги профессиональных маркетологов для'),
                                  ])),
                            ]),
                          ),
                        ),
                  ));
            }),
            child: Container(
              height: 96.h,
              width: 343.w,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow()],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, bottom: 16, right: 10),
                child: Row(children: [
                  Image.asset(
                    'assets/Rectangle.png',
                    fit: BoxFit.contain,
                    height: 64.h,
                    width: 96.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Text(
                        'Посмотрите подробное руководство по продвижению ваших проектов'),
                  )
                ]),
              ),
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
          Text(
            'Выберите категорию для продвижения',
            style: TextStyle(
                color: Color(0xff4A4A4A),
                fontSize: 12.sp,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 8.h,
          ),
          Container(
            height: 48.h,
            width: 343.w,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffE0E0E0)),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //SizedBox(width: 16.w,),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Выбрать категорию',
                    style: TextStyle(
                        color: Color(0xff4A4A4A),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  width: 161.w,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xff63C74D),
                  size: 30.sp,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            height: 48.h,
            width: 343.w,
            decoration: BoxDecoration(
              color: Color(0xff63C74D),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
                child: Text(
              'Отправить на модерацию',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffffffffff)),
            )),
          ),
          SizedBox(
            height: 32.h,
          ),
          Row(
            children: [
              Text(
                'Продвигаемые категории',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff4A4A4A)),
              ),
              SizedBox(
                width: 8.w,
              ),
              Container(
                  height: 19.h,
                  width: 19.w,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      '10',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff4A4A4A)),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            width: 343.w,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Container(
                              height: 32.h,
                              width: 126.w,
                              decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text('Фасадные работы',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            Color(0xff4A4A4A).withOpacity(.5))),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text('на модерации',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff4A4A4A).withOpacity(.5))),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Цена за клик:',
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff9B9B9B))),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text('5 000 sum',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff4BB15E)))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ]);
  }
}
