import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/scoped_models/app_model.dart';
import 'package:my_first_flutter_app/widgets/home_page.dart';
import 'package:scoped_model/scoped_model.dart';

class CinematicApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppModel>(
      builder: (context, child, model) => MaterialApp(
        title: 'Cinematic',
        theme: model.theme,
        home: HomePage(),
      ),
    );
  }
}
