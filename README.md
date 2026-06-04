# HelloApp

Minimal SwiftUI iOS app. Animated "Hello everyone!" greeting with a Refresh button that replays the appear animation.

## Stack

- SwiftUI
- Xcode project (`HelloApp.xcodeproj`)
- Unit tests: `HelloAppTests`
- UI tests: `HelloAppUITests`

## Run

1. Open `HelloApp.xcodeproj` in Xcode.
2. Pick an iOS simulator or device.
3. Build & run (`Cmd+R`).

## Structure

```
HelloApp/
  HelloAppApp.swift     # App entry
  ContentView.swift     # Main view with spring animations
  Assets.xcassets/      # Image assets (incl. "hello")
HelloAppTests/          # Unit tests
HelloAppUITests/        # UI tests
```
