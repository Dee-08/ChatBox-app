import 'package:chatbox_app/core/constant/app_button.dart';
import 'package:chatbox_app/core/core.dart';
import 'package:chatbox_app/screen/widget/or_widget.dart';
import 'package:chatbox_app/screen/widget/social_buttons.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                  TextSpan(
                    text: "Log in",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: AppColor.primary,
                      decorationThickness: 3,
                    ),
                  ),
                  TextSpan(text: " To ChatBox"),
                ],
              ),
            ),

            Text(
              "Welcome back! Sign in using your \nsocial media account or email to continue with us",
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColor.grey,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              spacing: 12,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SocialButton(
                  imagePath: AppImages.facebook,
                  borderColor: AppColor.black,
                  onPressed: () {},
                ),
                SocialButton(
                  imagePath: AppImages.google,
                  borderColor: AppColor.black,
                  onPressed: () {},
                ),
                SocialButton(
                  imagePath: AppImages.apple,
                  borderColor: AppColor.black,
                  onPressed: () {},
                  color: AppColor.black,
                ),
              ],
            ),
            OrWidget(),
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
                ],
              ),
            ),
            SizedBox(height: context.screenSize.height * 0.18),
            AppButtons(onPressed: () {}, text: "Login"),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "forget");
              },
              child: Text(
                "Forget Password?",
                style: context.textTheme.bodySmall?.copyWith(
                  color: AppColor.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
