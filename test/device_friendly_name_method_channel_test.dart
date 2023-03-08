import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:device_friendly_name/device_friendly_name_method_channel.dart';

void main() {
  MethodChannelDeviceFriendlyName platform = MethodChannelDeviceFriendlyName();
  const MethodChannel channel = MethodChannel('device_friendly_name');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
