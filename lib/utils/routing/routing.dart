
import 'package:flutter/widgets.dart';
import 'package:schema_studio/screens/meta_types_screen.dart';
import 'package:schema_studio/screens/studio.dart';

buildRouter(BuildContext context){
  return {
    StudioScreen.routeName: (context) => StudioScreen(),
    MetaTypesScreen.routeName: (context) => MetaTypesScreen(),
  };
}