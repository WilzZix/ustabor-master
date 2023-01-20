import 'package:hive_flutter/hive_flutter.dart';

class ApiConst {
  static String mainApiUrl = 'https://api.bildrlist.com/';
}

Future<void> saveUser(String id) async {
  var box = await Hive.openBox('auth');
  await box.put('id', id);

}
