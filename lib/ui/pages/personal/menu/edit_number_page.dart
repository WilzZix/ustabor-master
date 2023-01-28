import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/contants.dart';

class EditNumberPgae extends StatefulWidget {
  const EditNumberPgae({super.key});

  @override
  State<EditNumberPgae> createState() => _EditNumberPgaeState();
}

class _EditNumberPgaeState extends State<EditNumberPgae> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            Center(child: _textWidget('Изменение пароля')),
            SizedBox(
              height: 40.h,
            ),
            _filedText('Введите текущий пароль'),
            SizedBox(height: 16.h,),
            _filedText('Введите новый пароль'),
              SizedBox(height: 16.h,),
            _filedText('Повторно введите новый пароль'),
            SizedBox(height: 24.h,),
            _button()
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

Widget _filedText( String? hintText) {
  return Container(
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
  
}
Widget _button( ) {
  return Container(
    height: 48.h,
    width: 311.w,
    decoration: BoxDecoration(
        color: Color(0xffE0E0E0,),
      
        borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text('Войти',
          style: TextStyle(
            color: Color(0xffffffff,),
            fontWeight: W600
, fontSize: 14.sp
          ),),
        )
  );
  
}
