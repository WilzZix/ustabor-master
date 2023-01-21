import 'package:flutter/material.dart';
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
            height: 60,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TabBar(
                      indicatorWeight: 2,
                      indicator: BoxDecoration(
                          color: Color(0xffFFFFFFF),
                          borderRadius: BorderRadius.circular(10)),
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.black,
                      controller: _tabController,
                      tabs: const [
                        Tab(
                          text: 'Пополнение кошелька',
                        ),
                        Tab(
                          text: 'История транзакций',
                        )
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
