import 'package:chatbox_app/core/core.dart';
import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Or", style: context.textTheme.titleMedium),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}
