import 'package:analyzer/dart/element/element.dart';
import 'package:annotation_route/src/interceptor_collector.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:source_gen/source_gen.dart';
import 'package:build/build.dart';

import '../router_annotation.dart';
import 'arouter_collector.dart';
import 'writer.dart';

class RouteWriterGenerator extends GeneratorForAnnotation<ARouteRoot> {

  @override
  dynamic generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    return Writer(RouteGenerator.collector,InterceptorGenerator.collector).write();
  }
}

class RouteGenerator extends GeneratorForAnnotation<ARoute> {
  static ARouterCollector collector = ARouterCollector();

  @override
  dynamic generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    collector.collect(element, annotation, buildStep);
    return null;
  }
}

class InterceptorGenerator extends GeneratorForAnnotation<Interceptor> {
  static InterceptorCollector collector = InterceptorCollector();

  @override
  dynamic generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    collector.collect(element, annotation, buildStep);
    return null;
  }
}
