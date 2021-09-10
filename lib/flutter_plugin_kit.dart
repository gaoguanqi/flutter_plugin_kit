
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginKit {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_kit');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }


}
