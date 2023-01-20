import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:usta_bor_app/ui/pages/auth_page/auth_page.dart';
import 'package:usta_bor_app/ui/pages/main_page/main_page.dart';

Future<void> setup({Widget? firstPage}) async {
  await _registerUtils();

  await _registerHome();
}

Future<void> _registerUtils() async {

}

Future<void> _registerHome() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('auth');

  String id = await box.get('id', defaultValue: '');
  if (id.isEmpty) {
    home = const AuthPage();
  } else {
    home = const MainPage();
  }

}

Widget home = const AuthPage();