// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyD5LG4gS7tJRtlKupyY32JwctKkoefUzTU',
    appId: '1:220237959172:web:bcb3b15c9b4e4a67912551',
    messagingSenderId: '220237959172',
    projectId: 'billionworks-8cf33',
    authDomain: 'billionworks-8cf33.firebaseapp.com',
    storageBucket: 'billionworks-8cf33.appspot.com',
    measurementId: 'G-0NED1F15L1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD4De0_BVMfBO96F1JTXEyEfVt9WNZUjE8',
    appId: '1:220237959172:android:459d1f409d616448912551',
    messagingSenderId: '220237959172',
    projectId: 'billionworks-8cf33',
    storageBucket: 'billionworks-8cf33.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD1_WsJsF2BKpfdR1MiKTmmBQgpL6XaGLQ',
    appId: '1:220237959172:ios:b01300ae10189597912551',
    messagingSenderId: '220237959172',
    projectId: 'billionworks-8cf33',
    storageBucket: 'billionworks-8cf33.appspot.com',
    iosBundleId: 'com.example.handymanUser',
  );
}
