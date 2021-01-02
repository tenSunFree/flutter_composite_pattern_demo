import 'package:flutter/material.dart';
import 'package:flutter_composite_pattern_demo/home/view/i_classification.dart';

class HomeClassificationDetails extends StatelessWidget
    implements IClassification {
  final String title;
  final List<String> list;

  const HomeClassificationDetails(this.title, this.list);

  @override
  Widget build(BuildContext context) => render(context);

  @override
  String getTitle() => title;

  @override
  Widget render(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 32),
              child: Text(getTitle(),
                  style: TextStyle(fontWeight: FontWeight.bold))),
          GridView.builder(
              padding: EdgeInsets.only(left: 64, top: 8),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 2.5),
              itemBuilder: (context, index) => Text(list[index].toString()))
        ]);
  }
}
