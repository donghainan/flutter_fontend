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
    List<Widget> _courseList() {
      var temList = <Widget>[];

      for (var i = 0; i < 10; i++) {
        temList.add(FlatButton(
            onPressed: (){
              print(i);
            },
            child: Card(
              margin: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 200.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Image.network(
                        "http://via.placeholder.com/300x150",
                        fit: BoxFit.cover,
                        width: 250.w,
                        height: 150.h,
                      ),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 0, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "大前端程序员名企面试攻略",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: ScreenUtil().setSp(32)),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            strutStyle: StrutStyle(height: 0.1),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "高级",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: ScreenUtil().setSp(24)),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.person_pin_circle,
                                      size: 18,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      "1234",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: ScreenUtil().setSp(24)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            )));
      }
      return temList;
    }

    return ListView(
      children: _courseList(),
    );
  }
}
