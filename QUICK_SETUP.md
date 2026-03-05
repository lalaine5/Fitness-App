# Quick Firebase Setup - 5 Minutes

## Step 1: Create Firebase Project (2 min)

1. Open [Firebase Console](https://console.firebase.google.com/)
2. Click "Create a project"
3. Project name: `my-fitness-app`
4. Disable Google Analytics (optional)
5. Click "Create project"

## Step 2: Add Android App (2 min)

1. In your Firebase project, click the Android icon
2. Android package name: `com.example.fitness_app`
3. App nickname: `Fitness App`
4. Click "Register app"
5. Click "Download google-services.json"
6. Save it to: `fitness_app/android/app/google-services.json`
7. Click "Next" → "Next" → "Continue to console"

## Step 3: Configure Android Build Files (1 min)

### Edit `android/build.gradle`:
Find the `dependencies` block and add:
```gradle
dependencies {
    classpath 'com.android.tools.build:gradle:8.7.3'
    classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
    classpath 'com.google.gms:google-services:4.4.0'  // ADD THIS LINE
}
```

### Edit `android/app/build.gradle`:
At the very bottom of the file, add:
```gradle
apply plugin: 'com.google.gms.google-services'  // ADD THIS LINE
```

## Step 4: Enable Authentication (30 sec)

1. In Firebase Console, click "Authentication" in left menu
2. Click "Get started"
3. Click "Email/Password"
4. Toggle "Enable"
5. Click "Save"

## Step 5: Run the App

```bash
flutter run
```

That's it! Your app is now connected to Firebase.

## Troubleshooting

If you get errors, run:
```bash
flutter clean
flutter pub get
flutter run
```

## What's Working Now

✅ User signup with email/password
✅ User login
✅ Logout functionality
✅ Form validation
✅ Error handling
✅ Loading states

## Next Steps (Optional)

- Add Firestore to save workout data
- Add password reset
- Add Google Sign-In
- Store user profiles
