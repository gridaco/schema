import 'dart:ui';

import 'package:schema_studio/utils/platform_utils.dart';
import 'package:window_size/window_size.dart';

initWindowSizePreferences() {
  if (isDesktop) {
    setWindowMinSize(Size(1000, 800));
  }
}
