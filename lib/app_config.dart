import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  AppConfig(
      {@required this.appName,
      @required this.flavorName,
      @required this.baseUrl,
      @required Widget child})
      : super(child: child);
  final String appName;
  final String flavorName;
  final String baseUrl;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // throw UnimplementedError();
    return false;
  }

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }
}
