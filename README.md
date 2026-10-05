# FIXME for iOS

The iOS helper for [FIXME](https://getfixme.dev), the Mac app that turns "this looks wrong" into a fix.
Tap your app with three fingers, circle what's wrong, say what you see, and your coding agent on the Mac
(Claude Code, Codex, Cursor and others) gets the exact file and line, a screenshot, the UI tree, logs,
network requests and a short clip.

It works in SwiftUI and UIKit apps, and in the iOS side of React Native and Flutter apps.

## Install

**The easy way:** open FIXME on your Mac. In onboarding (or Settings › General › Exact mode) choose
**Add FIXME to your app**. FIXME shows you every change before it makes it, and you can undo it any time.

What it changes, in your Xcode project only:

- adds this package
- links it into **Debug builds only**, with `-ObjC -framework PointerKit` in the Debug configuration's
  Other Linker Flags. Release builds never contain it.
- adds a Debug Info.plist with the Bonjour service `_pointer._tcp` and the Local Network, Microphone and
  Speech Recognition descriptions iOS asks for

No source files change, and there's nothing to import or start: the helper starts itself in Debug builds.

**By hand:** File › Add Package Dependencies… › `https://github.com/fixme-dev/fixme-ios`, add the
`PointerKit` product to **no target**, then make the three changes above yourself.

## Using it

1. Run your app's Debug build on a phone or the Simulator, on the same Wi-Fi as your Mac or plugged in.
2. The first time, tap **Allow** when iOS asks to find devices on your network, then allow the phone on your Mac.
3. Tap with three fingers (or the FIXME tab on the edge), circle what's wrong, and send.
   Shake, or say "FIXME, clip that", to send the last 30 seconds as a clip.

## Requirements

iOS 16 or later. Xcode 16 or later. FIXME for Mac.

## Privacy

The helper talks only to your own Mac, on your local network or through FIXME's end-to-end encrypted
relay. Nothing goes to any other server. It runs only in Debug builds.

## Bugs and ideas

Found a bug, or have an idea? Open an issue at https://github.com/fixme-dev/fixme-issues. Issues there are public, so
leave out file paths, phone names and anything private. In the FIXME app, Help, then Report a Bug, fills in your versions for you.

## License

See [LICENSE](LICENSE). The framework is free to use in your apps' Debug builds alongside FIXME.
