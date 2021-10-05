import 'package:flutter/material.dart';
import 'package:flutter_task_5/model/user.dart';
import 'package:flutter_task_5/model/data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        primary: false,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          Users user = Data.user[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user.imgpro),
              ),
              title: Text(
                user.nama,
                style: const TextStyle(fontSize: 25.0),
              ),
            ),
          );
        });
  }
}
