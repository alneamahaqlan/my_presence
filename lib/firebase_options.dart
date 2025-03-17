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
    apiKey: 'AIzaSyBlGThlbB4OztLs-FgBfskRjDfuAH2epX8',
    appId: '1:1079234781338:web:4d0c64651cf403f9747f23',
    messagingSenderId: '1079234781338',
    projectId: 'my-presence-89c4b',
    authDomain: 'my-presence-89c4b.firebaseapp.com',
    storageBucket: 'my-presence-89c4b.firebasestorage.app',
    measurementId: 'G-W780ZKT7PZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBBOCWVZPem-agzUXgjYh5rzxXCn9dZBek',
    appId: '1:1079234781338:android:dd78bec5ddb1a462747f23',
    messagingSenderId: '1079234781338',
    projectId: 'my-presence-89c4b',
    storageBucket: 'my-presence-89c4b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDxVRFnFbvSMV57qtDvejrkeVBYHmpZS0E',
    appId: '1:1079234781338:ios:ef8ce3bfd7aa05c3747f23',
    messagingSenderId: '1079234781338',
    projectId: 'my-presence-89c4b',
    storageBucket: 'my-presence-89c4b.firebasestorage.app',
    iosBundleId: 'com.app.myPresence',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDxVRFnFbvSMV57qtDvejrkeVBYHmpZS0E',
    appId: '1:1079234781338:ios:ef8ce3bfd7aa05c3747f23',
    messagingSenderId: '1079234781338',
    projectId: 'my-presence-89c4b',
    storageBucket: 'my-presence-89c4b.firebasestorage.app',
    iosBundleId: 'com.app.myPresence',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBlGThlbB4OztLs-FgBfskRjDfuAH2epX8',
    appId: '1:1079234781338:web:dca380e84fe906c1747f23',
    messagingSenderId: '1079234781338',
    projectId: 'my-presence-89c4b',
    authDomain: 'my-presence-89c4b.firebaseapp.com',
    storageBucket: 'my-presence-89c4b.firebasestorage.app',
    measurementId: 'G-6RHTKQNJN6',
  );
}
