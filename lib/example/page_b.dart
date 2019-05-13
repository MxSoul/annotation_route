import 'package:annotation_route/router_annotation.dart';

@ARoute(url: 'myapp://pageb', params: {'parama': 'b'})
class B {
  int a;
  String b;
  B(ARouteOption option) : super();
}
