// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBFMh6vMHo0bW0-0kQJkVlBwi1I2lDdt6A',
    appId: '1:236100935413:web:20e99501f32190415d2fbc',
    messagingSenderId: '236100935413',
    projectId: 'order-app-5044c',
    authDomain: 'order-app-5044c.firebaseapp.com',
    storageBucket: 'order-app-5044c.appspot.com',
    measurementId: 'G-VTWGX0BPS5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCVibsQ9raZh_VdjNaKfLDUlecWokH__oA',
    appId: '1:236100935413:android:5504684783ccb12c5d2fbc',
    messagingSenderId: '236100935413',
    projectId: 'order-app-5044c',
    storageBucket: 'order-app-5044c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmy_ApPGsCKCqujaP9xGbt3Evmqvvtma8',
    appId: '1:236100935413:ios:3a6d5cd82286dce85d2fbc',
    messagingSenderId: '236100935413',
    projectId: 'order-app-5044c',
    storageBucket: 'order-app-5044c.appspot.com',
    androidClientId: '236100935413-tm2jq1sqj0568k2rpq82o0o9ifv4735r.apps.googleusercontent.com',
    iosClientId: '236100935413-7f45acen9kaumj35n2kk54rl02t3kbb0.apps.googleusercontent.com',
    iosBundleId: 'com.codeline.firebaseGetxOrderApp',
  );
}
