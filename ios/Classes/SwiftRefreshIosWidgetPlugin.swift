import Flutter
import UIKit

#if canImport(WidgetKit)
  import WidgetKit
#endif

public class SwiftRefreshIosWidgetPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "sh.declan.refresh_ios_widget", binaryMessenger: registrar.messenger())
    let instance = SwiftRefreshIosWidgetPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "refreshWidget" {
      if #available(iOS 14, *) {
        #if arch(arm64) || arch(i386) || arch(x86_64)
        WidgetCenter.shared.reloadTimelines(ofKind: (call.arguments as! NSDictionary)["id"] as! String)
        #endif
      }
      result(true)
    } else if call.method == "refreshAllWidgets" {
      if #available(iOS 14, *) {
        #if arch(arm64) || arch(i386) || arch(x86_64)
        WidgetCenter.shared.reloadAllTimelines()
        #endif
      }
      result(true)
    }
  }
}
