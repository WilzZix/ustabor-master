import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usta_bor_app/ui/pages/personal/promo_page/promo_page.dart';
import 'package:usta_bor_app/ui/pages/personal/reviews.dart';
import 'package:usta_bor_app/ui/pages/personal/wallet_page.dart/wallet_basic_page.dart';
import 'package:usta_bor_app/ui/pages/personal/work_page.dart';
import 'info_page/info_page.dart';

class CabinetPage extends StatefulWidget {
  const CabinetPage({super.key});

  @override
  State<CabinetPage> createState() => _CabinetPageState();
}

class _CabinetPageState extends State<CabinetPage>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  List itemsName = [
    'Инфо',
    'Кошелек',
    'Промо',
    'Работы',
    'Отзывы',
    'Чат',
  ];
  List svgName = [
    "ic-info",
    "Shape",
    "Group",
    "ic-photos",
    "ic-messages",
    "ic-messages",
  ];
  List selected = [0];
  List skilsName = [
    'Ремонт под ключ',
    'Гипсокартон',
    'Ванные комнаты',
    'Ванные комнаты',
    'Ванные комнаты',
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 48.h,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          height: 68.h,
                          width: 68.w,
                          child: Image.asset('assets/images/second.png'),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Шодмонов Шухрат',
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                RatingBar.builder(
                                  initialRating: 3,
                                  itemSize: 12,
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
                                const SizedBox(
                                  width: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '13',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 11.sp),
                                    ),
                                    Text(
                                      ' отзывов',
                                      style: TextStyle(fontSize: 11.sp),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Текущий баланс:',
                              style: TextStyle(
                                  color: Color(0xff9B9B9B),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '200 000 ',
                                  style: TextStyle(
                                      color: Color(0xff46B25A),
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'сум',
                                  style: TextStyle(
                                      color: Color(0xff7F7F7F),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 48.h,
                          width: 166.w,
                          decoration: BoxDecoration(
                              color: const Color(0xff63C74D),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 13.5.w),
                                Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.white,
                                  size: 22.sp,
                                ),
                                SizedBox(width: 13.5.w),
                                Text('Пополнить',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14.sp))
                              ]),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        _card(
                            title: itemsName[0],
                            svg: "assets/${svgName[0]}.svg",
                            onTap: () {
                              setState(() {
                                index = 0;
                              });
                            },
                            tapped: index == 0),
                        const SizedBox(width: 6),
                        _card(
                            title: itemsName[1],
                            svg: "assets/${svgName[1]}.svg",
                            onTap: () {
                              setState(() {
                                index = 1;
                              });
                            },
                            tapped: index == 1),
                        const SizedBox(width: 6),
                        _card(
                            title: itemsName[2],
                            svg: "assets/${svgName[2]}.svg",
                            onTap: () {
                              setState(() {
                                index = 2;
                              });
                            },
                            tapped: index == 2),
                      ],
                    ),
                    Row(
                      children: [
                        _card(
                            title: itemsName[3],
                            svg: "assets/${svgName[3]}.svg",
                            onTap: () {
                              setState(() {
                                index = 3;
                              });
                            },
                            tapped: index == 3),
                        const SizedBox(width: 6),
                        _card(
                            title: itemsName[4],
                            svg: "assets/${svgName[4]}.svg",
                            onTap: () {
                              setState(() {
                                index = 4;
                              });
                            },
                            tapped: index == 4),
                        const SizedBox(width: 6),
                        _card(
                            title: itemsName[5],
                            svg: "assets/${svgName[5]}.svg",
                            onTap: () {
                              setState(() {
                                index = 5;
                              });
                            },
                            tapped: index == 5),
                      ],
                    ),
                    // Wrap(
                    //   direction: Axis.horizontal,
                    //   spacing: 3.w,
                    //   runSpacing: 3.w,
                    //   children: [
                    //     for (int i = 0; i < itemsName.length; i++)
                    //       OutlinedButton(
                    //           style: OutlinedButton.styleFrom(
                    //               // padding: const EdgeInsets.only(
                    //               //     right: 0, left: 14, top: 0, bottom: 0),
                    //               elevation: 5,
                    //               backgroundColor: Colors.white,
                    //               shape: RoundedRectangleBorder(
                    //                   borderRadius: BorderRadius.circular(8.0)),
                    //               side: BorderSide(
                    //                   color: selected.contains(i)
                    //                       ? Colors.green
                    //                       : Colors.grey)),
                    //           onPressed: () {
                    //             setState(() {
                    //               selected.clear();
                    //               selected.add(i);
                    //               if (selected.contains(i)) {
                    //               } else {}
                    //             });
                    //           },
                    //           child: Container(
                    //             height: 40.h,
                    //             width: 110.w,
                    //             margin: EdgeInsets.symmetric(vertical: 10.h),
                    //             child: Center(
                    //               child: Row(
                    //                 mainAxisAlignment: MainAxisAlignment.start,
                    //                 children: [
                    //                   SvgPicture.asset(
                    //                     "assets/${svgName[i]}.svg",
                    //                     color: selected.contains(i)
                    //                         ? Colors.green
                    //                         : Colors.grey,
                    //                     width: 20.w,
                    //                     height: 20.h,
                    //                   ),
                    //                   SizedBox(width: 10.w),
                    //                   Text(
                    //                     itemsName[i],
                    //                     style: TextStyle(
                    //                         fontSize: 12.sp,
                    //                         color: selected.contains(i)
                    //                             ? Colors.green
                    //                             : Colors.grey),
                    //                   )
                    //                 ],
                    //               ),
                    //             ),
                    //           )),
                    //   ],
                    // ),
                    const SizedBox(height: 14),
                    _widget[index],
                  ],
                ),
              ),
            )));
  }

  List<Widget> get _widget => [
        const InfoPage(),
        const WalletBasic(),
        const PromoPage(),
        const WorkPage(),
        const ReviewsPage(),
        const ReviewsPage(),
      ];

  _card(
      {required String title,
      required String svg,
      required Function() onTap,
      required bool tapped}) {
    return Expanded(
      child: Container(
        height: 40,
        //  padding: EdgeInsets.symmetric(horizontal: 8),
        margin: EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: tapped ? Colors.green : Colors.grey)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(8),
            child: Row(children: [
              SizedBox(
                width: 8.w,
              ),
              SvgPicture.asset(svg, color: tapped ? Colors.green : Colors.grey),
              const SizedBox(width: 10),
              Text(title,
                  style: TextStyle(
                    color: tapped ? Colors.green : Colors.grey,
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
