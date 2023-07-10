# flutter_interngram_delta
Interngram is a social network application developed using Flutter, a cross-platform framework for building mobile applications. The project aims to provide users with a platform to connect and share their experiences through photos and captions.

## Features
- User Registration and Authentication: Users can create an account and log in securely to access the social network.
- Profile Management: Users can set up their profile by adding a profile picture, bio, and other relevant information.
- Photo Upload: Users can upload photos from their device's gallery or take a new photo using the camera.

## How to use
**Step 1:**
Download or clone this repo by using the link below:
```https://github.com/maksym-koriak/demo_project.git```

**Step 2:**
Go to project root and execute the following command in console to get the required dependencies:
```flutter pub get```

**Step 3:**
This project uses code generation, execute the following command in console to generate files:
```flutter packages pub run build_runner build --delete-conflicting-outputs```
or watch command in order to keep the source code synced automatically:
```flutter packages pub run build_runner watch```

**Step 4:**
This project app localisation, execute the following command in console to generate localisation file:
```flutter gen-l10n```

**Step 5:**
Execute the following command in console to run the app:
```flutter run```