import 'package:annotation_route/router_annotation.dart';
import 'router.route.internal.dart';

@ARouteRoot()
class Router {
  ARouterInternal internal = ARouterInternalImpl();
  dynamic getPage(MyRouteOption option) {
    return internal.findPage(
        ARouteOption(option.urlpattern, option.params), option);
  }
}

class MyRouteOption {
  String urlpattern;
  Map<String, dynamic> params;
}
