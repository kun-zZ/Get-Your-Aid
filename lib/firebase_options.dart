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
    apiKey: 'AIzaSyA06z2p1bwaCD-pTNbqWsiKeoUQ6lDPcbI',
    appId: '1:944224884644:web:c807379f16875665d89331',
    messagingSenderId: '944224884644',
    projectId: 'getorade1-97c37',
    authDomain: 'getorade1-97c37.firebaseapp.com',
    databaseURL: 'https://getorade1-97c37-default-rtdb.firebaseio.com',
    storageBucket: 'getorade1-97c37.appspot.com',
    measurementId: 'G-ZZLYFH1HPF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjNnMAzi-KjroYnDz-3cyxz-pCIEDfYZ4',
    appId: '1:944224884644:android:57779125bfefdcefd89331',
    messagingSenderId: '944224884644',
    projectId: 'getorade1-97c37',
    databaseURL: 'https://getorade1-97c37-default-rtdb.firebaseio.com',
    storageBucket: 'getorade1-97c37.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-MEyEDHopMBcGSztPWAwcXBob5s3p7UI',
    appId: '1:944224884644:ios:df4ca3ee372f8245d89331',
    messagingSenderId: '944224884644',
    projectId: 'getorade1-97c37',
    databaseURL: 'https://getorade1-97c37-default-rtdb.firebaseio.com',
    storageBucket: 'getorade1-97c37.appspot.com',
    iosClientId: '944224884644-700advm6tc49g60p1qom2rk09964bhae.apps.googleusercontent.com',
    iosBundleId: 'com.example.healthApp',
  );
}
