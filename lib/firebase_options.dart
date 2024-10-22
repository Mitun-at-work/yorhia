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
        return macos;
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
    apiKey: 'AIzaSyBK614-d2r7jB_l8FrObHINRqzok_qIpgo',
    appId: '1:424325246760:web:6198666e78af8f0a6d2a1d',
    messagingSenderId: '424325246760',
    projectId: 'yorhia-bbbc5',
    authDomain: 'yorhia-bbbc5.firebaseapp.com',
    storageBucket: 'yorhia-bbbc5.appspot.com',
    measurementId: 'G-FSL65YLL28',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCbtDjQ8zqFFyE-z_lIPnDT9zYb6BkN2hI',
    appId: '1:424325246760:android:66ad07955eb395cc6d2a1d',
    messagingSenderId: '424325246760',
    projectId: 'yorhia-bbbc5',
    storageBucket: 'yorhia-bbbc5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBxFsWNRWTmvBIw2oNB86HvKtPSRUV3YfM',
    appId: '1:424325246760:ios:ebd5eb4fefd8249d6d2a1d',
    messagingSenderId: '424325246760',
    projectId: 'yorhia-bbbc5',
    storageBucket: 'yorhia-bbbc5.appspot.com',
    iosBundleId: 'com.example.yorhia',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBxFsWNRWTmvBIw2oNB86HvKtPSRUV3YfM',
    appId: '1:424325246760:ios:ebd5eb4fefd8249d6d2a1d',
    messagingSenderId: '424325246760',
    projectId: 'yorhia-bbbc5',
    storageBucket: 'yorhia-bbbc5.appspot.com',
    iosBundleId: 'com.example.yorhia',
  );
}
