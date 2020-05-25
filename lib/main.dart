import 'package:flutter/material.dart';
import 'package:schema_studio/screens/studio.dart';
import 'package:schema_studio/utils/menubar.dart';
import 'package:schema_studio/utils/routing/routing.dart';
import 'package:schema_studio/utils/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initMenubars();
  initWindowSizePreferences();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'schema studio',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: buildRouter(context),
      initialRoute: StudioScreen.routeName,
    );
  }
}
