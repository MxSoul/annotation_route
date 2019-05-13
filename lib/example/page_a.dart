import 'package:annotation_route/router_annotation.dart';

@ARoute(url: 'myapp://pagea')
class A {
  int a;
  String b;
  A(ARouteOption option) : super();
}
