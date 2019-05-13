import 'package:annotation_route/router_annotation.dart';

@ARoute(alias: [
  ARouteAlias(url: 'myapp://pagec'),
  ARouteAlias(url: 'myapp://pagec_alias')
])
class C {
  int a;
  String b;
  C(ARouteOption option) : super();
}
