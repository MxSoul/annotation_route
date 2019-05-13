import 'package:annotation_route/router_annotation.dart';

@ARoute(alias: [
  ARouteAlias(url: 'myapp://paged', params: {'parama': 'd'})
])
class D {
  int a;
  String b;
  D(ARouteOption option) : super();
}
