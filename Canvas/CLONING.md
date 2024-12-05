# Android App Cloning

**Difficulty:** Easy  
**Applies to:** Android  
**Prerequisites:** 
- Android 9 and up
- APK editor (recommended: Apktool M)

## Overview

Different versions of the same app can coexist on Android as long as they have unique package names. Cloning an app is useful for:

- Using multiple accounts simultaneously on the same device
- Enhancing productivity
- Maintaining distinct app configurations
- Testing different versions of the same app

## Methods

To clone Android apps, you have two main options:

1. Using dedicated cloning apps (e.g., Parallel Space, Dual Space)
2. Editing the APK directly (covered in this guide)

This guide focuses on the APK editing method as it provides the most control and flexibility.

## Step-by-Step Instructions

### Step 1: Download and Install an APK Editor

1. Download and install Apktool M from the official source:
   
   https://maximoff.su/apktool/?lang=en
   
   <img src="https://github.com/user-attachments/assets/6bcd05f5-d26b-45a0-8366-512740260c9c" alt="Apktool_M_Download" style="width:50%; height:auto;">

3. Grant necessary permissions when prompted

### Step 2: Obtain APK File

1. Open Apktool M.
2. Next, choose one of these methods:
   - Navigate to the folder containing your target APK
   - Use the "Applications" tab to find installed apps

<img src="https://github.com/user-attachments/assets/ecdb4fff-9cbc-4e14-9fd2-fda29801ec07" alt="Apktool M: File List" style="width:50%; height:auto;">

### Step 3: Edit the APK

1. Tap the app (single tap, don't hold)
2. Select "Quick Edit":
   
   <img src="https://github.com/user-attachments/assets/5164379b-3ecf-4048-aa72-c1546f9f91c9" alt="Context_Menu_Quick_Edit" style="width:50%; height:auto;">

3. Modify these fields:
   - **App name:** Add a distinguishing suffix (e.g., "Canvas 2", "Canvas 3")
   - **Package name:** Must follow the format: `tld.domain.appname`  
     Examples:
     - Original: `git.artdeell.skymodloader`
     - Clone 1: `git.artdeell.skymodloader2`
     - Clone 2: `git.artdeell.skymodloader3`
   <img src="https://github.com/user-attachments/assets/a247e8d1-a129-488a-9b0c-6331e435e724" alt="Quick Edit Settings" style="width:50%; height:auto;">

4. Leave other settings unchanged.
5. Click "Save":
   
   <img src="https://github.com/user-attachments/assets/91506228-47ad-4b21-b6da-e2e81ea688c0" alt="Save Button" style="width:50%; height:auto;">


### Step 4: Install the Cloned App

1. Locate the generated APK file (usually `[AppName]_mod.apk`):
   
   <img src="https://github.com/user-attachments/assets/a1de4d65-df9b-4ee9-ac37-48e991a2bfea" alt="Canvas_mod_file_entry" style="width:50%; height:auto;">

3. Install the modified APK
   
   <img src="https://github.com/user-attachments/assets/6e710361-6e5f-47c6-8c79-a55761da9557" alt="Install Button" style="width:50%; height:auto;">
   
4. If prompted about security, allow installation from unknown sources:
   
   <img src="https://github.com/user-attachments/assets/0db68fef-ec9c-4b03-9152-4081d278b9e5" alt="Allow from unknown sources" style="width:50%; height:auto;">
   
5. Submit the app to Google Play protect or choose "Install without scanning" (either should be fine):

   <img src="https://github.com/user-attachments/assets/1a788327-3066-44f8-8c53-8ec0765f724d" alt="Google Play Protect Dialog" style="width:50%; height:auto;">
   
7. Verify that both the original and cloned apps appear in your app drawer:

   <img src="https://github.com/user-attachments/assets/3d29dba6-9a6e-479e-8ada-e54b94e64380" alt="App Menu" style="width:50%; height:auto;">
   

## Important Notes

- **Package Names:** 
  - Keep track of used package names to avoid conflicts
  - Follow standard naming conventions (e.g., `com.company.app`)
  - Each clone must have a unique package name
- **Updates:** 
  - Cloned apps won't auto-update from Play Store
  - You'll need to repeat the process with newer versions
- **Storage:** Each clone takes up additional storage space
- **Compatibility:** Some apps may detect cloning and refuse to work

## Troubleshooting

If installation fails:
1. Ensure "Install from unknown sources" is enabled
2. Verify the package name follows the correct format
3. Check if you have enough storage space
4. Uninstall any previous versions with the same package name.

## See also
- YouTube - Cloning Android apps using Apktool M:
  https://www.youtube.com/watch?v=KWPG4ecFk4Q

