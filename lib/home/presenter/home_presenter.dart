import 'package:flutter_composite_pattern_demo/home/model/home_model.dart';

class HomePresenter {
  HomeModel model;

  HomePresenter() {
    model = HomeModel();
  }

  get expandedTitle => model.expandedTitle;

  get notExpandedTitle => model.notExpandedTitle;

  get shoppingTitle => model.shoppingTitle;

  get shoppingList => model.shoppingList;

  get travelList => model.travelList;

  get travelTitle => model.travelTitle;

  get gourmetList => model.gourmetList;

  get gourmetTitle => model.gourmetTitle;
}
