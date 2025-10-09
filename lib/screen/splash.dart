import 'package:chatbox_app/core/constant/app_color.dart';
import 'package:chatbox_app/core/constant/app_image.dart';
import 'package:chatbox_app/core/extensions/theme_extensions.dart';
import 'package:chatbox_app/provider/splash_provider.dart';
import 'package:chatbox_app/screen/widget/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplashProvider>().init(context);
    return Scaffold(
      body: Container(
        color: AppColor.getSplashColor(context),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageWidget(
                imagePath: AppImages.logo,
                color: AppColor.logoColor(context),
              ),
              Text(
                "ChatBox",
                style: context.textTheme.bodyLarge?.copyWith(
                  color: AppColor.textColor(context),
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                ),
              ),
              // ThemeModeSwitch(),
            ],
          ),
        ),
      ),
    );
  }
}
