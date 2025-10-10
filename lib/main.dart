import 'package:chatbox_app/core/router.dart';
import 'package:chatbox_app/core/theme/theme.dart';
import 'package:chatbox_app/provider/provider.dart';
import 'package:chatbox_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: AppProvider().providers, child: ChatBoxRoot()),
  );
}

class ChatBoxRoot extends StatelessWidget {
  const ChatBoxRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat Box",
      routes: AppRouter().route,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      debugShowCheckedModeBanner: false,
      themeMode: Provider.of<ThemeProvider>(context).themeMode,
      initialRoute: "sign_up",
    );
  }
}
