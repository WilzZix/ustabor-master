import 'dart:convert';

import 'package:fk_user_agent/fk_user_agent.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:usta_bor_app/service/const.dart';
import 'package:usta_bor_app/service/models/login_model.dart';

class AuthRepository {
  String _platformVersion = 'Unknown';

  Future<String> initPlatformState() async {
    String platformVersion = '';
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = FkUserAgent.userAgent!;
      print(platformVersion);
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    return platformVersion;
  }

  Future<LoginModel> login(
      String username, String password, String language) async {
    print('WORKED HERE API');

    // _platformVersion = await initPlatformState();
    print('WORKED HERE API');

    var map = <String, dynamic>{};
    map['login'] = username;
    map['password'] = password;
    var body = jsonEncode(map);
    var headers = {
      "Content-Type": "application/json",
      "Api-Access-Key": "PEtQOkwmJyY5NiVgIn18eXYrJmdUY3JMX3B",
      "Accept": "application/json",
      "Accept-Version": "3.0.0",
      "User-Agent": '_platformVersion',
      "Accept-Language": language
    };
    print('WORKED HERE API');

    var res = await http.post(Uri.parse('${ApiConst.mainApiUrl}login'),
        headers: headers, body: body);
    print('STATUS CODE IS ${res.statusCode}');

    if (res.statusCode == 200) {
      return loginModelFromJson(res.body);
    } else {
      throw Exception(res.body);
    }
  }
}
