import 'dart:async';

import 'package:flutter/services.dart';

class PluginIssue {
  static const MethodChannel _channel =
      const MethodChannel('plugin_issue');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
