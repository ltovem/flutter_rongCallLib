import 'dart:async';

import 'package:flutter/services.dart';

class FlutterRongcallLib {
  static const MethodChannel _channel =
      const MethodChannel('flutter_rongcall_lib');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
