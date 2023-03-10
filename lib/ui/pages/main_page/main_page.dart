import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:usta_bor_app/ui/pages/personal/cabinet_page.dart';
import 'package:usta_bor_app/ui/pages/personal/menu/person_page.dart';

import '../catalog/catalog_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [CatalogPage(), CabinetPage()];
    void onItemTap(int index) {
      setState(() {
        pageIndex = index;
      });
    }

    return SafeArea(
      child: Scaffold(
        body: pages[pageIndex],
        bottomNavigationBar: CustomBottomNavigationBar(
          onTap: onItemTap,
          page: pageIndex,
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar(
      {super.key, required this.onTap, required this.page});

  final Function(int page) onTap;
  final int page;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10,
      color: Colors.white,
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: CustomBottomNavBarItem(
                isActive: widget.page == 0,
                activeIcon: 'assets/images/ic_personal.svg',
                icon: 'assets/images/ic_personal.svg',
                label: 'Кабинет',
                onPressed: () {
                  widget.onTap(0);
                },
              ),
            ),
            Expanded(
              child: CustomBottomNavBarItem(
                activeIcon: 'assets/images/ic_zayavki.svg',
                isActive: widget.page == 1,
                icon: 'assets/images/ic_zayavki.svg',
                label: 'Мои заявки',
                onPressed: () {
                  widget.onTap(1);
                },
              ),
            ),
            Expanded(
              child: CustomBottomNavBarItem(
                isActive: widget.page == 2,
                activeIcon: 'assets/images/subtract.svg',
                icon: 'assets/images/subtract.svg',
                label: "Каталог",
                onPressed: () {
                  setState(() {
                    // _selectedIndex = 2;
                  });
                },
              ),
            ),
            Expanded(
              child: CustomBottomNavBarItem(
                isActive: widget.page == 3,
                activeIcon: 'assets/images/ic_mastera.svg',
                icon: 'assets/images/ic_mastera.svg',
                label: 'Меню',
                onPressed: (
                  ) {
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const PersonPafe()),
  );
                  setState(() {
                    // _selectedIndex = 3;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomNavBarItem extends StatelessWidget {
  const CustomBottomNavBarItem({
    Key? key,
    required this.isActive,
    required this.activeIcon,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final bool isActive;
  final String activeIcon;
  final String icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    log('Active  $isActive');
    return InkWell(
      onTap: onPressed,
      splashColor: const Color(0xFF63C74D).withOpacity(.1),
      highlightColor: const Color(0xFF63C74D).withOpacity(.1),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 3,
            decoration: BoxDecoration(
                color: isActive ? const Color(0xFF63C74D) : Colors.transparent,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(3),
                  bottomRight: Radius.circular(3),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          SvgPicture.asset(
            isActive ? activeIcon : icon,
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: AppStyle.baseStyle.copyWith(
              color: const Color(0xff000000),
              fontWeight: FontWeight.w600,
              fontSize: 10,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
        ],
      ),
    );
  }
}

const openSans = 'OpenSans';

class AppStyle {
  AppStyle._();

  static const baseStyle = TextStyle(
    color: Color(0xff000000),
    fontSize: 12,
    fontWeight: FontWeight.normal,
    fontFamily: openSans,
  );
}
