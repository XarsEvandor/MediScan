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
    apiKey: 'AIzaSyA_mI_K78uh9l2D7jVuYueiH2C067WRJbM',
    appId: '1:297119793955:web:df38b80b05358edef24296',
    messagingSenderId: '297119793955',
    projectId: 'project-mediscan',
    authDomain: 'project-mediscan.firebaseapp.com',
    storageBucket: 'project-mediscan.appspot.com',
    measurementId: 'G-YX88YBNQ0Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAa6SRVe13Gim4xuKixe4uCH7BZNq-XMV8',
    appId: '1:297119793955:android:99e6346afc502eb7f24296',
    messagingSenderId: '297119793955',
    projectId: 'project-mediscan',
    storageBucket: 'project-mediscan.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCdnos0plrGKMbV3WvQXkPpkyD2vk_CRn4',
    appId: '1:297119793955:ios:f448e9993ee51f3ff24296',
    messagingSenderId: '297119793955',
    projectId: 'project-mediscan',
    storageBucket: 'project-mediscan.appspot.com',
    iosClientId: '297119793955-puv0deh69tcgjmf8ht6plns8mbapc2st.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectMediscan',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCdnos0plrGKMbV3WvQXkPpkyD2vk_CRn4',
    appId: '1:297119793955:ios:f448e9993ee51f3ff24296',
    messagingSenderId: '297119793955',
    projectId: 'project-mediscan',
    storageBucket: 'project-mediscan.appspot.com',
    iosClientId: '297119793955-puv0deh69tcgjmf8ht6plns8mbapc2st.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectMediscan',
  );
}