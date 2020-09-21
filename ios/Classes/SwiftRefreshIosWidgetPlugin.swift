import Flutter
import UIKit
import WidgetKit

public class SwiftRefreshIosWidgetPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "sh.declan.refresh_ios_widget", binaryMessenger: registrar.messenger())
    let instance = SwiftRefreshIosWidgetPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "refreshWidget" {
      WidgetCenter.shared.reloadTimelines(ofKind: call.arguments["id"])
      result(true)
    } else if call.method == "refreshAllWidget" {
      WidgetCenter.shared.reloadAllTimelines()
      result(true)
    } else {
      result(FlutterNotImplementedMethod)
    }
  }
}
