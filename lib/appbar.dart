import 'package:flutter/material.dart';
import './pages/questions.dart';
import './pages/combat.dart';
import './pages/personal.dart';

class MyAppBar extends StatefulWidget {
  MyAppBar({Key key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  List<Widget> _pagesList = [Questions(), Combat(), Personal()];
  int _currentIndex = 0;
  _changePage(int index) {
    setState(() {
      this._currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("前端面试星球"),
          centerTitle: true,
        ),
        body: this._pagesList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            fixedColor: Colors.indigo,
            type: BottomNavigationBarType.fixed,
            onTap: _changePage,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.work),
                title: Text("面试真题",),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.fiber_new), title: Text("一线实战")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("个人中心")),
            ]),
      ),
    );
  }
}
