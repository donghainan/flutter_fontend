import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Combat extends StatefulWidget {
  Combat({Key key}) : super(key: key);

  @override
  _CombatState createState() => _CombatState();
}

class _CombatState extends State<Combat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 750.h,
      height: 1334.h,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("data"),
            Text("data"),
          ],
        ),
      ),
    );
  }
}
