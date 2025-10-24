import 'package:flutter/widgets.dart';

extension NumExtension on int {
  Widget get getHeightWhiteSpacing => SizedBox(height: toDouble());
  Widget get getWidthWhiteSpacing => SizedBox(width: toDouble());
}
