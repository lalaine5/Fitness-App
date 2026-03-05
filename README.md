# 🏋️ Fitness Tracker App

A Flutter mobile fitness app with Firebase authentication.

## Features

- ✅ User Authentication (Email/Password)
- ✅ Login & Signup screens
- ✅ Dashboard with fitness stats
- ✅ Workout library
- ✅ Weekly progress tracking
- ✅ Logout functionality

## Project Structure

```
fitness_app/
├── lib/
│   ├── main.dart                    # App entry point
│   ├── firebase_options.dart        # Firebase configuration
│   ├── screens/
│   │   ├── login_screen.dart        # Login UI
│   │   ├── signup_screen.dart       # Signup UI
│   │   ├── home_screen.dart         # Main dashboard
│   │   ├── workout_screen.dart      # Workout list
│   │   └── progress_screen.dart     # Progress tracking
│   └── services/
│       └── auth_service.dart        # Firebase auth logic
└── android/
    └── app/
        └── google-services.json     # Firebase config (you need to add this)
```

## Setup Instructions

### Prerequisites
- Flutter SDK installed
- Android Studio or VS Code
- Firebase account (free)

### Quick Setup (5 minutes)

1. **Create Firebase Project**
   - Go to https://console.firebase.google.com/
   - Create project: `my-fitness-app`

2. **Add Android App**
   - Package name: `com.example.fitness_app`
   - Download `google-services.json`
   - Place in `android/app/google-services.json`

3. **Update Firebase Config**
   - Open `lib/firebase_options.dart`
   - Replace placeholder values with your Firebase config
   - Get values from Firebase Console → Project Settings

4. **Enable Authentication**
   - Firebase Console → Authentication
   - Enable Email/Password

5. **Run the App**
   ```bash
   flutter pub get
   flutter run
   ```

📖 **Detailed guide**: See `SETUP_COMPLETE.md`

## Running the App

```bash
# Install dependencies
flutter pub get

# Run on connected device/emulator
flutter run

# Build APK
flutter build apk

# Build for iOS
flutter build ios
```

## Testing

1. Launch the app
2. Click "Sign Up"
3. Create account with email/password
4. Login with your credentials
5. Explore dashboard, workouts, and progress

## Tech Stack

- **Framework**: Flutter 3.38.9
- **Language**: Dart 3.10.8
- **Backend**: Firebase
  - Authentication
  - (Ready for Firestore)
- **State Management**: StatefulWidget
- **UI**: Material Design 3

## Firebase Services Used

- ✅ Firebase Authentication
- 🔜 Cloud Firestore (for data storage)
- 🔜 Firebase Storage (for profile images)

## Troubleshooting

### google-services.json not found
Ensure file is in `android/app/google-services.json`

### Firebase initialization error
Update `firebase_options.dart` with your actual Firebase config values

### Build errors
```bash
flutter clean
flutter pub get
flutter run
```

### Android Studio path error
```bash
flutter config --android-studio-dir ""
```

## Next Steps

- [ ] Add Firestore for data persistence
- [ ] Implement workout tracking
- [ ] Add progress charts
- [ ] Password reset functionality
- [ ] Google Sign-In
- [ ] User profile management
- [ ] Dark mode support

## License

MIT License - Feel free to use for learning and projects

## Support

For issues, check:
- `SETUP_COMPLETE.md` - Detailed setup guide
- `QUICK_SETUP.md` - 5-minute setup
- `MANUAL_FIREBASE_SETUP.md` - Manual configuration

---

Built with ❤️ using Flutter & Firebase
