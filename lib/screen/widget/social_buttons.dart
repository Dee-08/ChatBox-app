import 'package:chatbox_app/core/constant/app_color.dart';
import 'package:chatbox_app/screen/widget/image_widget.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String imagePath;
  final Color color;
  final Color borderColor;
  final VoidCallback onPressed;
  const SocialButton({
    super.key,
    required this.imagePath,
    this.color = AppColor.white,
    this.borderColor = AppColor.white,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        shape: BoxShape.circle,
      ),
      child: ImageWidget(imagePath: imagePath, color: color),
    );
  }
}
