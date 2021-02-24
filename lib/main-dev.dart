import 'package:flutter/material.dart';
import 'package:respi_app/app_config.dart';
import 'package:respi_app/components/custom_button.dart';
import 'package:respi_app/components/item_setting.dart';
import 'package:respi_app/utils/colors.dart';

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
    var config = AppConfig.of(context);

    return MaterialApp(
      title: config.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: config.flavorName),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            color: AppColors.BACKGROUND_Navigation,
            margin: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '通信ネブライザーでの服薬設定',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 60,
                  height: 28,
                  margin: EdgeInsets.only(right: 16),
                  child: MaterialButton(
                    onPressed: () {
                      print('object');
                    },
                    child: Text(
                      'EDIT',
                      style: TextStyle(fontSize: 12),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: BorderSide(color: Colors.black)),
                  ),
                )
              ],
            ),
          ),
          ItemSetting(
            title: 'Daily meds',
            subtext: 'Abedo',
            action: () {
              print('onpress');
            },
          ),
          ItemSetting(
            title: 'Quick-Relief used',
            subtext: 'saifdo…',
            action: () {
              print('onpress');
            },
          ),
          ItemSetting(
            title: 'Other',
            subtext: '',
            action: () {
              print('onpress');
            },
            maxUnderLine: true,
          )
        ],
      ),
    );
  }
}
