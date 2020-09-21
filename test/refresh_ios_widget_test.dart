import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:refresh_ios_widget/refresh_ios_widget.dart';

void main() {
  const MethodChannel channel = MethodChannel('refresh_ios_widget');

  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });
}
