import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(
        Icons.add_outlined,
        size: 50,
      ),
      backgroundColor: Colors.deepPurple[800],
    );
  }
}
