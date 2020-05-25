import 'package:universal_platform/universal_platform.dart';
import 'package:flutter/foundation.dart';

bool get isDesktop{
  return UniversalPlatform.isWindows || UniversalPlatform.isLinux || UniversalPlatform.isMacOS;
}

bool get isWeb{
  return kIsWeb;
}