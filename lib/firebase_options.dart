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
    apiKey: 'AIzaSyCSAcBQl1Fj3QKDOpN1EjJeSoFq2sDwNps',
    appId: '1:451152371829:web:135ef2a722f3d11195583c',
    messagingSenderId: '451152371829',
    projectId: 'easeexpress-54d74',
    authDomain: 'easeexpress-54d74.firebaseapp.com',
    storageBucket: 'easeexpress-54d74.appspot.com',
    measurementId: 'G-1WV88Z18X3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCKq1a0KuZrfvw3QkUJZvzZNRpdH8a7oI4',
    appId: '1:451152371829:android:38aca5095da85cfc95583c',
    messagingSenderId: '451152371829',
    projectId: 'easeexpress-54d74',
    storageBucket: 'easeexpress-54d74.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAHydxq-nUrkEuUqVvyVKXLEE-AvX499f8',
    appId: '1:451152371829:ios:32b3ce15c166e55e95583c',
    messagingSenderId: '451152371829',
    projectId: 'easeexpress-54d74',
    storageBucket: 'easeexpress-54d74.appspot.com',
    iosClientId: '451152371829-r9ict9o334agvr2692j05ee0ojbgdmq5.apps.googleusercontent.com',
    iosBundleId: 'com.example.easeexpress',
  );
}
