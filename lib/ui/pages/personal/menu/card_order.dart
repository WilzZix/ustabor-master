import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/contants.dart';

class CardOrder extends StatefulWidget {
  const CardOrder({super.key});

  @override
  State<CardOrder> createState() => _CardOrderState();
}

class _CardOrderState extends State<CardOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Card(),
            SizedBox(
              height: 16.h,
            ),
            Card(),
            SizedBox(
              height: 16.h,
            ),
            Card(),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168.h,
      decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          _activeContainer(),
                          SizedBox(
                            width: 6.w,
                          ),
                          _id('ID', '35885')
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      _textMaster('Установить сантехнику'),
                      SizedBox(
                        height: 14.h,
                      ),
                      _sum('10 000', 'сум'),
                    ],
                  ),
                  _textDate('22.04  2020')
                ]),
          ),
          Divider(),
          _bottoRow('Срок заявки истек')
        ],
      ),
    );
  }
}

Widget _id(String id, String number) {
  return Row(
    children: [
      Text(
        id,
        style: TextStyle(
            color: Color(0xffC0C0C0), fontWeight: W600, fontSize: 14.sp),
      ),
      SizedBox(
        width: 2.w,
      ),
      Text(
        number,
        style: TextStyle(
            color: Color(0xff000000), fontWeight: W400, fontSize: 14.sp),
      )
    ],
  );
}

Widget _textDate(String number) {
  return Container(
    alignment: Alignment.topRight,
    child: Text(
      number,
      style: TextStyle(
          color: Color(0xff000000), fontWeight: W400, fontSize: 14.sp),
    ),
  );
}

Widget _activeContainer() {
  return Container(
    height: 16.h,
    width: 75.w,
    decoration:
        BoxDecoration(color: Green, borderRadius: BorderRadius.circular(8)),
    child: Center(
      child: Text(
        'АКТИВНА',
        style: TextStyle(
            color: Color(0xffffffff),
            fontWeight: FontWeight.bold,
            fontSize: 11.sp),
      ),
    ),
  );
}

Widget _textMaster(String number) {
  return Container(
    child: Text(
      number,
      style: TextStyle(
          color: Color(0xff3333333), fontWeight: W400, fontSize: 18.sp),
    ),
  );
}

Widget _sum(String id, String number) {
  return Row(
    children: [
      Text(
        id,
        style: TextStyle(
            color: Color(0xff333333), fontWeight: W600, fontSize: 14.sp),
      ),
      SizedBox(
        width: 2.w,
      ),
      Text(
        number,
        style: TextStyle(
            color: Color(0xff000000), fontWeight: W400, fontSize: 14.sp),
      )
    ],
  );
}

Widget _bottoRow(
  String text,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/active.png',
          height: 28.h,
          width: 24.w,
          fit: BoxFit.contain,
        ),
        Text(
          text,
          style: TextStyle(
              color: Color(0xffC0C0C0), fontWeight: W600, fontSize: 16.sp),
        ),
        Icon(
          Icons.settings,
        )
      ],
    ),
  );
}
