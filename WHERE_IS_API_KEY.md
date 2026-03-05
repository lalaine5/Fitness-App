# 🔍 Where to Find the API Key

## The API Key is NOT on the app settings page!

You need to go to the **General** tab in Project Settings.

---

## Step-by-Step to Find API Key

### Step 1: Go to General Tab
Look at the top of your Firebase Console page. You should see tabs:
```
General | Usage and billing | Service accounts | ...
```

Click on **"General"** tab (should be selected by default)

### Step 2: Scroll to Find Web API Key
On the General tab, scroll down and you'll see:

```
┌─────────────────────────────────────────────┐
│ Project credentials                          │
├─────────────────────────────────────────────┤
│ Web API Key                                  │
│ AIzaSyBxxxxxxxxxxxxxxxxxxxxxxxxxxxxx        │
│                                              │
│ Project ID                                   │
│ my-fitness-xxxxxx                           │
│                                              │
│ Project Number                               │
│ 947896526456                                │
└─────────────────────────────────────────────┘
```

---

## Alternative: Get API Key from google-services.json

If you can't find it in the console, you can get it from the file you downloaded!

### Step 1: Download google-services.json
Click the **"google-services.json"** link on your current page

### Step 2: Open the File
Open `google-services.json` in a text editor (Notepad, VS Code, etc.)

### Step 3: Find the API Key
Look for this section:
```json
{
  "client": [
    {
      "api_key": [
        {
          "current_key": "AIzaSyBxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
        }
      ]
    }
  ]
}
```

The value after `"current_key":` is your API Key!

---

## What You Have So Far

From your screenshot, I can see:

✅ **App ID**: `1:947896526456:android:8b9c23056e77696d2af8d`
✅ **Package name**: `com.example.fitness_app`
✅ **Project Number** (Sender ID): `947896526456` (from App ID)

Still need:
- ⬜ **API Key** (from General tab or google-services.json)
- ⬜ **Project ID** (from General tab)

---

## Quick Instructions

**Option 1: Use Firebase Console**
1. Click **"General"** tab at the top
2. Scroll down to "Project credentials"
3. Copy **Web API Key**
4. Copy **Project ID**

**Option 2: Use google-services.json**
1. Click **"google-services.json"** to download
2. Open the file
3. Find `"current_key"` → That's your API Key
4. Find `"project_id"` → That's your Project ID

---

## After You Get the Values

You'll have all 4 values needed:
1. API Key: AIzaSy...
2. App ID: 1:947896526456:android:8b9c23056e77696d2af8d
3. Sender ID: 947896526456
4. Project ID: (from General tab)

Then update `firebase_options.dart`!
