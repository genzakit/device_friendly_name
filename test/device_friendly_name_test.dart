import 'package:flutter_test/flutter_test.dart';
import 'package:device_friendly_name/device_friendly_name.dart';
import 'package:device_friendly_name/device_friendly_name_platform_interface.dart';
import 'package:device_friendly_name/device_friendly_name_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDeviceFriendlyNamePlatform with MockPlatformInterfaceMixin implements DeviceFriendlyNamePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getDeviceFriendlyName() {
    // TODO: implement getDeviceFriendlyName
    throw UnimplementedError();
  }
}

void main() {
  final DeviceFriendlyNamePlatform initialPlatform = DeviceFriendlyNamePlatform.instance;

  test('$MethodChannelDeviceFriendlyName is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDeviceFriendlyName>());
  });

  test('getPlatformVersion', () async {
    DeviceFriendlyName deviceFriendlyNamePlugin = DeviceFriendlyName();
    MockDeviceFriendlyNamePlatform fakePlatform = MockDeviceFriendlyNamePlatform();
    DeviceFriendlyNamePlatform.instance = fakePlatform;

    expect(await deviceFriendlyNamePlugin.getPlatformVersion(), '42');
  });
}
