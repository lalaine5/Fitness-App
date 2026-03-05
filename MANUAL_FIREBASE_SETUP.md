# Manual Firebase Setup (Without Firebase CLI)

Since the Firebase CLI isn't installed, follow these steps to manually configure Firebase:

## Step 1: Create Firebase Project

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click "Add project" or select existing project
3. Enter project name: `fitness-tracker` (or your choice)
4. Disable Google Analytics (optional for now)
5. Click "Create project"

## Step 2: Register Your App

### For Android:
1. In Firebase Console, click the Android icon
2. Android package name: `com.example.fitness_app`
3. Click "Register app"
4. Download `google-services.json`
5. Place it in: `fitness_app/android/app/google-services.json`

### For iOS (if needed):
1. Click the iOS icon
2. iOS bundle ID: `com.example.fitnessApp`
3. Download `GoogleService-Info.plist`
4. Place it in: `fitness_app/ios/Runner/GoogleService-Info.plist`

## Step 3: Configure Android

Edit `fitness_app/android/build.gradle`:

```gradle
buildscript {
    dependencies {
        // Add this line
        classpath 'com.google.gms:google-services:4.4.0'
    }
}
```

Edit `fitness_app/android/app/build.gradle`:

At the bottom of the file, add:
```gradle
apply plugin: 'com.google.gms.google-services'
```

## Step 4: Create firebase_options.dart

Create the file `fitness_app/lib/firebase_options.dart` with this content:

```dart
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
          'DefaultFirebaseOptions have not been configured for macos',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'YOUR_WEB_API_KEY',
    appId: 'YOUR_WEB_APP_ID',
    messagingSenderId: 'YOUR_SENDER_ID',
    projectId: 'YOUR_PROJECT_ID',
    authDomain: 'YOUR_PROJECT_ID.firebaseapp.com',
    storageBucket: 'YOUR_PROJECT_ID.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'YOUR_ANDROID_API_KEY',
    appId: 'YOUR_ANDROID_APP_ID',
    messagingSenderId: 'YOUR_SENDER_ID',
    projectId: 'YOUR_PROJECT_ID',
    storageBucket: 'YOUR_PROJECT_ID.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'YOUR_IOS_API_KEY',
    appId: 'YOUR_IOS_APP_ID',
    messagingSenderId: 'YOUR_SENDER_ID',
    projectId: 'YOUR_PROJECT_ID',
    storageBucket: 'YOUR_PROJECT_ID.appspot.com',
    iosBundleId: 'com.example.fitnessApp',
  );
}
```

## Step 5: Get Your Firebase Config Values

In Firebase Console:
1. Click the gear icon → Project settings
2. Scroll down to "Your apps"
3. Click on your Android app
4. Copy the values and replace in `firebase_options.dart`:
   - `apiKey`
   - `appId`
   - `messagingSenderId`
   - `projectId`

## Step 6: Enable Authentication

1. In Firebase Console, go to "Authentication"
2. Click "Get started"
3. Click "Sign-in method" tab
4. Click "Email/Password"
5. Enable the first toggle (Email/Password)
6. Click "Save"

## Step 7: Install Dependencies

```bash
flutter pub get
```

## Step 8: Run the App

```bash
flutter run
```

## Quick Alternative: Use FlutterFire Configure

If you want to use the automated tool, install Firebase CLI first:

```bash
npm install -g firebase-tools
```

Then run:
```bash
flutterfire configure
```

This will automatically generate all the configuration files.
