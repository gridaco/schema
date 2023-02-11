import 'package:file_chooser/file_chooser.dart';

importJson() async {
  final fileRes = await showOpenPanel(allowedFileTypes: [
    FileTypeFilterGroup(fileExtensions: ["json"])
  ], allowsMultipleSelection: false, canSelectDirectories: false);
  print(fileRes.paths);
}
