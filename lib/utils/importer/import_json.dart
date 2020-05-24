import 'package:file_chooser/file_chooser.dart';

importJson() {
  showOpenPanel(allowedFileTypes: [
    FileTypeFilterGroup(fileExtensions: ["json"])
  ], allowsMultipleSelection: false, canSelectDirectories: false);
}
