import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_composite_pattern_demo/home/presenter/home_presenter.dart';
import 'package:flutter_composite_pattern_demo/home/view/home_classification.dart';
import 'package:flutter_composite_pattern_demo/home/view/home_classification_details.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title;
  HomePresenter presenter;

  @override
  // ignore: must_call_super
  void initState() {
    presenter = HomePresenter();
    title = presenter.notExpandedTitle;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Image.asset('assets/icon_top_bar.png'),
      Expanded(
          child: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
        Image.asset('assets/icon_center_bar.png'),
        Align(
            alignment: Alignment.topCenter,
            child: ScrollConfiguration(
                behavior: ScrollBehavior(),
                child: SingleChildScrollView(
                    padding: const EdgeInsets.all(0),
                    child: Card(
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: buildHomeClassification()))))
      ])),
      Image.asset('assets/icon_bottom_bar.png')
    ]);
  }

  Widget buildHomeClassification() {
    var homeClassification = HomeClassification(title, (bool isChanged) {
      setState(() {
        if (isChanged) {
          title = presenter.expandedTitle;
        } else {
          title = presenter.notExpandedTitle;
        }
      });
    });
    homeClassification.addIClassification(HomeClassificationDetails(
        presenter.shoppingTitle, presenter.shoppingList));
    homeClassification.addIClassification(HomeClassificationDetails(
        presenter.gourmetTitle, presenter.gourmetList));
    homeClassification.addIClassification(
        HomeClassificationDetails(presenter.travelTitle, presenter.travelList));
    return homeClassification;
  }
}
