# Elvinci Demo App
## Application Built for Interview in elvinci.de GmbH

Welcome to the Elvinci Demo App, your gateway to make the returns business more efficient, sustainable and transparent.

## Features

- List of Goods:
  On the home page you will have a list of goods.

- Add to Cart:
  User will be able to add goods to cart

- Delete Goods from Cart:
  User will be able to delete goods from cart.

- Total Amount:
  User will be bale to view total amount of the products in cart.

- Total Number of Items:
  User will be able to view total number of items in the cart

## Tech

Elvinci Demo App use flutter to work properly:

- [Flutter](https://flutter.dev/) - Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows.

## Installation

Flutter requires [Flutter](https://flutter.dev/) v3+ to run.

Install the dependencies and run the application in emulator.

```sh
flutter clean
flutter pub get
flutter run
```
#### Building APK

For building apk file:

```sh
flutter clean
flutter pub get
flutter build apk
```

For building IOS File for TestFlight:

```sh
flutter build ios
```

Open iOS folder in Xcode, and archieve app and then distribute

#### Run Project in MacBook

- Download and Install [Flutter SDK](https://docs.flutter.dev/get-started/install/macos) to run
- Extract the downloaded archive and add the flutter/bin directory to your system's PATH.
- Install XCode from App Store of the MacBook.
- Choose an IDE: You can use either [VSCode](https://code.visualstudio.com/download) with Flutter extention or [Android Studio](https://developer.android.com/studio/install) with the Flutter plugin
- Open IDE, select the project you want to run.
- Check your Flutter installation with 'flutter doctor' command
```sh
flutter doctor
```
- Connect a Device or Use an Emulator: Connect a physical device (iOS/Android) to your Mac, or open an emulator. For iOS, you can use the iOS Simulator that comes with Xcode.
- Open iOS Simulator: After installing any necessary components, go to the "Xcode" menu and select "Preferences.". In the Preferences window, go to the "Locations" tab. Look for the "Command Line Tools" dropdown and select the latest version of Xcode. Close the Preferences window. Now, you can open the iOS Simulator by going to "Xcode" > "Open Developer Tool" > "Simulator.". In the iOS Simulator, you can choose the iOS device you want to simulate. The device options can be found in the top menu bar under "Hardware" > "Device."
- Clean old build files or packages
```sh
flutter clean
flutter pub get
```
- Select device/emulator on your IDE, on which you want to run project.
- Now you can run project. Run the following commands:
```sh
flutter run
```

For help getting started with Flutter development, view the [online documentation](https://docs.flutter.dev/), which offers tutorials, samples, guidance on mobile development, and a full API reference.
