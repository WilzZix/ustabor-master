import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/TabBarItem/components/information_tab_widget.dart';
import 'components/header_widget.dart';
import 'components/TabBarItem/tab_bar_widget.dart';

class MasterCatalogPage extends StatefulWidget {
  const MasterCatalogPage({Key? key}) : super(key: key);

  @override
  State<MasterCatalogPage> createState() => _MasterCatalogPageState();
}

class _MasterCatalogPageState extends State<MasterCatalogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SvgPicture.asset(
                'assets/images/Back-mob.svg',
                alignment: Alignment.centerLeft,
              ),
            ),
            const HeaderWidget(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.h,
              ),
            ),
            TabBarWidget(),

            InformationTabWidget(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
