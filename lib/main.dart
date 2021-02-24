import 'package:flutter/material.dart';
import 'package:respi_app/app_config.dart';
import 'package:respi_app/components/item_setting.dart';

void main() {
  var configApp = AppConfig(
      appName: "Respi",
      flavorName: "Build flavors Prod",
      baseUrl: "https://url_dev",
      child: MyApp());
  runApp(configApp);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ItemSetting(
        title: 'text component',
        subtext: 'subtext',
        action: () {
          print('onpress');
        },
      ),
    );
  }
}
