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
    apiKey: 'AIzaSyCj3fPAZQe2rJ5mwRCUptuZdqY_K_YuTho',
    appId: '1:140530402156:web:d00288c8f9889076146949',
    messagingSenderId: '140530402156',
    projectId: 'doctor-8ab09',
    authDomain: 'doctor-8ab09.firebaseapp.com',
    storageBucket: 'doctor-8ab09.appspot.com',
    measurementId: 'G-EG4N33E7B4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGiXnjdiDfesflCWRBqO0hpza52fQZALw',
    appId: '1:140530402156:android:1b45e66e520a74c4146949',
    messagingSenderId: '140530402156',
    projectId: 'doctor-8ab09',
    storageBucket: 'doctor-8ab09.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA2aovpa77PJfSNpqsTrq08NrGlo12jvQM',
    appId: '1:140530402156:ios:194ba5146a43bd1b146949',
    messagingSenderId: '140530402156',
    projectId: 'doctor-8ab09',
    storageBucket: 'doctor-8ab09.appspot.com',
    iosClientId: '140530402156-vdbccgh5pr8fmnncu41qth8kb4h54cl5.apps.googleusercontent.com',
    iosBundleId: 'com.example.doctor',
  );
}
