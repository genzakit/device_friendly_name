#import "DeviceFriendlyNamePlugin.h"
#if __has_include(<device_friendly_name/device_friendly_name-Swift.h>)
#import <device_friendly_name/device_friendly_name-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "device_friendly_name-Swift.h"
#endif

@implementation DeviceFriendlyNamePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDeviceFriendlyNamePlugin registerWithRegistrar:registrar];
}
@end
