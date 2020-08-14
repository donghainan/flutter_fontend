import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DayQuestion extends StatefulWidget {
  DayQuestion({Key key}) : super(key: key);

  @override
  _DayQuestionState createState() => _DayQuestionState();
}

class _DayQuestionState extends State<DayQuestion> {
  bool _isFavorite = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String _dayQuestion = 'Day112:数组里面有10万个数据，取第一个元素和第10个元素的时间差多少';
    return Scaffold(
      appBar: AppBar(
        title: Text("每日一题"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 5),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                _dayQuestion,
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(30),
                    fontWeight: FontWeight.w700),
                strutStyle: StrutStyle(height: 2),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[200],
                        borderRadius:
                            BorderRadius.all(const Radius.circular(4.0))),
                    child: Center(
                      child: Text(
                        "React",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        borderRadius:
                            BorderRadius.all(const Radius.circular(4.0))),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 35.h,
                          width: 130.w,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                this._isFavorite = !this._isFavorite;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  size: 18,
                                  color:
                                      _isFavorite ? Colors.red : Colors.black26,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                    child: Text(
                                  "收藏",
                                  style: TextStyle(
                                      color: _isFavorite
                                          ? Colors.red
                                          : Colors.white),
                                ))
                              ],
                            ),
                            color: Colors.blueGrey[200],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 750.w,
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "查看答案与解析",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(26),
                      fontWeight: FontWeight.w500),
                ),
                color: Colors.orange[700],
              ),
            )
          ],
        ),
      ),
    );
  }
}
