class HomeModel {
  var _notExpandedTitle = "專屬推薦  熱門網購  通路門市";
  var _expandedTitle = "選擇您想逛的分類";
  var _shoppingTitle = "購物";
  var _shoppingList = [
    "專屬推薦",
    "熱門網購",
    "通路門市",
    "流行時尚",
    "國際大牌",
    "美妝保養",
    "3C家電",
    "居家生活",
    "親子婦幼",
    "生鮮食品",
    "休閒娛樂",
    "美容舒壓",
    "生活服務",
    "纖體保健",
    "全球直送",
    "設計嚴選",
  ];
  var _gourmetTitle = "美食";
  var _gourmetList = ["連鎖餐廳", "咖啡飲品", "甜點冰品", "素食快餐"];
  var _travelTitle = "旅行";
  var _travelList = ["住宿", "機票", "體驗", "團體行"];

  get expandedTitle => _expandedTitle;

  get notExpandedTitle => _notExpandedTitle;

  get shoppingTitle => _shoppingTitle;

  get shoppingList => _shoppingList;

  get travelList => _travelList;

  get travelTitle => _travelTitle;

  get gourmetList => _gourmetList;

  get gourmetTitle => _gourmetTitle;
}
