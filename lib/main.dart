import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import './appbar.dart';
import './router/routes.dart';
import './router/application.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;

    return MaterialApp(
      title: '前端星球',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyAppBar(),
    );
  }
}
