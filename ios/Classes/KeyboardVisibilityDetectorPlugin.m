#import "KeyboardVisibilityDetectorPlugin.h"
#if __has_include(<keyboard_visibility_detector/keyboard_visibility_detector-Swift.h>)
#import <keyboard_visibility_detector/keyboard_visibility_detector-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "keyboard_visibility_detector-Swift.h"
#endif

@implementation KeyboardVisibilityDetectorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftKeyboardVisibilityDetectorPlugin registerWithRegistrar:registrar];
}
@end
