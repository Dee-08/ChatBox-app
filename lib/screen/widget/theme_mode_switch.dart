import 'package:chatbox_app/core/extensions/theme_extensions.dart';
import 'package:chatbox_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeModeSwitch extends StatelessWidget {
  const ThemeModeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ThemeProvider>(
          context,
          listen: false,
        ).changeMode(!context.isDark);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(),
        ),
        child: Icon(Icons.light_mode),
      ),
    );
  }
}
