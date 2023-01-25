import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usta_bor_app/ui/pages/personal/wallet_page.dart/wallet_page_one.dart';
import 'package:usta_bor_app/ui/pages/personal/wallet_page.dart/wallet_page_two.dart';

class WalletBasic extends StatefulWidget {
  const WalletBasic({super.key});

  @override
  State<WalletBasic> createState() => _WalletBasicState();
}

class _WalletBasicState extends State<WalletBasic>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            height: 49.h,
            width: 343.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffF9F9f9)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 4, left: 4),
                  child: TabBar(
                    
                      indicatorWeight: 2,
                      indicator: BoxDecoration(
                          color: Color(0xffFFFFFFF),
                          borderRadius: BorderRadius.circular(5)),
                      unselectedLabelColor: Color(0xff4A4A4A).withOpacity(.5),
                   labelColor: Color(0xff4A4A4A),
                  // unselectedLabelColor: Colors.red,
                      controller: _tabController,
                      tabs: [
                        Tab(
                            child: Text('Пополнение кошелька',
                                style: TextStyle(
                                 //   color: Color(0xff4A4A4A),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600))),
                        Tab(
                           child: Center(
                          child: Text('История транзакций',
                              style: TextStyle(
                                //  color: Color(0xff4A4A4A),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600)),
                        )),
                          
                        
                      ]),
                )
              ],
            ),
          ),
          Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: [WalletPageOne(), Second_page()]))
        ],
      ),
    );
  }
}
