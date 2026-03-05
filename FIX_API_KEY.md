# Fix API Key Issue

## You're on the right page! Now scroll down.

On the page you're currently on (Firebase Project Settings → General tab), scroll down to find:

### Look for "Web API Key" section

It should show:
```
Web API Key
AIzaSy... [some long key]
```

### Steps:

1. **Scroll down** on your current Firebase page
2. Find **"Web API Key"**
3. Copy that key
4. Send it to me

OR

If you see a link that says **"Manage API keys in Google Cloud Console"**, click it and then:
1. Find the API key in the list
2. Click on it
3. Under **"Application restrictions"**, select **"None"**
4. Click **"Save"**
5. Wait 1-2 minutes
6. Try signing up again in the app

---

## Quick Alternative: Use Different Initialization

Instead of fixing the API key, we can let Firebase use the google-services.json file directly, which has the correct key.

Let me know if you want to try this approach instead!
