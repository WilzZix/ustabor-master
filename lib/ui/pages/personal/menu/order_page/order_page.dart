import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/contants.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/order_page/applications/order_id_page.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/order_page/customer_feedback.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/order_page/feedback_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            Center(child: _textWidget('Мои заказчики')),
            SizedBox(
              height: 24.h,
            ),
            _textName('Виктор Ермоленко'),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OrderIdPage()));
                  },
                  child:
                      Flexible(flex: 1, child: _conatiner('Заявка ID 35 886')),
                ),
                SizedBox(
                  width: 9.w,
                ),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FeedbackPage()));
                  }),
                  child: Flexible(flex: 1, child: _conatiner('Оставить Отзыв')),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _textName('Виктория Зайцева'),
                RatingBar.builder(
                  initialRating: 3,
                  itemSize: 22,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
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
            SizedBox(
              height: 16.h,
            ),
            CustomerFeedback()
          ],
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
    style: TextStyle(color: A4, fontWeight: W600, fontSize: 14.sp),
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
