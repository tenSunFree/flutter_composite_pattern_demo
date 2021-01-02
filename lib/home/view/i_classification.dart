import 'package:flutter/widgets.dart';

abstract class IClassification {
  String getTitle();
  Widget render(BuildContext context);
}
