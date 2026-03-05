# 🔧 How to Update firebase_options.dart

## What You Need to Change

You need to replace **4 placeholder values** in `firebase_options.dart` with your actual Firebase project values.

---

## Step 1: Find Your Firebase Values

### Go to Firebase Console
1. Open: **https://console.firebase.google.com/**
2. Click on your project: **my-fitness-app** (or whatever you named it)
3. Click the **⚙️ gear icon** (top left, next to "Project Overview")
4. Click **"Project settings"**

### Scroll Down to "Your apps"
You'll see a section called **"Your apps"** with your Android app listed.

### Find the Config Values
Look for these values (they're displayed on the page):

```
📋 Copy these 4 values:

1. Web API Key (or just "API Key")
   Example: AIzaSyBxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

2. App ID
   Example: 1:123456789:android:abcdef123456

3. Project ID
   Example: my-fitness-app-12345

4. Messaging Sender ID (or "Project Number")
   Example: 123456789012
```

---

## Step 2: Open firebase_options.dart

The file is located at:
```
fitness_app/lib/firebase_options.dart
```

---

## Step 3: Find the Android Section

Look for this section in the file:

```dart
static const FirebaseOptions android = FirebaseOptions(
  apiKey: 'YOUR_ANDROID_API_KEY',           // ← CHANGE THIS
  appId: 'YOUR_ANDROID_APP_ID',             // ← CHANGE THIS
  messagingSenderId: 'YOUR_SENDER_ID',      // ← CHANGE THIS
  projectId: 'YOUR_PROJECT_ID',             // ← CHANGE THIS
  storageBucket: 'YOUR_PROJECT_ID.appspot.com',  // ← CHANGE THIS
);
```

---

## Step 4: Replace the Values

### BEFORE (with placeholders):
```dart
static const FirebaseOptions android = FirebaseOptions(
  apiKey: 'YOUR_ANDROID_API_KEY',
  appId: 'YOUR_ANDROID_APP_ID',
  messagingSenderId: 'YOUR_SENDER_ID',
  projectId: 'YOUR_PROJECT_ID',
  storageBucket: 'YOUR_PROJECT_ID.appspot.com',
);
```

### AFTER (with your actual values):
```dart
static const FirebaseOptions android = FirebaseOptions(
  apiKey: 'AIzaSyBxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',        // Your API Key
  appId: '1:123456789:android:abcdef123456',            // Your App ID
  messagingSenderId: '123456789012',                    // Your Sender ID
  projectId: 'my-fitness-app-12345',                    // Your Project ID
  storageBucket: 'my-fitness-app-12345.appspot.com',    // Your Project ID + .appspot.com
);
```

---

## Step 5: What Each Value Means

| Placeholder | What to Replace With | Where to Find It |
|-------------|---------------------|------------------|
| `YOUR_ANDROID_API_KEY` | Your Web API Key | Firebase Console → Project Settings → Web API Key |
| `YOUR_ANDROID_APP_ID` | Your App ID | Firebase Console → Project Settings → App ID |
| `YOUR_SENDER_ID` | Your Messaging Sender ID | Firebase Console → Project Settings → Project Number |
| `YOUR_PROJECT_ID` | Your Project ID | Firebase Console → Project Settings → Project ID |

---

## Visual Guide: Where to Find Values in Firebase Console

```
Firebase Console → ⚙️ Project Settings
┌─────────────────────────────────────────────────────────┐
│ General                                                  │
├─────────────────────────────────────────────────────────┤
│ Project name: my-fitness-app                            │
│ Project ID: my-fitness-app-12345  ← Copy this          │
│ Web API Key: AIzaSyBxxxxxxxx      ← Copy this          │
│ Project Number: 123456789012      ← Copy this (Sender) │
└─────────────────────────────────────────────────────────┘

Scroll down to "Your apps"
┌─────────────────────────────────────────────────────────┐
│ Your apps                                                │
├─────────────────────────────────────────────────────────┤
│ 🤖 Fitness App (Android)                                │
│ Package name: com.example.fitness_app                   │
│ App ID: 1:123456789:android:abcdef  ← Copy this        │
└─────────────────────────────────────────────────────────┘
```

---

## Complete Example

Let's say your Firebase Console shows:
- **Web API Key**: `AIzaSyABC123xyz789`
- **App ID**: `1:987654321:android:abc123def456`
- **Project Number**: `987654321`
- **Project ID**: `my-fitness-app-xyz`

Your `firebase_options.dart` should look like:

```dart
static const FirebaseOptions android = FirebaseOptions(
  apiKey: 'AIzaSyABC123xyz789',
  appId: '1:987654321:android:abc123def456',
  messagingSenderId: '987654321',
  projectId: 'my-fitness-app-xyz',
  storageBucket: 'my-fitness-app-xyz.appspot.com',
);
```

---

## Important Notes

⚠️ **Keep the quotes!** Each value must be in single quotes `'like this'`

⚠️ **Don't add spaces** - Copy values exactly as shown

⚠️ **storageBucket** - Use your Project ID + `.appspot.com`

⚠️ **Save the file** - Press Ctrl+S after making changes

---

## Verification Checklist

After updating, verify:
- [ ] All 5 values are replaced (no `YOUR_` placeholders left)
- [ ] Each value is in single quotes
- [ ] No extra spaces or line breaks
- [ ] File is saved (Ctrl+S)
- [ ] apiKey starts with `AIza`
- [ ] appId contains colons like `1:123:android:abc`
- [ ] messagingSenderId is just numbers
- [ ] projectId matches your Firebase project
- [ ] storageBucket ends with `.appspot.com`

---

## Troubleshooting

### Can't Find the Values?
1. Make sure you're in **Project Settings** (gear icon)
2. Scroll down to see all values
3. Look under "Your apps" section for App ID

### Values Not Showing?
- Make sure you registered your Android app first
- Refresh the Firebase Console page

### Still Stuck?
The values are also in the `google-services.json` file you downloaded:
```json
{
  "project_info": {
    "project_number": "123456789",     ← This is messagingSenderId
    "project_id": "my-fitness-app",    ← This is projectId
  },
  "client": [{
    "client_info": {
      "mobilesdk_app_id": "1:123:android:abc",  ← This is appId
    },
    "api_key": [{
      "current_key": "AIzaSyBxxxxx"    ← This is apiKey
    }]
  }]
}
```

---

## What's Next?

After updating `firebase_options.dart`:
1. ✅ Downloaded google-services.json
2. ✅ Updated firebase_options.dart (you just did this!)
3. ⬜ Enable Email/Password authentication in Firebase Console
4. ⬜ Run: `flutter run`

See **SETUP_COMPLETE.md** for the next steps!

---

**Need help?** Check the example values above or look in your `google-services.json` file.
