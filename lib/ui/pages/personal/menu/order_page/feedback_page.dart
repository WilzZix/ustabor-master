import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/contants.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _clearButton(context),
                ],
              ),
              Center(child: _textWidget('Оценка заказчика')),
              SizedBox(
                height: 36.h,
              ),
              _textName('Виктор Ермоленко'),
              SizedBox(
                height: 27.h,
              ),
              RatingBar.builder(
                initialRating: 0,
                itemSize: 30,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                height: 32.h,
              ),
              _textName('Отзыв о заказчике'),
              SizedBox(
                height: 8.h,
              ),
              _filedText('Добавьте коментарий о заказе'),
              SizedBox(
                height: 20.h,
              ),
              _textName('Пожалуйста укажите стоимость услуг'),
              SizedBox(
                height: 8.h,
              ),
              _filedType('Стоимость услуг'),
              SizedBox(
                height: 24.h,
              ),
              _textName('Коментарий'),
              SizedBox(
                height: 8.h,
              ),
              _filedText('Как мы можем стать лучше?'),
              SizedBox(
                height: 30.h,
              ),
              InkWell(onTap: () {}, child: _button('Отправить отзыв'))
            ],
          ),
        ),
      ),
    );
  }
}

Widget _clearButton(context) {
  return InkWell(
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
        borderRadius: BorderRadius.circular(21),
      ),
      child: const Center(
        child: Icon(
          Icons.arrow_left,
          size: 28,
        ),
      ),
    ),
  );
}

Widget _textWidget(String txt) {
  return Text(
    txt,
    style: TextStyle(color: A4, fontWeight: W400, fontSize: 22.sp),
  );
}

Widget _textName(String txt) {
  return Text(
    txt,
    style: TextStyle(color: A4, fontWeight: W600, fontSize: 12.sp),
  );
}

Widget _button(String text) {
  return InkWell(
    onTap: () {
      
    },
    child: Container(
      height: 48.h,
      decoration: BoxDecoration(
          boxShadow: [], color: Green, borderRadius: BorderRadius.circular(8)),
      child: Center(
          child: Text(text,
              style: TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp))),
    ),
  );
}

Widget _filedText(String? hintText) => Container(
      //  height: 48.h,
      decoration: BoxDecoration(
          // border: Border.all(
          //   color: Color(0xffE0E0E0),
          // ),
          borderRadius: BorderRadius.circular(8)),
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 4,
        //  minLines: 1,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: A4.withOpacity(.5), fontWeight: W400, fontSize: 14.sp),
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
Widget _filedType(String? hintText) => Container(
      //  height: 48.h,
      decoration: BoxDecoration(
       
          borderRadius: BorderRadius.circular(8)),
      child: TextField(
        decoration: InputDecoration(
        
         hintStyle: TextStyle(color: A4.withOpacity(.5), fontWeight: W400, fontSize: 14.sp),
        
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
