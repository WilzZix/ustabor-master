import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModalSheet extends StatefulWidget {
  const ModalSheet({super.key});

  @override
  State<ModalSheet> createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8))),
            isScrollControlled: true,
            context: context,
            builder: ((context) {
              return DraggableScrollableSheet(
                  expand: false,
                  builder: ((context, scrollController) {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox( width: 40.w,),
                                Text(
                                  
                                  'Заказ услуги',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff4A4A4A),
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w400),
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
                            SizedBox(
                              height: 24.h,
                            ),
                            Container(
                             
                              height: 48.h,
                           //   width: 343.w,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        color: Color(0xff4A4A4A).withOpacity(.4),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp),
                                    hintText: 'Ваш контактный телефон',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8))),
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Container(
                              
                              height: 112.h,
                             // width: 343.w,
                              child: TextField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 6,
                                minLines: 4,
                                decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                        color: Color(0xff4A4A4A).withOpacity(.4),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp),
                                    hintText:
                                        'Опишите что вам нужно сфотографировать',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8))),
                              ),
                            ),
                            SizedBox(height: 16.h,),
                            Container(
                              height: 48.h,
                             // width: 343.w,
                              decoration: BoxDecoration(
                                color: Color(0xff63C74D),
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(
                                child: Text('Отправить',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600
                                ),),
                              ),
                            ),
                            SizedBox(height: 48.h,),
                            Center(
                              child: Text('Отмена',
                              style: TextStyle(
                                    color: Color(0xffBDBDBD),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600
                                  ),),
                            )
                          ],
                        ),
                      ),
                    );
                  }));
            }));
      }),
      child: Container(
        height: 48.h,
        width: 343.w,
        decoration: BoxDecoration(
            color: Color(0xff63C74D), borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            'Заказать услуги фотографа',
            style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 14.sp,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
