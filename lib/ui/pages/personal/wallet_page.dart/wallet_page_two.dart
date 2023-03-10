import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Second_page extends StatefulWidget {
  const Second_page({
    super.key,
  });

  @override
  State<Second_page> createState() => _Second_pageState();
}

// ignore: camel_case_types
class _Second_pageState extends State<Second_page>
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
    return Padding(
      padding: EdgeInsets.only(top: 18.5.h),
      child: Column(children: [
        TabBar(
          indicatorColor: Color(0xff63C74D),
          //labelColor: Colors.black,
          controller: tapController,
          labelPadding: EdgeInsets.zero,
          // isScrollable: true,
          tabs: [
            Tab(
              child: Text(
                'Bce',
                style: TextStyle(
                    color: Color(0xff4A4A4A),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Tab(
              child: Text(
                'Платежи',
                style: TextStyle(
                    color: Color(0xff4A4A4A),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Tab(
              child: Text(
                'Пополнения',
                style: TextStyle(
                    color: Color(0xff4A4A4A),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        Flexible(
          child: TabBarView(controller: tapController, children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 48.h,
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffE0E0E0)),
                              //color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                                child: Text('18.02.2022',
                                    style: TextStyle(
                                        color: Color(0xff4A4A4A),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400))),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.w),
                            color: Color(0xffE0E0E0),
                            height: 2.h,
                            width: 6.w,
                          ),
                          Container(
                            height: 48.h,
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffE0E0E0)),
                              //  color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                                child: Text('18.02.2022',
                                    style: TextStyle(
                                        color: Color(0xff4A4A4A),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400))),
                          ),
                        ],
                      ),
                      Container(
                          height: 48.h,
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffE0E0E0)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'По дате',
                                style: TextStyle(
                                    color: Color(0xff4A4A4A),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xff63C74D),
                                size: 34.sp,
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      4,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Container(
                          width: 343.w,
                          decoration: BoxDecoration(
                            color: Color(0xffF6F6F6),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                    width: 16.w,
                                  ),
                                  Text(
                                    "Услуги фотографа",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 123.w,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 13),
                                    child: Text(
                                      "06:32  Сегодня",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 29.h,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 16.w,
                                  ),
                                  Container(
                                      margin: EdgeInsets.symmetric(vertical: 8),
                                      width: 51.w,
                                      child: Image.network(
                                        "https://financialit.net/sites/default/files/payme.jg",
                                        fit: BoxFit.cover,
                                        errorBuilder: (context, _, __) {
                                          return Image.asset(
                                              'assets/payme.jpg');
                                        },
                                      )),
                                  SizedBox(
                                    width: 74.w,
                                  ),
                                  Text("****4456",
                                      style: TextStyle(
                                          color: Color(0xff152B3D),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400)),
                                  SizedBox(
                                    width: 61.w,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 6),
                                    child: Text("1 200 500",
                                        style: TextStyle(
                                            color: Color(0xff4BB15E),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600)),
                                  )
                                ],
                              ),
                              Row(
                                children: const [],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  /*
                  ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Container(
                            width: 343.w,
                            height: 79.h,
                            decoration: BoxDecoration(
                              color: Color(0xffF9F9F9),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children:  [
                                    SizedBox(height: 10.h, width: 16.w,),
                                    Text(
                                      "Услуги фотографа",
                                      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 123.w,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 13),
                                      child: Text(
                                        "06:32  Сегодня",
                                        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                                 SizedBox(
                                  height: 29.h,
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 16.w,),
                                    Container(
                                      height: 16.h,
                                      width: 51.w,
                                      child: const Image(
                                          image: NetworkImage(
                                              "https://turonbank.uz/bitrix/templates/main/images/cards/payments/payme.png")),
                                    ),
                                    SizedBox(width: 74.w,),
                                     Text("****4456",
                                      style: TextStyle(
                                              color: Color(0xff152B3D),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      width: 61.w,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 6),
                                      child: Text("1 200 500",
                                          style: TextStyle(
                                              color: Color(0xff4BB15E),
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600)),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const [
                                   
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      })),
                      */
                )
              ],
            ),
            Container(
                color: Colors.white54,
                child: Center(
                  child: Text('empty'),
                )),
            const Tab(text: "Cabins"),
          ]),
        )
      ]),
    );
  }
}
