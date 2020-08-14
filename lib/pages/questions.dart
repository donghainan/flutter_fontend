import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Questions extends StatefulWidget {
  Questions({Key key}) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    var screenW = MediaQuery.of(context).size.width;
    List<Widget> _getList() {
      var temList = <Widget>[];
      for (var i = 0; i < 10; i++) {
        temList.add(Container(
            width: screenW / 3,
            height: 250.h,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color.fromRGBO(0, 0, 0, 0.1), width: 1),
                    right: BorderSide(
                        color: Color.fromRGBO(0, 0, 0, 0.1), width: 1))),
            child: FlatButton(
                onPressed: () {
                  print(i);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Image.network(
                        "http://via.placeholder.com/80x80",
                        height: 80,
                        width: 80,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      "历史每日一题",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(25),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ))));
      }
      return temList;
    }

    ScreenUtil.init(context, width: 750, height: 1334);
    return Scaffold(
      appBar: AppBar(title: Text("前端星球"),centerTitle: true,),
      body: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.1)),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  height: 340.h,
                  width: 750.w,
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: new Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        "http://via.placeholder.com/300x150",
                        fit: BoxFit.cover,
                        width: 300,
                        height: 150,
                      );
                    },
                    itemCount: 3,
                    viewportFraction: 0.8,
                    scale: 0.9,
                    pagination: new SwiperPagination(),
                    // control: new SwiperControl(),
                    autoplay: true,
                    onTap: (int index) {
                      print("点击了$index");
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80.h,
                  width: 750.w,
                  decoration: BoxDecoration(color: Colors.white),
                  child: FlatButton(
                      onPressed: () {
                        print("object");
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.notifications_paused,
                            color: Colors.orange,
                            size: ScreenUtil().setSp(40),
                          ),
                          Expanded(
                            child: Text(
                              "点击回复 “1” ，快速加入高质量前端群",
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(25),
                                  color: Colors.black),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.only(top: 5, right: 5, bottom: 20),
                  child: FlatButton(
                      onPressed: () {
                        print("object");
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 150.w,
                                height: 50.h,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(25.h),
                                        bottomRight: Radius.circular(25.h))),
                                child: Center(
                                  child: Text(
                                    "每日一题",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: ScreenUtil().setSp(22),
                                        fontWeight: FontWeight.w500),
                                    // textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Text(
                                "2020-8-6",
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(25),
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: 20, right: 30, bottom: 0, left: 10),
                            child: Text(
                              "Day112:数组里面有10万个数据，取第一个元素和第10个元素的时间差多少",
                              style: TextStyle(
                                  letterSpacing: 2,
                                  fontSize: ScreenUtil().setSp(25),
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                              softWrap: true,
                              strutStyle: StrutStyle(height: 2),
                            ),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: screenW,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    children: _getList(),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
