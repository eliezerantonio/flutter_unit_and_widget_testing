import 'package:flutter/foundation.dart';

bool get isIOS {
  if (!isWeb) {
    defaultTargetPlatform == TargetPlatform.iOS;
  }

  return false;
}

bool get isAndroid {
  if (!isWeb) {
    defaultTargetPlatform == TargetPlatform.android;
  }

  return false;
}

bool get isLinux {
  if (!isWeb) {
    defaultTargetPlatform == TargetPlatform.linux;
  }

  return false;
}

bool get isMac {
  if (!isWeb) {
    defaultTargetPlatform == TargetPlatform.macOS;
  }

  return false;
}

bool get isWindows {
  if (!isWeb) {
    defaultTargetPlatform == TargetPlatform.windows;
  }

  return false;
}

bool get isWeb => kIsWeb;
