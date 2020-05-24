import 'dart:io';
import 'package:menubar/menubar.dart';
import 'package:schema_studio/utils/importer/import_json.dart';

initMenubars() {
  if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
    setApplicationMenu([
      Submenu(label: "file", children: [
        MenuItem(label: "new project"),
        Submenu(label: "import", children: [
          MenuItem(
              label: "example json",
              onClicked: () {
                importJson();
              }),
        ])
      ])
    ]);
  }
}
