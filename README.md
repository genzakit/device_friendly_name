# device_friendly_name

Retrieve a device's friendly name, such as "Bob's iPhone" or "Galaxy S9 (Sarah)".

## Usage

1. Add `device_friendly_name` to your dependencies in `pubspec.yaml`
2. Import via `import 'package:device_friendly_name/device_friendly_name.dart';`
3. Accessing `DeviceFriendlyName.getDeviceFriendlyName` returns a Future that resolves to your device name. This name might be empty, so be sure to have a fallback just in case.

See the `example\lib\main.dart` for sample code.