import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/contants.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/order_page/applications/tabs/tab_one.dart';
import 'dart:ui';

class OrderTabs extends StatefulWidget {
  const OrderTabs({super.key});

  @override
  State<OrderTabs> createState() => _OrderTabsState();
}

class _OrderTabsState extends State<OrderTabs>
    with SingleTickerProviderStateMixin {
  late TabController tapController;
  @override
  void initState() {
    tapController = TabController(length: 3, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            indicatorColor: Color(0xff63C74D),
            controller: tapController,
            tabs: [
          Tab(
            child: _tabText('Задача')
          ),
          Tab(
            child: _tabText('Время и цена')
          ),
          Tab(
            child: _tabText('Место работы')
          ),
        ]),
         Container(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(
              controller: tapController, 
              children: [
//SizedBox(height: 24.h,),
Text(
  'xbvxb',
  style: TextStyle(color: A4, fontWeight: W600, fontSize: 14.sp),
),
SizedBox(height: 8.h,),
 Text(
  'sfgfxgxfv',
  style: TextStyle(color: A4.withOpacity(100), fontWeight: W400, fontSize: 14.sp),
),
//Tab(text: 'vxx',),
//Tab(text: 'fvxcvx',)
            
            ]),
          )
      ],
    );
  }
}

Widget _tabText(String txt) {
  return Center(
      child: Text(
    txt,
    style: TextStyle(
        color: Color(0xff4A4A4A), fontSize: 14.sp, fontWeight: FontWeight.w400),
  ));
}
Widget _textName(String txt, String text ) {
  return Column(
    children: [
      SizedBox(height: 24.h,),
      Text(
        txt,
        style: TextStyle(color: A4, fontWeight: W600, fontSize: 14.sp),
      ),
      SizedBox(height: 8.h,),
       Text(
        text,
        style: TextStyle(color: A4.withOpacity(100), fontWeight: W400, fontSize: 14.sp),
      ),
    ],
  );
}