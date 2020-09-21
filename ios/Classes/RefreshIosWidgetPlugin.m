#import "RefreshIosWidgetPlugin.h"
#if __has_include(<refresh_ios_widget/refresh_ios_widget-Swift.h>)
#import <refresh_ios_widget/refresh_ios_widget-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "refresh_ios_widget-Swift.h"
#endif

@implementation RefreshIosWidgetPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRefreshIosWidgetPlugin registerWithRegistrar:registrar];
}
@end
