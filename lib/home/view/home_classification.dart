import 'package:flutter/material.dart';
import 'package:flutter_composite_pattern_demo/home/view/i_classification.dart';

// ignore: must_be_immutable
class HomeClassification extends StatelessWidget implements IClassification {
  final String title;
  Function(bool) onExpansionChanged;
  final List<IClassification> iClassificationList = List<IClassification>();

  HomeClassification(this.title, this.onExpansionChanged);

  @override
  Widget build(BuildContext context) => render(context);

  @override
  String getTitle() => title;

  @override
  Widget render(BuildContext context) {
    return Theme(
        data: ThemeData(
            unselectedWidgetColor: Colors.green,
            accentColor: Colors.green,
            dividerColor: Colors.transparent),
        child: ExpansionTile(
            tilePadding: EdgeInsets.only(left: 16, right: 16),
            title: Text(getTitle(), style: TextStyle(color: Colors.grey)),
            children: iClassificationList
                .map((IClassification iClassification) =>
                    iClassification.render(context))
                .toList(),
            onExpansionChanged: onExpansionChanged,
            maintainState: true));
  }

  void addIClassification(IClassification iClassification) {
    iClassificationList.add(iClassification);
  }
}
