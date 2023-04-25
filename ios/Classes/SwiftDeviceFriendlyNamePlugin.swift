import Flutter
import UIKit

public class SwiftDeviceFriendlyNamePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "device_friendly_name", binaryMessenger: registrar.messenger())
    let instance = SwiftDeviceFriendlyNamePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
        case "getPlatformVersion":
            result("iOS " + UIDevice.current.systemVersion)
        case "getDeviceFriendlyName":
            result(UIDevice.current.name)
        default:
            result(FlutterMethodNotImplemented)
    }
  }
}
