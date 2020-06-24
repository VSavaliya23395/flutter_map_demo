import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

     // TODO: Add your API key
        GMSServices.provideAPIKey("AIzaSyDo0z4_28aom6ZqgZ-FA9qoMSEX1Yqqeqo")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
