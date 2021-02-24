import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  // final String mode;
  final Function action;
  CustomButton({@required this.title, @required this.action});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      // minWidth: MediaQuery.of(context).size.width - 32,
      color: Colors.white,
      height: 52,
      child: Text(title),
      onPressed: () {
        action();
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.black)),
    );
  }
}
