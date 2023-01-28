import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/contants.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/edit_number_page.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _clearButton(context),
                ],
              ),
              _personalWidget(context),
              SizedBox(
                height: 24.h,
              ),
              _textField(
                'Имя',
                null,
                null,
              ),
              _textField(
                  'Номер телефона',
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EditNumberPgae()),
                            );
                          }),
                          child: Text(
                            'Изменить',
                            style: TextStyle(
                                color: Green,
                                fontWeight: W600,
                                fontSize: 14.sp),
                          )),
                      Icon(
                        Icons.arrow_right_outlined,
                        size: 24,
                        color: Green.withOpacity(.4),
                      ),
                    ],
                  ),
                  null),
              _textField(
                'Город',
                Icon(
                  Icons.arrow_drop_down,
                  size: 24,
                  color: Green,
                ),
                null,
              ),
              _textField(
                'Регион',
                Icon(
                  Icons.arrow_drop_down,
                  size: 24,
                  color: Green,
                ),
                null,
              ),
              _textField(
                'Опыт работы',
                Icon(
                  Icons.arrow_drop_down,
                  size: 24,
                  color: Green,
                ),
                null,
              ),
              _textField('Обо мне', null, 'Добавьте короткий рассказ о себе'),
              SizedBox(
                height: 24.h,
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Изменить пароль',
                        style: TextStyle(
                            color: Green, fontWeight: W600, fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Icon(
                        Icons.arrow_right_outlined,
                        size: 24,
                        color: Green.withOpacity(.4),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Center(
                child: InkWell(
                  child: Container(
                    height: 48.h,
                    width: 311.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: Green),
                    child: Center(
                      child: Text(
                        'Сохранить',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: W600,
                            fontSize: 14.sp),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48.h,
              ),
              Center(
                child: Text(
                  'Отменить изменения',
                  style: TextStyle(
                      color: Color(0xffBDBDBD),
                      fontWeight: W600,
                      fontSize: 14.sp),
                ),
              )
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
          Icons.clear,
          size: 22,
        ),
      ),
    ),
  );
}

Widget _personalWidget(context) {
  return Column(
    children: [
      Text(
        'Редактирование профиля',
        style: TextStyle(color: A4, fontWeight: W400, fontSize: 22.sp),
      ),
      SizedBox(
        height: 40.h,
      ),
      Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                ),
                child: Image.asset('assets/images/second.png',
                    fit: BoxFit.contain),
              ),
              Container(
                alignment: Alignment.center,
                //margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffffffff), width: 4),
                  color: Green,
                  borderRadius: BorderRadius.circular(21),
                ),
                child: Icon(
                  Icons.add_outlined,
                  size: 24.sp,
                  color: Color(0xffffffff),
                ),
              )
            ],
          ),
          SizedBox(
            width: 24.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.55),
                child: Text(
                  'Загрузите фото профиля или лого компании',
                  style: TextStyle(
                    color: A4,
                    fontWeight: W400,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              InkWell(
                onTap: (() {}),
                child: Container(
                  height: 39.h,
                  width: 134.w,
                  decoration: BoxDecoration(
                      color: Green, borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      'Загрузить',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: W600,
                          fontSize: 14.sp),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      )
    ],
  );
}

Widget _textField(String txt, Widget? suffixIcon, String? hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 12.h,
      ),
      _textWidget(txt),
      SizedBox(
        height: 8.h,
      ),
      Container(
        height: 48.h,
        child: TextField(
          autofocus: false,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  color: A4.withOpacity(.4), fontWeight: W400, fontSize: 14.sp),
              suffixIcon: suffixIcon,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
        ),
      )
    ],
  );
}

Widget _textWidget(String txt) {
  return Text(
    txt,
    style: TextStyle(color: A4, fontWeight: W400, fontSize: 12.sp),
  );
}
