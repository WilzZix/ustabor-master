import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usta_bor_app/ui/pages/personal/info_page/add_button.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  bool isTrue = true;
  List addImges = [];
  List images = [
    'assets/Rectangle1.png',
    'assets/Rectangle2.png',
    'assets/Rectangle3.png',
  ];
  bool isChecked = false;
  List itemsName = [
    'Инфо',
    'Кошелек',
    'Промо',
    'Работы',
    'Отзывы',
    'Чат',
  ];
  List skilsName = [
    'Ремонт под ключ',
    'Гипсокартон',
    'Ванные комнаты',
    'Ванные комнаты',
    'Ванные комнаты',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        
           Text('О мастере:',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700)),
           SizedBox(
            height: 18.h,
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/iccity.svg',
                height: 21.h,
                width: 16.w,
              ),
               SizedBox(
                width: 10.h,
              ),
               Text('Узбекистан, Бухара',
                  style: TextStyle(
                    color:  Color(0xff4A4A4A),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400
                  ))
            ],
          ),
           SizedBox(
            height: 17.h
          ),
          Row(
            children: [
              Container(
                  height: 22.h,
                  width: 19.w,
                  decoration: BoxDecoration(
                      color: Color(0xff2F2F2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text('10', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),),
                  )),
              SizedBox(
                width: 9.h,
              ),
              Text('просмотров профиля',
                  style: TextStyle(
                    color: Color(0xff4A4A4A),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400
                  ))
            ],
          ),
         SizedBox(
            height: 9.h,
          ),
          Row(
            children: [
                            Container(
                  height: 22.h,
                  width: 19.w,
                  decoration: BoxDecoration(
                      color: Color(0xff2F2F2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text('10', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),),
                  )),
               SizedBox(
                width: 12.h,
              ),
              Text('запросов контакта',
                  style: TextStyle(
                    color: Color(0xff4A4A4A),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400
                  ))
             
            ],
          ),
           SizedBox(
            height: 12.h,
          ),
           Text(
              'Ремонт под ключ. Выполняю ремонт под ключ: ванная комната под ключ, отделка стен и потолка, поклейка обоев, кладка кафеля и др. Дизайн интерьера помещений, офисов и домов, кухня на заказ.',
              style: TextStyle(
                color: Color(0xff4A4A4A),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400
              )),
           SizedBox(
            height: 24.h,
          ),
         Text('Специализация:',
              style: TextStyle(
                  color: Color(0xff4A4A4A),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700)),
           SizedBox(
            height: 22.h,
          ),
        
          Wrap(
          direction: Axis.horizontal,
           spacing: 8,
            runSpacing: 8,
            // crossAxisAlignment: WrapCrossAlignment.end,
            // runAlignment: WrapAlignment.spaceBetween,

            children: [
              for (int i = 0; i < skilsName.length + 1; i++)
                i < skilsName.length
                    ? OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color(0xffF2f2f2f2),
                          shape:RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(8)),
                        ),
                        child: Text(
                          skilsName[i],
                          style: TextStyle(color: Color(0xff4A4A4A).withOpacity(.5),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600
                          ),
                        ))
                    : AddButton()
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          GestureDetector(
          onTap: (() {
            setState(() {
              isTrue= !isTrue;
            });
          }),
            child: Row(
              children: [
               isTrue? Text('Показать все',
                    style: TextStyle(
                        color: Color(0xff63C74D), fontWeight: FontWeight.w700, fontSize: 14.sp)):
                        Text('Скрыть все',
                    style: TextStyle(
                        color: Color(0xff63C74D), fontWeight: FontWeight.w700, fontSize: 14.sp)),
                SizedBox(
                  width: 13.w,
                ),
                Icon(
                isTrue?  Icons.arrow_right_outlined:Icons.arrow_drop_up_outlined,
                  size: 20.h,
                  color: Color(0xff63C74D).withOpacity(.4),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            'Услуги и цены:',
            style: TextStyle(
              color: Color(0xff4A4A4A),
              fontWeight: FontWeight.w700, fontSize: 14.sp),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            height: 70.h,
            width: 343.w,
            decoration: BoxDecoration(
                color: Color(0xffFFF0F0),
                borderRadius: BorderRadius.circular(6)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                child: Text(
                  '☝️️  Только услуги с проставленными ценами будут видны заказчикам!',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp,   color: Color(0xff4A4A4A),),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            height: 32.h,
            width: 89.w,
            decoration: BoxDecoration(
                color: Color(0xff2f2f2f2),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Text(
              'Сантехники',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600, color: Color(0xff4A4A4A).withOpacity(.5)),
            )),
          ),
          SizedBox(
            height: 22.h,
          ),
          Container(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical:12 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 16.h,
                          width: 16.w,
                          child: Checkbox(
                            activeColor: Color(0xff63C74D),
                              value: isChecked,
                              onChanged: ((bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              })),
                        ),
                        SizedBox(width:11.h,),
                        Row(
                          children: [
                            Text('Развести трубы',
                            style: TextStyle(
                              color:  Color(0xff4A4A4A),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400
                            ),),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        DottedLine(direction: Axis.horizontal, lineLength: 50),
                        Row(
                          children: [
                            Text('от', style: TextStyle(
                              color:  Color(0xff4A4A4A),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400
                            ),),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                                height: 32.h,
                                width: 81.w,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                )),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text('сўм', style: TextStyle(
                              color:  Color(0xff4A4A4A),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400
                            ),)
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 32.h,
          ),
          Text('Фото проектов:', style: TextStyle(color:Color(0xff4A4AA), fontWeight: FontWeight.w700, fontSize: 14.sp ),),
          SizedBox(height: 16.h,),
          Container(
            // decoration: BoxDecoration(color: Colors.red),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 0,
              runSpacing: 0,
              crossAxisAlignment: WrapCrossAlignment.end,
              runAlignment: WrapAlignment.spaceBetween,
              children: [
                 for (int i = 0; i < images.length+1; i++)
                 i < images.length ? 
                Container(
                  height: 112.h,
                  width: 164.w,
                  child: Image.asset(images[i]),
                ): Container(
                  height: 112.h,
                  width: 164.w,
                  decoration: BoxDecoration(
                    border: Border.all(color:Color(0xff63C74D).withOpacity(.4),
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(child: Text('Смотреть все фото в галерее',
                  style: TextStyle(
                              color:  Color(0xff63C74D),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700
                            ),
                  )),
                )
              ],
            ),
          )
        ]);
  }
}