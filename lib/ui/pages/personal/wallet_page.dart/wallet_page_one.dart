import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletPageOne extends StatefulWidget {
  const WalletPageOne({super.key});

  @override
  State<WalletPageOne> createState() => _WalletPageOneState();
}

class _WalletPageOneState extends State<WalletPageOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32.h,),
        Text('Введите сумму пополнения (сум)', style: TextStyle(color: Color(0xff4A4A4A), fontSize: 12.sp, fontWeight: FontWeight.w400),),
        SizedBox(height:8.h),
        Container(
          width: 343.w,
          height: 48.h,
          child:TextField(
            decoration: InputDecoration(
             border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
             )
            ),
          ),
        ),
        SizedBox(height: 20.h,),
        Text('Выберите платежную систему', style: TextStyle(color: Color(0xff4A4A4A), fontSize: 12.sp, fontWeight: FontWeight.w400),),
        SizedBox(height:8.h),
         
         ExpansionTile(
          textColor: Colors.black,
          collapsedTextColor: Colors.black,
          collapsedIconColor: Colors.green,
          iconColor: Colors.green,
          title: Text('Click'),
          
         children: [
          ListTile(title: Text('Humo'),),
          ListTile(title: Text('AnorBank'),),
          ListTile(title: Text('Uzcard'),),
         ],),
         SizedBox(height: 24.h,),
         InkWell(
          onTap: (() {
            
          }),
           child: Container(
            height: 48.h,
            width: 343.w,
            decoration: BoxDecoration(
              color: Color(0xff63C74D),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Center(child: Text('Пополнить Кошелек', 
            style: TextStyle(color: Color(0xffffffff), fontSize: 14.sp, fontWeight: FontWeight.w600),)),
           ),
         )

      ],
    );
  }
}