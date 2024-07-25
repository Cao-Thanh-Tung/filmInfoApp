import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_first_flutter_app/app.dart';
import 'package:my_first_flutter_app/scoped_models/app_model.dart';
import 'package:scoped_model/scoped_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  runApp(ScopedModel<AppModel>(
      model: AppModel(sharedPreferences), child: CinematicApp()));
}
