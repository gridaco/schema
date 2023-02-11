import 'package:menubar/menubar.dart';
import 'package:schema_studio/utils/importer/import_json.dart';
import 'package:schema_studio/utils/platform_utils.dart';

initMenubars() {
  if (isDesktop) {
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
