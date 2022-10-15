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
    apiKey: 'AIzaSyBuZco3kzmU0MkhUL2avpTQTqPlbN7y58M',
    appId: '1:342640383580:web:7711e2f4bff2229c697899',
    messagingSenderId: '342640383580',
    projectId: 'labfire-120a8',
    authDomain: 'labfire-120a8.firebaseapp.com',
    storageBucket: 'labfire-120a8.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPMppMucob5wtfoGSXuzG88uRtyvNlwQY',
    appId: '1:342640383580:android:66c4019cb490341c697899',
    messagingSenderId: '342640383580',
    projectId: 'labfire-120a8',
    storageBucket: 'labfire-120a8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyALzqiCoHE8ufBv7CLtcnqRwB73hQ5j7LQ',
    appId: '1:342640383580:ios:f454b5ebc5aebf60697899',
    messagingSenderId: '342640383580',
    projectId: 'labfire-120a8',
    storageBucket: 'labfire-120a8.appspot.com',
    iosClientId: '342640383580-5icl34m8a5v6acg51ti7njepr2fbkq8j.apps.googleusercontent.com',
    iosBundleId: 'com.example.labfirestore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyALzqiCoHE8ufBv7CLtcnqRwB73hQ5j7LQ',
    appId: '1:342640383580:ios:f454b5ebc5aebf60697899',
    messagingSenderId: '342640383580',
    projectId: 'labfire-120a8',
    storageBucket: 'labfire-120a8.appspot.com',
    iosClientId: '342640383580-5icl34m8a5v6acg51ti7njepr2fbkq8j.apps.googleusercontent.com',
    iosBundleId: 'com.example.labfirestore',
  );
}
