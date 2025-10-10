import 'package:chatbox_app/core/constant/app_color.dart';
import 'package:chatbox_app/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: context.textTheme.titleMedium?.copyWith(
                color: AppColor.textColor(context),
              ),
              children: [
                TextSpan(text: "Log in"),
                TextSpan(text: "To ChatBox"),
              ],
            ),
          ),

          Text(
            "Welcome back! Sign in using your social media account or email to continue with us",
            style: context.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
