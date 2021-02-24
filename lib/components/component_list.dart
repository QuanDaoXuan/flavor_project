import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:respi_app/utils/colors.dart';

class ComponentList extends StatelessWidget {
  final String title;
  final String subtext;
  // final String mode;
  final Function action;
  final bool maxUnderLine;
  ComponentList(
      {@required this.title,
      @required this.action,
      @required this.subtext,
      this.maxUnderLine});
  @override
  Widget build(BuildContext context) {
    return Container(
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
          // Container(
          //   width: 60,
          //   height: 28,
          //   margin: EdgeInsets.only(right: 16),
          //   child: MaterialButton(
          //     onPressed: () {
          //       print('object');
          //     },
          //     child: Text(
          //       'EDIT',
          //       style: TextStyle(fontSize: 12),
          //     ),
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(4),
          //         side: BorderSide(color: Colors.black)),
          //   ),
          // )
        ],
      ),
    );
  }
}
