import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/day_question.dart';

Handler dayquestion = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    // String detaileId = params[0].first;
    return DayQuestion();
  }
);
