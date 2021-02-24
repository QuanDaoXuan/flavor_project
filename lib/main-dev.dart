import 'package:flutter/material.dart';
import 'package:respi_app/app_config.dart';
import 'package:respi_app/components/component_list.dart';
import 'package:respi_app/components/custom_button.dart';
import 'package:respi_app/components/item_seting_scan.dart';
import 'package:respi_app/components/item_setting.dart';
import 'package:respi_app/components/text_with_icon.dart';
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
      backgroundColor: AppColors.BACKGROUND_Navigation,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ComponentList(
              title: '通信ネブライザーでの服薬設定',
              action: () {
                print('object');
              },
              subtext: ''),
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
          ),
          TextWithIcon(
            title: 'Quick-Relief used',
            action: () {
              print('object');
            },
            subtext: '',
            maxUnderLine: true,
          ),
          SizedBox(
            height: 40,
          ),
          ComponentList(
              title: '通信ネブライザー以外の服薬設定',
              action: () {
                print('object');
              },
              subtext: ''),
          ItemSetting(
            title: 'Daily meds',
            action: () {
              print('object');
            },
            subtext: '',
          ),
          ItemSetting(
            title: 'Quick-Relief used',
            action: () {
              print('object');
            },
            subtext: '',
          ),
          SizedBox(
            height: 40,
          ),
          TextWithIcon(
            title: 'Quick-Relief used',
            action: () {
              print('object');
            },
            subtext: '',
          ),
          SizedBox(
            height: 40,
          ),
          ItemSettingScan(
              title: 'Wheeze scan',
              action: () {
                print('object');
              },
              subtext: ''),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(
                title: '機器の追加登録',
                action: () {
                  print('object');
                }),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(
                title: '機器・パーツの購入（公式ストアへ）',
                action: () {
                  print('object');
                }),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
