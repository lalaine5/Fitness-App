# 📥 How to Download google-services.json

## Step-by-Step Guide with Screenshots

### Step 1: Go to Firebase Console
1. Open your browser
2. Go to: **https://console.firebase.google.com/**
3. Sign in with your Google account

### Step 2: Create a New Project
1. Click the **"Create a project"** button (or **"Add project"**)
2. Enter project name: `my-fitness-app` (or any name you like)
3. Click **"Continue"**
4. **Disable Google Analytics** (optional - you can skip this for now)
5. Click **"Create project"**
6. Wait for project creation (takes ~30 seconds)
7. Click **"Continue"** when done

### Step 3: Add Android App
1. You'll see the Firebase project dashboard
2. Look for the text: **"Get started by adding Firebase to your app"**
3. Click the **Android icon** (looks like a robot/droid)
   - If you don't see it, click the gear icon → "Project settings" → scroll down → "Add app" → Android

### Step 4: Register Your App
You'll see a form with these fields:

1. **Android package name**: Enter exactly this:
   ```
   com.example.fitness_app
   ```
   ⚠️ **IMPORTANT**: Must match exactly! Copy and paste to avoid typos.

2. **App nickname (optional)**: Enter:
   ```
   Fitness App
   ```

3. **Debug signing certificate SHA-1 (optional)**: 
   - Leave this blank for now
   - You can add it later if needed

4. Click **"Register app"** button

### Step 5: Download google-services.json
1. After clicking "Register app", you'll see:
   - **"Download google-services.json"** section
   - A blue **"Download google-services.json"** button

2. Click the **"Download google-services.json"** button
   - The file will download to your Downloads folder
   - File name: `google-services.json`
   - File size: ~1-2 KB

3. Click **"Next"** (you can skip the other steps for now)
4. Click **"Next"** again
5. Click **"Continue to console"**

### Step 6: Move the File to Your Project

**Option A: Using File Explorer (Easiest)**
1. Open File Explorer
2. Go to your Downloads folder
3. Find `google-services.json`
4. Copy the file (Ctrl+C)
5. Navigate to your project:
   ```
   C:\Users\narta\OneDrive\Desktop\Fitness App\fitness_app\android\app\
   ```
6. Paste the file here (Ctrl+V)

**Option B: Using Command Line**
```bash
# From your Downloads folder
move google-services.json "C:\Users\narta\OneDrive\Desktop\Fitness App\fitness_app\android\app\"
```

**Option C: Drag and Drop**
1. Open two File Explorer windows
2. Left window: Your Downloads folder
3. Right window: `fitness_app\android\app\`
4. Drag `google-services.json` from left to right

### Step 7: Verify File Location

The file MUST be in this exact location:
```
fitness_app/
└── android/
    └── app/
        └── google-services.json  ← HERE!
```

**NOT here** (wrong locations):
- ❌ `fitness_app/google-services.json`
- ❌ `fitness_app/android/google-services.json`
- ❌ `fitness_app/lib/google-services.json`

### Step 8: Check the File

Open `google-services.json` in a text editor to verify it looks like this:

```json
{
  "project_info": {
    "project_number": "123456789",
    "project_id": "my-fitness-app-xxxxx",
    "storage_bucket": "my-fitness-app-xxxxx.appspot.com"
  },
  "client": [
    {
      "client_info": {
        "mobilesdk_app_id": "1:123456789:android:xxxxx",
        "android_client_info": {
          "package_name": "com.example.fitness_app"
        }
      },
      ...
    }
  ]
}
```

If you see this structure, you're good! ✅

## Troubleshooting

### Can't Find the Download Button?
- Make sure you clicked "Register app" first
- The download button appears right after registration

### Downloaded but Can't Find the File?
- Check your Downloads folder: `C:\Users\narta\Downloads\`
- Search for "google-services.json" in File Explorer

### Wrong Package Name?
If you entered the wrong package name:
1. Go to Firebase Console
2. Click gear icon → "Project settings"
3. Scroll to "Your apps"
4. Click the 3 dots → "Delete app"
5. Start over from Step 3

### File Already Exists?
If you already have the file and need to re-download:
1. Firebase Console → Project settings
2. Scroll to "Your apps"
3. Find your Android app
4. Click "google-services.json" link to download again

## What's Next?

After placing the file:
1. ✅ You have `google-services.json` in the right location
2. ⬜ Update `firebase_options.dart` (see SETUP_COMPLETE.md)
3. ⬜ Enable Email/Password authentication
4. ⬜ Run the app!

---

**Need more help?** Check `SETUP_COMPLETE.md` for the complete setup guide.
