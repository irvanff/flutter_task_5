import 'package:flutter/material.dart';
import 'package:flutter_task_5/Homepage/form_keluhan.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(
        Icons.add_outlined,
        size: 45,
      ),
      backgroundColor: Colors.amber,
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => FormKeluhan(),
        ),
      ),
    );
  }
}
