import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/contants.dart';

class TabOnePage extends StatefulWidget {
  const TabOnePage({super.key});

  @override
  State<TabOnePage> createState() => _TabOnePageState();
}

class _TabOnePageState extends State<TabOnePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _textName('Раздел','Строительный')
      ],

    );
  }
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