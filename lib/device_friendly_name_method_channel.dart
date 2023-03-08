import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'device_friendly_name_platform_interface.dart';

/// An implementation of [DeviceFriendlyNamePlatform] that uses method channels.
class MethodChannelDeviceFriendlyName extends DeviceFriendlyNamePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('device_friendly_name');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getDeviceFriendlyName() async {
    final version = await methodChannel.invokeMethod<String>('getDeviceFriendlyName');
    return version;
  }
}
