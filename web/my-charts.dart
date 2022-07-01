// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#hint') as DivElement;
  dartStatus.text = '肥洁杂货铺';

  var myData = JsObject.jsify([
    {'商品': '肥皂', 'sales': 10},
    {'商品': '牙刷', 'sales': 15},
    {'商品': '抽纸', 'sales': 8},
    {'商品': '巧克力', 'sales': 20},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
