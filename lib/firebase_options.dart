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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBSyuFnwavECjf95h4-EjCS7vGBB4ESOl4',
    appId: '1:179040479326:web:7752dcafe9bc0574e52ccf',
    messagingSenderId: '179040479326',
    projectId: 'connectify-14f31',
    authDomain: 'connectify-14f31.firebaseapp.com',
    storageBucket: 'connectify-14f31.appspot.com',
    measurementId: 'G-SL42XE6L1G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBKEINkxCLdWTYzpP79rJePNsgMA4uAJg',
    appId: '1:179040479326:android:77a5b77981b60b62e52ccf',
    messagingSenderId: '179040479326',
    projectId: 'connectify-14f31',
    storageBucket: 'connectify-14f31.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXcS9_Q1z_GAXMBntioxR86oZ26VfT3TE',
    appId: '1:179040479326:ios:61c5e3fa1a328defe52ccf',
    messagingSenderId: '179040479326',
    projectId: 'connectify-14f31',
    storageBucket: 'connectify-14f31.appspot.com',
    iosBundleId: 'com.connectify',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCXcS9_Q1z_GAXMBntioxR86oZ26VfT3TE',
    appId: '1:179040479326:ios:61c5e3fa1a328defe52ccf',
    messagingSenderId: '179040479326',
    projectId: 'connectify-14f31',
    storageBucket: 'connectify-14f31.appspot.com',
    iosBundleId: 'com.connectify',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBSyuFnwavECjf95h4-EjCS7vGBB4ESOl4',
    appId: '1:179040479326:web:bacb8466177a59b1e52ccf',
    messagingSenderId: '179040479326',
    projectId: 'connectify-14f31',
    authDomain: 'connectify-14f31.firebaseapp.com',
    storageBucket: 'connectify-14f31.appspot.com',
    measurementId: 'G-29H9P2S1Z6',
  );
}
