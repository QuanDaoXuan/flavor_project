import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:respi_app/utils/colors.dart';

class TextWithIcon extends StatelessWidget {
  final String title;
  final String subtext;
  // final String mode;
  final Function action;
  final bool maxUnderLine;
  TextWithIcon(
      {@required this.title,
      @required this.action,
      @required this.subtext,
      this.maxUnderLine});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.WHITE,
      child: Column(
        children: [
          Container(
            height: 54,
            margin: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    title,
                    style: TextStyle(
                      height: 1.25,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    subtext + subtext + subtext,
                    style: TextStyle(
                      color: Colors.black45,
                      height: 1.25,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 12),
                  width: 28,
                  child: new Icon(
                    Icons.chevron_right,
                    color: Colors.black38,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: maxUnderLine == true ? 0 : 16),
            width: MediaQuery.of(context).size.width,
            height: 1,
            color: Colors.black26,
          )
        ],
      ),
    );
  }
}
