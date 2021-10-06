import 'package:flutter/material.dart';
import 'package:flutter_task_5/Homepage/details.dart';
import 'package:flutter_task_5/Homepage/form_keluhan.dart';
import 'package:flutter_task_5/Homepage/home.dart';

class Routes {
  static const String home = '/home';
  static const String complain = '/formkeluhan';
  static const String details = '/details';
  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (_) => const Home(),
    complain: (_) => FormKeluhan(),
    details: (_) => const Detail(),
  };
}
