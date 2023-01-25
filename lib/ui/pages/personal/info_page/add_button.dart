import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddButton extends StatefulWidget {
  const AddButton({super.key});

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  List serachItems=[
    'Ремонт под ключ',
    'Гипсокартон',
    'Электрики',
    'Электрики',
    'Электрики',
    'Электрики',
    'Электрики',
    'Электрики',
    'Электрики',
    'Электрики',
    'Электрики',
    'Электрики',
    'Электрики',
    'Электрики',


  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 5),
        height: 32.h,
        width: 32.w,
        decoration: BoxDecoration(
            color: Color(0xff63C74D), borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      shape:const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(8))),
                    isScrollControlled: true,
                      context: context,
                      builder: ((context) {
                        return DraggableScrollableSheet(
                            expand: false,
                            builder: ((context, scrollController) {
                              return SingleChildScrollView(
                                controller: scrollController,
                                child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Container(
                                      height: 4.h,
                                      width: 32.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xffD8D8D8),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                    ),
                                     SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Добавление категории',
                                style: TextStyle(
                                    color: Color(0xff4A4A4A),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width:6.w,
                              ),
                              InkWell(
                                onTap: (() {
                                  Navigator.pop(context);
                                }),
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.clear,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 24.h,),
                          Container(
                            height: 48.h,
                            width: 343.w,
                            child: TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.search),
                                suffixIconColor: Color(0xff63C74D),
                                hintText: 'Быстрый поиск',
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))
                              ),
                            ),
                          ),
                          SizedBox(height: 32.h,),
                           Wrap(
            direction: Axis.horizontal,
           spacing: 8,
            runSpacing: 8,
            // crossAxisAlignment: WrapCrossAlignment.end,
            // runAlignment: WrapAlignment.spaceBetween,
            children: [
              for (int i = 0; i < serachItems.length; i++)
                 OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Color(0xffF2f2f2f2),
                          shape:RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(8)),
                        ),
                        child: Text(
                          serachItems[i],
                          style: TextStyle(color: Color(0xff4A4A4A).withOpacity(.5),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600
                          ),
                        ))
                    
            ],
          ),
          SizedBox(height: 84.h,),
          Container(
            height: 48.h,
            width: 343.w,
            decoration: BoxDecoration(
              color: Color(0xffE0E0E0),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Center(
              child: Text('Добавить',
              style: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.w600,
                fontSize: 14.sp
              ),),
              
            ),
          ),
          SizedBox(height: 48.h,),
          Center(child: Text('Отменить',
          style: TextStyle(
            color: Color(0xff63C74D),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600
          ),))


                                  ],
                                ),
                              );
                            }));
                      }));
                },
                child: const Icon(
                  Icons.add,
                  color: Color(0xffffffff),
                  size: 30,
                ))));
  }
}
