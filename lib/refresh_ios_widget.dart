import 'dart:async';

import 'package:flutter/services.dart';

class RefreshIosWidget {
  static const MethodChannel _channel =
      const MethodChannel('sh.declan.refresh_ios_widget');

  static Future<void> refreshWidget(String id) async {
    await _channel.invokeMethod('refreshWidget', <String, dynamic>{'id': id});
  }

  static Future<void> refreshAllWidgets() async {
    await _channel.invokeMethod('refreshAllWidgets');
  }
}
