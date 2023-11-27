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
    apiKey: 'AIzaSyBZox86a7_v1g4QjFnZXXiOLda8wAbdrbw',
    appId: '1:980792469017:web:ffd04a1b8f20c071f76c88',
    messagingSenderId: '980792469017',
    projectId: 'gym-workout-tracker-c225f',
    authDomain: 'gym-workout-tracker-c225f.firebaseapp.com',
    storageBucket: 'gym-workout-tracker-c225f.appspot.com',
    measurementId: 'G-4STJC6NQ50',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBGgVB2QxqFYQwTp-0WAfBm1qR-q7xMrk',
    appId: '1:980792469017:android:bcccaced2658bb47f76c88',
    messagingSenderId: '980792469017',
    projectId: 'gym-workout-tracker-c225f',
    storageBucket: 'gym-workout-tracker-c225f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDnGzjSMXyd62NBkPUl29xybbH4oYNyUiQ',
    appId: '1:980792469017:ios:6bcac6349898becdf76c88',
    messagingSenderId: '980792469017',
    projectId: 'gym-workout-tracker-c225f',
    storageBucket: 'gym-workout-tracker-c225f.appspot.com',
    iosBundleId: 'com.codeforany.workoutFitness',
  );
}
