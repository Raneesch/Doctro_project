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
    apiKey: 'AIzaSyC_RGUV0gZjPmRaRzKh0FsMfC6r7hZDucs',
    appId: '1:49163275485:web:497ec42f1adae6aa28df34',
    messagingSenderId: '49163275485',
    projectId: 'gems-project-59e88',
    authDomain: 'gems-project-59e88.firebaseapp.com',
    storageBucket: 'gems-project-59e88.appspot.com',
    measurementId: 'G-VZG99BMKFS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCsVMeuFhPAnkZ7lcy3U0whHsTX-SZov_U',
    appId: '1:49163275485:android:0d4c24a9cbc65bf428df34',
    messagingSenderId: '49163275485',
    projectId: 'gems-project-59e88',
    storageBucket: 'gems-project-59e88.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpdkyoWSDRVGFzOzVD9gyyLedINEt5DJI',
    appId: '1:49163275485:ios:f9c0938b9b8a7cce28df34',
    messagingSenderId: '49163275485',
    projectId: 'gems-project-59e88',
    storageBucket: 'gems-project-59e88.appspot.com',
    iosBundleId: 'com.example.doctroDoctor',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCpdkyoWSDRVGFzOzVD9gyyLedINEt5DJI',
    appId: '1:49163275485:ios:402ac0652a199c6e28df34',
    messagingSenderId: '49163275485',
    projectId: 'gems-project-59e88',
    storageBucket: 'gems-project-59e88.appspot.com',
    iosBundleId: 'com.example.doctroDoctor.RunnerTests',
  );
}
