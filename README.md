# skyfood-v1-robot-androidapp

An Android application powering **SkyFood** delivery robots. The app runs on a modified AutoXing autonomous delivery robot platform, acting as the on-device controller that bridges the robot's native SDK with a Vue.js web-based UI. It handles navigation, task management, WebSocket communication, and media/file delivery — all within a single landscape-mode Android app.



## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Project Structure](#project-structure)
- [Tech Stack](#tech-stack)
- [Permissions](#permissions)
- [Build Information](#build-information)
- [APK Tooling](#apk-tooling)
- [Notes](#notes)



## Overview

This repository contains the **decompiled source** of the SkyFood robot Android application (`car.394`), produced using [apktool](https://apktool.org/). The app is designed to run in **LAN_APP mode** using the AutoXing SDK, which means it connects to the robot's internal services over a local network rather than the cloud.

The app embeds a full **Vue.js + Vite** single-page application in its assets, rendered inside an Android WebView. A custom JavaScript bridge (`js/` controllers in Smali) exposes native robot capabilities — such as movement, task control, sensor data, and Wi-Fi management — directly to the web frontend.

A built, signed APK is included at the root: `car_skyfood.apk`.



## Features

- **Autonomous delivery task management** — sends and monitors delivery missions on the AutoXing robot platform.
- **WebView-hosted Vue.js UI** — a responsive, multilingual (8 languages) frontend rendered natively inside the app.
- **File transfer interface** — a built-in HTTP upload page (`assets/index.html`) for pushing media files (video, image, audio) to the robot at runtime.
- **WebSocket communication** — real-time bidirectional messaging between the app and external backend services.
- **Wi-Fi control** — automated Wi-Fi network switching and connectivity checks (`WifiController`, `NetConfigManager`).
- **OTA update support** — `UpdateController` handles over-the-air application updates.
- **Auto-start on boot** — `RobotReceiver` listens for `BOOT_COMPLETED` to launch the app automatically.
- **SDK adapter layer** — `AndroidSDKAdapter` and `AndroidServiceMonitor` manage the lifecycle of the AutoXing robot SDK.
- **Smart tray support** — `SmartTrayActivity` provides control over the robot's physical delivery tray.
- **Timezone management** — `TimeZoneController` and `TimeZoneAdapter` configure device time for international deployments.
- **System logging** — `LogController` captures and exports Logcat output for diagnostics.



## Project Structure

```
skyfood-v1-robot-androidapp/
│
├── car_skyfood.apk            # Signed, production APK
├── car_skyfood.apk.idsig      # APK signing identity signature
├── mykey.keystore             # Keystore used to sign the APK
│
└── car.394/                   # Decompiled APK (apktool output)
    ├── AndroidManifest.xml    # App manifest: permissions, activities, receivers
    ├── apktool.yml            # apktool metadata (version, SDK info, compression rules)
    │
    ├── assets/
    │   ├── index.html         # File transfer UI (multilingual: 8 languages)
    │   ├── index_animation.html
    │   ├── index_apk.html     # APK update UI
    │   ├── service.apk        # Companion service APK deployed by the app
    │   └── dist/              # Built Vue.js SPA (Vite output)
    │       ├── index.html     # Main robot control UI entry point
    │       └── static/
    │           ├── js/        # Bundled Vue.js, Vue Router, Pinia, Element Plus, AutoXing SDK, etc.
    │           └── css/       # Compiled stylesheets
    │
    ├── lib/                   # Native shared libraries (.so) for 7 ABIs:
    │   ├── arm64-v8a/
    │   ├── armeabi-v7a/
    │   ├── armeabi/
    │   ├── x86/
    │   ├── x86_64/
    │   ├── mips/
    │   └── mips64/
    │
    ├── smali/                 # Decompiled Dalvik bytecode
    │   ├── com/autoxing/delivery/
    │   │   ├── MainActivity.smali          # Main entry: WebView host + JS bridge setup
    │   │   ├── MainApplication.smali       # Application class + lifecycle tracking
    │   │   ├── RobotReceiver.smali         # Boot-complete broadcast receiver
    │   │   ├── SmartTrayActivity.smali     # Physical tray control activity
    │   │   ├── controller/                 # Native controllers (SDK, WiFi, OTA, logging, events)
    │   │   ├── js/                         # JavaScript-to-native bridge interfaces
    │   │   ├── websocket/                  # WebSocket client/server implementation
    │   │   ├── network/                    # HTTP networking utilities
    │   │   ├── httpserver/                 # Embedded HTTP server (file upload endpoint)
    │   │   ├── download/                   # File download/update logic
    │   │   ├── util/                       # Utility classes
    │   │   ├── bean/                       # Data model classes
    │   │   └── sdk/                        # AutoXing SDK integration
    │   ├── cn/                             # AutoXing SDK classes
    │   ├── android/                        # Android support/compat classes
    │   ├── kotlin/                         # Kotlin stdlib
    │   ├── okhttp3/ & okio/               # HTTP client libraries
    │   └── ...
    │
    ├── res/                   # Android resources (layouts, drawables, strings, etc.)
    └── original/              # Original APK meta-files (MANIFEST.MF, certificates)
```



## Tech Stack

| Layer | Technology |
|---|---|
| **Android App** | Java / Kotlin (compiled to Dalvik/ART bytecode) |
| **Robot SDK** | AutoXing SDK (`LAN_APP` mode) |
| **Frontend UI** | Vue.js 3 + Vue Router + Pinia (state management) |
| **UI Components** | Element Plus |
| **HTTP Client** | Axios |
| **i18n** | vue-i18n (8 languages: Chinese, English, Traditional Chinese, Japanese, Korean, German, Thai, Spanish) |
| **Real-time Comms** | WebSocket (custom client + server) |
| **HTTP Networking** | OkHttp3 / OkIo |
| **Build Tool (Frontend)** | Vite |
| **APK Tooling** | apktool 2.12.1 |
| **Min Android SDK** | API 27 (Android 8.1 Oreo) |
| **Target Android SDK** | API 27 |



## Permissions

The application requests the following Android permissions:

| Permission | Purpose |
|---|---|
| `INTERNET` | Backend/SDK communication |
| `ACCESS_WIFI_STATE` / `CHANGE_WIFI_STATE` | Automated Wi-Fi switching |
| `ACCESS_NETWORK_STATE` | Connectivity monitoring |
| `WRITE_SETTINGS` / `WRITE_SECURE_SETTINGS` | System configuration |
| `BLUETOOTH` / `BLUETOOTH_ADMIN` | Bluetooth peripheral support |
| `ACCESS_FINE_LOCATION` | Robot localization |
| `CAMERA` | Camera access for the robot |
| `SYSTEM_ALERT_WINDOW` | Overlay UI support |
| `SET_TIME_ZONE` | Timezone auto-configuration |
| `RECEIVE_BOOT_COMPLETED` | Auto-start after device reboot |
| `READ/WRITE_EXTERNAL_STORAGE` / `MANAGE_EXTERNAL_STORAGE` | File and media management |
| `REORDER_TASKS` | App task management |



## Build Information

| Property | Value |
|---|---|
| Application ID | `com.autoxing.delivery.skyfood` |
| Version Name | `1.7.6` |
| Version Code | `176` (0xb0) |
| Build Type | `release` |
| Compile SDK | API 32 (Android 12) |



## APK Tooling

This repository contains the output of decompiling the APK with [apktool](https://apktool.org/).

To recompile the APK from the `car.394/` directory:

```bash
apktool b car.394 -o car_skyfood_rebuilt.apk
```

To sign the resulting APK with the included keystore:

```bash
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 \
  -keystore mykey.keystore car_skyfood_rebuilt.apk <alias>
```

> ⚠️ You will need the keystore password and alias to sign. Keep `mykey.keystore` secure and do not commit keystore credentials to version control.



## Notes

- The app runs in **landscape orientation** and is set as a **HOME launcher** (replaces the Android home screen), making the robot's tablet effectively a single-purpose kiosk device.
- The Vue.js frontend communicates with native Android code via a JavaScript bridge injected into the WebView.
- A companion `service.apk` is bundled in the assets and deployed by the app at runtime to handle background robot services.
- The file upload interface (`assets/index.html`) supports 8 locales and enforces media constraints (video ≤ 100 MB, images ≤ 1 MB, max resolution 2560×2560).
