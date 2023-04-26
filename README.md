# device_friendly_name

Retrieve a device's friendly name, such as "Bob's iPhone" or "Galaxy S9 (Sarah)".

## Usage

1. Add `device_friendly_name` to your dependencies in `pubspec.yaml`
2. Import via `import 'package:device_friendly_name/device_friendly_name.dart';`
3. Accessing `DeviceFriendlyName.getDeviceFriendlyName` returns a Future that resolves to your device name. This name might be empty, so be sure to have a fallback just in case.

See the `example\lib\main.dart` for sample code.

## With Android
- return user-assigned device name

## With iOS
- iOS 15 and earlier: return user-assigned device name, ex: Genza's iPhone,...
- iOS 16 and later: return only "iPhone". You need request entitlement: [User-Assigned Device Name Entitlement](https://developer.apple.com/contact/request/user-assigned-device-name/)
- Official docs: [com.apple.developer.device-information.user-assigned-device-name](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_device-information_user-assigned-device-name)