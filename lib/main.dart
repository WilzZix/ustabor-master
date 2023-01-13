import 'package:flutter/material.dart';
import 'package:usta_bor_app/pages/auth_page/auth_page.dart';
import 'package:usta_bor_app/pages/catalog/catalog_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:usta_bor_app/pages/login_page/login_page.dart';
import 'package:usta_bor_app/pages/main_page/main_page.dart';
import 'package:usta_bor_app/pages/master_catalog_page/master_catalog_page.dart';
import 'package:usta_bor_app/pages/registration/registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MasterCatalogPage(),
        );
      },
    );
  }
}
