import 'package:flutter/material.dart';
import 'package:flutter_task_5/model/route.dart';
import 'package:flutter_task_5/provider/model_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildStatelessWidget>[
        ChangeNotifierProvider(
          create: (_) => ModelProvider(),
        )
      ],
      child: MaterialApp(
        routes: Routes.routes,
        initialRoute: Routes.home,
      ),
    );
  }
}
