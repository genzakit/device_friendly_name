import 'package:flutter_test/flutter_test.dart';
import 'package:device_friendly_name/device_friendly_name_method_channel.dart';

void main() {
  MethodChannelDeviceFriendlyName platform = MethodChannelDeviceFriendlyName();

  TestWidgetsFlutterBinding.ensureInitialized();

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
