import 'package:chatbox_app/core/constant/app_button.dart';
import 'package:chatbox_app/core/constant/app_color.dart';
import 'package:chatbox_app/core/constant/app_image.dart';
import 'package:chatbox_app/core/extensions/theme_extensions.dart';
import 'package:chatbox_app/screen/widget/image_widget.dart';
import 'package:chatbox_app/screen/widget/social_buttons.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: ImageWidget(imagePath: AppImages.onboarding),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    ImageWidget(imagePath: AppImages.logo, height: 20),
                    Text("ChatBox"),
                  ],
                ),
                SizedBox(height: 50),
                Text(
                  "Connect Friends",
                  style: context.textTheme.titleLarge?.copyWith(
                    fontSize: 55,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "easily & quickly",
                  style: context.textTheme.titleLarge?.copyWith(
                    fontSize: 55,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "Our chat app is the perfect way to stay \nconnected with friends and family.",
                  style: context.textTheme.bodySmall?.copyWith(
                    fontSize: 14,
                    wordSpacing: 2,
                    letterSpacing: 2,
                  ),
                ),
                Spacer(),

                Row(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      imagePath: AppImages.facebook,
                      onPressed: () {
                        Navigator.pushNamed(context, "login");
                      },
                    ),
                    SocialButton(imagePath: AppImages.google, onPressed: () {}),
                    SocialButton(imagePath: AppImages.apple, onPressed: () {}),
                  ],
                ),
                SizedBox(height: 50),
                AppButtons(
                  onPressed: () {
                    Navigator.pushNamed(context, "login");
                  },
                  text: "Sign Up with mail",
                ),
                SizedBox(height: 30),
                Row(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Existing Account?",
                      style: context.textTheme.bodySmall,
                    ),
                    Text(
                      "Log in",
                      style: context.textTheme.bodySmall?.copyWith(
                        color: AppColor.primary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
