import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/contants.dart';

class CustomerFeedback extends StatefulWidget {
  const CustomerFeedback({super.key});

  @override
  State<CustomerFeedback> createState() => _CustomerFeedbackState();
}

class _CustomerFeedbackState extends State<CustomerFeedback> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (() {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8))),
              isScrollControlled: true,
              context: context,
              builder: ((context) {
                return SizedBox(
                  height: 764.h,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                
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
                              SizedBox(
                                width: 40.w,
                              ),
                              _topText(),
                              InkWell(
                                onTap: (() {
                                  Navigator.pop(context);
                                }),
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(.1),
                                          spreadRadius: 5,
                                          blurRadius: 5)
                                    ],
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.clear,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          _master(),
                          SizedBox(
                            height: 14.h,
                          ),
                          _feedbackText(),
                          SizedBox(
                            height: 159.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _textName('Дополнительный комментарий'),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          _filedText(
                              'Добавьте комментарий, он также отобразится в профиле клинета'),
                          SizedBox(
                            height: 32.h,
                          ),
                          _button(),
                          SizedBox(
                            height: 48.h,
                          ),
                          _bottomText()
                        ],
                      ),
                    ),
                  ),
                );
              }));
        }),
        child: _conatiner('Посмотреть Отзыв'));
  }
}

Widget _topText() {
  return Text(
    'Заказ услуги',
    textAlign: TextAlign.center,
    style: TextStyle(
        color: const Color(0xff4A4A4A),
        fontSize: 20.sp,
        fontWeight: FontWeight.w400),
  );
}

Widget _feedbackText() {
  return Container(
    child: Text(
      'Работать с Викторией было легко и продуктивно!Быстро согласовали задачу и приступили к выполнению. В процессе, все вопросы решались оперативно и без долгих утверждений. Могу рекомендовать Викторю как обязательного и порядочного заказчика 👍',
      style: TextStyle(color: A4, fontWeight: W400, fontSize: 14.sp),
    ),
  );
}

Widget _conatiner(String text) {
  return Container(
    height: 40.h,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
          color: Colors.grey.withOpacity(.1), spreadRadius: 5, blurRadius: 5)
    ], color: Color(0xffffffff), borderRadius: BorderRadius.circular(8)),
    child: Center(
        child: Text(text,
            style: TextStyle(
                color: A4, fontWeight: FontWeight.w500, fontSize: 12.sp))),
  );
}

Widget _button() {
  return Container(
    height: 48.h,
    
    decoration: BoxDecoration(
        color: Color(0xff63C74D), borderRadius: BorderRadius.circular(8)),
    child: Center(
      child: Text(
        'Добавить',
        style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600),
      ),
    ),
  );
}

Widget _bottomText() {
  return Center(
    child: Text(
      'Отменить',
      style:
          TextStyle(color: Green, fontSize: 14.sp, fontWeight: FontWeight.w600),
    ),
  );
}

Widget _master() {
  return Row(
    children: [
      Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        height: 40.h,
        width: 40.w,
        child: Image.asset('assets/images/second.png'),
      ),
      SizedBox(
        width: 10.w,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Шодмонов Шухрат',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '17.08.2016',
                style: TextStyle(
                    color: Color(0xffBDBDBD),
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp),
              ),
              SizedBox(
                width: 10.w,
              ),
              RatingBar.builder(
                initialRating: 3,
                itemSize: 16,
                minRating: 4,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 2),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
        ],
      )
    ],
  );
}

Widget _textName(String txt) {
  return Text(
    txt,
    style: TextStyle(color: A4, fontWeight: W400, fontSize: 12.sp),
  );
}

Widget _filedText(String? hintText) => Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 5,
        //  minLines: 1,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: A4.withOpacity(.5), fontWeight: W400),
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
