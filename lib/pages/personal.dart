import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Personal extends StatefulWidget {
  Personal({Key key}) : super(key: key);

  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    List<Widget> _profileList() {
      var temList = <Widget>[];
      for (var i = 0; i < 4; i++) {
        temList.add(Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: FlatButton(
              onPressed: () {
                print(i);
              },
              child: Container(
                height: 100.h,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1, color: Color.fromRGBO(0, 0, 0, 0.1)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.orange,
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "邀请榜单",
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(26)),
                                  strutStyle: StrutStyle(height: 2),
                                ),
                                Text(
                                  "邀请有好礼",
                                  style: TextStyle(
                                      fontSize: ScreenUtil().setSp(24),
                                      color: Colors.grey),
                                  strutStyle: StrutStyle(height: 2),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 20,
                      ),
                    )
                  ],
                ),
              )),
        ));
      }
      return temList;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("个人中心"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.05)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 300.h,
                width: 750.w,
                decoration: BoxDecoration(color: Colors.white),
                margin: EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(120)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.network(
                              "http://via.placeholder.com/150x150",
                              width: 120.h,
                              height: 120.w,
                              fit: BoxFit.contain,
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          "小狐狸三十而已",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: ScreenUtil().setSp(28)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Container(
                    child: Column(
                      children: _profileList(),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
