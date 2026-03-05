# Firebase Setup Guide

## Prerequisites
- Flutter SDK installed
- Firebase account (free tier works)
- FlutterFire CLI installed

## Step 1: Install FlutterFire CLI

```bash
dart pub global activate flutterfire_cli
```

## Step 2: Install Dependencies

```bash
cd fitness_app
flutter pub get
```

## Step 3: Create Firebase Project

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Click "Add project"
3. Enter project name (e.g., "fitness-tracker")
4. Follow the setup wizard

## Step 4: Configure Firebase for Flutter

Run this command in your project directory:

```bash
flutterfire configure
```

This will:
- Create a Firebase project (or select existing)
- Register your app with Firebase
- Generate `firebase_options.dart` file
- Configure Android and iOS apps

Select the platforms you want to support (Android, iOS, Web).

## Step 5: Enable Firebase Authentication

1. In Firebase Console, go to "Authentication"
2. Click "Get started"
3. Go to "Sign-in method" tab
4. Enable "Email/Password" provider
5. Click "Save"

## Step 6: (Optional) Enable Firestore Database

1. In Firebase Console, go to "Firestore Database"
2. Click "Create database"
3. Choose "Start in test mode" for development
4. Select a location
5. Click "Enable"

## Step 7: Run the App

```bash
flutter run
```

## Troubleshooting

### Android Studio Path Error
If you see Android Studio path errors, run:
```bash
flutter config --android-studio-dir "C:\Program Files\Android\Android Studio"
```

### Missing firebase_options.dart
If the file is missing, run:
```bash
flutterfire configure
```

### Build Errors
Clean and rebuild:
```bash
flutter clean
flutter pub get
flutter run
```

## Features Implemented

- Email/Password Authentication
- Login Screen with validation
- Signup Screen with validation
- Logout functionality
- Loading states during auth operations
- Error handling with user-friendly messages

## Next Steps

- Add password reset functionality
- Implement user profile storage in Firestore
- Add workout data persistence
- Implement progress tracking with Firestore
- Add social authentication (Google, Apple)
