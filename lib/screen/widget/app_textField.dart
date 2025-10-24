import 'package:chatbox_app/core/core.dart';
import 'package:flutter/material.dart';

class AppTextfield extends StatelessWidget {
  final String label;
  final String? Function(String? value)? validator;
  final TextEditingController? controller;
  const AppTextfield({
    super.key,
    required this.label,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColor.primary,
          ),
        ),
        TextFormField(
          controller: controller,
          style: context.textTheme.bodyMedium?.copyWith(
            color: AppColor.textColor(context),
          ),
          validator: validator,
        ),
      ],
    );
  }
}
