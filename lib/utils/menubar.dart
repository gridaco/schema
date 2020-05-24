import 'dart:io';
import 'package:menubar/menubar.dart';

initMenubars() {
  if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
    setApplicationMenu([
      Submenu(label: "file", children: [MenuItem(label: "new project")])
    ]);
  }
}
