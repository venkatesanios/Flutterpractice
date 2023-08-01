import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_practice_sample/core/app/app.router.dart';
import 'package:flutter_practice_sample/init_app.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    await initApp();
    runApp(const SafeArea(child: MyApp()));
  }, (Object error, StackTrace stackTrace) {
    //CrashReporting.reportCrash(error, stackTrace);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Student Attendance',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        navigatorKey: StackedService.navigatorKey,
        color: Colors.amber);
  }
}
