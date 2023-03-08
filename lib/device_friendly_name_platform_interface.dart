import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'device_friendly_name_method_channel.dart';

abstract class DeviceFriendlyNamePlatform extends PlatformInterface {
  /// Constructs a DeviceFriendlyNamePlatform.
  DeviceFriendlyNamePlatform() : super(token: _token);

  static final Object _token = Object();

  static DeviceFriendlyNamePlatform _instance = MethodChannelDeviceFriendlyName();

  /// The default instance of [DeviceFriendlyNamePlatform] to use.
  ///
  /// Defaults to [MethodChannelDeviceFriendlyName].
  static DeviceFriendlyNamePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DeviceFriendlyNamePlatform] when
  /// they register themselves.
  static set instance(DeviceFriendlyNamePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getDeviceFriendlyName() {
    throw UnimplementedError('deviceFriendlyName() has not been implemented.');
  }
}
