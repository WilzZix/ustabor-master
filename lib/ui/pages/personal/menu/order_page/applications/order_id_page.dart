import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/contants.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/order_page/applications/tabs/order_tabs.dart';

class OrderIdPage extends StatefulWidget {
  const OrderIdPage({super.key});

  @override
  State<OrderIdPage> createState() => _OrderIdPageState();
}

class _OrderIdPageState extends State<OrderIdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _clearButton(context),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _textWidget('Заявка ID 35886'),
                  SizedBox(width: 8.w,),
                  _activeContainer()
                ],
              ),
              SizedBox(height: 16.h,),
              _conatiner(),
              SizedBox(height: 24.h,),
              OrderTabs()
              
      
              
            
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
Widget _filedText( String? hintText) => Container(
    height: 48.h,
    width: 311.w,
    decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffE0E0E0),
        ),
        borderRadius: BorderRadius.circular(8)),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
  );
Widget _conatiner( ) {
  return Container(
    height: 48.h,
    width: 344.w,
    decoration: BoxDecoration(
        color: Color(0xffF9F9F9,),
        borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('+998 990 198 971',
            style: TextStyle(
              color: Green,
              fontWeight: W600
, fontSize: 16.sp
            ),),
            SizedBox(width: 12.w,),
              Text('Константин',
            style: TextStyle(
              color: A4,
              fontWeight: W400
, fontSize: 14.sp
            ),),
          ],
        )
  );
  
} 
Widget _activeContainer(){
  return Container(
    height: 16.h,
    width: 75.w,
    decoration: BoxDecoration(
      color: Green,
      borderRadius: BorderRadius.circular(8)
    ),
    child: Center(
      child: Text ('АКТИВНА',
      style: TextStyle(
        color: Color (0xffffffff),
        fontWeight:FontWeight.bold,
        fontSize: 11.sp
      ),),
    ),
  );
}
