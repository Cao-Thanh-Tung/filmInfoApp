import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/scoped_models/app_model.dart';
import 'package:scoped_model/scoped_model.dart';

class ToggleThemeButton extends StatelessWidget {
  const ToggleThemeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<AppModel>(
      builder: (context, child, model) => IconButton(
          icon: const Icon(
            Icons.color_lens,
            color: Colors.white,
          ),
          onPressed: () => model.toggleTheme()),
    );
  }
}
