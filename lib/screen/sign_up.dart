import 'package:chatbox_app/core/constant/app_button.dart';
import 'package:chatbox_app/core/core.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          spacing: 10,
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
                  TextSpan(text: "Sign up with "),
                  TextSpan(
                    text: "Email",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: AppColor.primary,
                      decorationThickness: 3,
                    ),
                  ),
                ],
              ),
            ),

            Text(
              "Get Chatting with Friends and family today by \nsigning up and getting your account",
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColor.grey,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Form(
              child: Column(
                spacing: 10,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: context.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColor.primary,
                        ),
                      ),
                      TextFormField(),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: context.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColor.primary,
                        ),
                      ),
                      TextFormField(),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Confirm Password",
                        style: context.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColor.primary,
                        ),
                      ),
                      TextFormField(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: context.screenSize.height * 0.1),
            AppButtons(
              onPressed: () {
                Navigator.pushNamed(context, "verify");
              },
              text: "Create an Account",
            ),
          ],
        ),
      ),
    );
  }
}
