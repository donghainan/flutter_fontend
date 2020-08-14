import 'package:flutter/material.dart';
import './router_handler.dart';
import 'package:fluro/fluro.dart';

class Routes {
  static String root = '/';
  static String dayQuestionDetail = '/dayQuestionDetail';
  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ERROR====>ROUTE NOT FOUND!!!");
    });
    router.define(dayQuestionDetail, handler: dayquestion, transitionType: TransitionType.cupertino);
  }
}
