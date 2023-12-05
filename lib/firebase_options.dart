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
    apiKey: 'AIzaSyAb92txGfAbpUrJfUJ-U2pE1odRzkHQwzY',
    appId: '1:664602976864:web:4180b52f5b937d0f851905',
    messagingSenderId: '664602976864',
    projectId: 'news-app-e5a8c',
    authDomain: 'news-app-e5a8c.firebaseapp.com',
    storageBucket: 'news-app-e5a8c.appspot.com',
    measurementId: 'G-Z1CYSBJSNJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD82x7e07yNmny9AKsKFN-E3acd6k1V6pI',
    appId: '1:664602976864:android:e522f960de865200851905',
    messagingSenderId: '664602976864',
    projectId: 'news-app-e5a8c',
    storageBucket: 'news-app-e5a8c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFffllrqYerlRgfnL3cCG0r3RpAHRQfR8',
    appId: '1:664602976864:ios:519359eb68dea3c2851905',
    messagingSenderId: '664602976864',
    projectId: 'news-app-e5a8c',
    storageBucket: 'news-app-e5a8c.appspot.com',
    iosBundleId: 'com.example.newsApp',
  );
}
