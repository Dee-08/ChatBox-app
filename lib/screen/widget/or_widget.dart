import 'package:chatbox_app/core/core.dart';
import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  final Color? textColor;
  final Color? dividerColor;
  const OrWidget({
    super.key,
    this.textColor,
    this.dividerColor = AppColor.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: dividerColor)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Or", style: context.textTheme.titleMedium),
        ),
        Expanded(child: Divider(color: dividerColor)),
      ],
    );
  }
}
