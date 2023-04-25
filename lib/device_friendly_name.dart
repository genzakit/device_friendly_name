
import 'device_friendly_name_platform_interface.dart';

class DeviceFriendlyName {
  Future<String?> getPlatformVersion() {
    return DeviceFriendlyNamePlatform.instance.getPlatformVersion();
  }
  Future<String?> getDeviceFriendlyName() {
    return DeviceFriendlyNamePlatform.instance.getDeviceFriendlyName();
  }
}
