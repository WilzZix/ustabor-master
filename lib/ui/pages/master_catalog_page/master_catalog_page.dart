import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usta_bor_app/ui/pages/personal/reviews.dart';

import 'components/TabBarItem/components/information_tab_widget.dart';
import 'components/header_widget.dart';
import 'components/TabBarItem/tab_bar_widget.dart';

class MasterCatalogPage extends StatefulWidget {
  const MasterCatalogPage({Key? key}) : super(key: key);

  @override
  State<MasterCatalogPage> createState() => _MasterCatalogPageState();
}

class _MasterCatalogPageState extends State<MasterCatalogPage>
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
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverToBoxAdapter(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    'assets/images/Back-mob.svg',
                    alignment: Alignment.centerLeft,
                  ),
                ),
              ),
              const HeaderWidget(),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 16.h,
                ),
              ),
            ];
          },
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TabBar(
                  indicatorColor: const Color(0xff63C74D),
                  physics: const BouncingScrollPhysics(),
                  controller: tapController,
                  isScrollable: true,
                  tabs: [
                    Tab(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/ic-info.svg'),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Информация',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'Open Sans',
                                color: const Color(0xFF4A4A4A),
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/ic-reviews.svg'),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Отзывы',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'Open Sans',
                                color: const Color(0xFF4A4A4A),
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/ic-photos.svg'),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Фото работ',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'Open Sans',
                                color: const Color(0xFF4A4A4A),
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: TabBarView(controller: tapController, children: [
                    const InformationTabWidget(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: const ReviewsPage(),
                    ),
                    const Tab(child: Text('Нет фото')),
                  ]),
                )

                // TabBarWidget(),
                // const InformationTabWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
