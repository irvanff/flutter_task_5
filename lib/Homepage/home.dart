import 'package:flutter/material.dart';
import 'package:flutter_task_5/Homepage/form_keluhan.dart';
import 'package:flutter_task_5/model/user.dart';
import 'package:flutter_task_5/provider/model_provider.dart';
import 'package:flutter_task_5/widget/cust_fab.dart';
import 'package:flutter_task_5/widget/cuts_botnav.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('User Complain Form'),
      ),
      floatingActionButton: const CustomFAB(),
      bottomNavigationBar: CustomBottomNavbar(),
      body: Consumer<ModelProvider>(builder: (
        BuildContext context,
        ModelProvider value,
        Widget? child,
      ) {
        if (value.users.isEmpty) {
          return const Center(
            child: Text('There is no complain yet'),
          );
        } else {
          return ListView.builder(
            primary: false,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Card(
                  child: _listTile(context, index, value.users[index]),
                ),
              );
            },
            itemCount: value.users.length,
          );
        }
      }),
    );
  }

  Widget _listTile(BuildContext context, int index, Users user) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.imgpro),
      ),
      title: Text(user.nama),
      subtitle: Text(user.email),
      trailing: Text(user.keluhan),
      onTap: () => showDialog(
        context: context,
        builder: (_) => FormKeluhan(),
        routeSettings: RouteSettings(
          arguments: <String, dynamic>{
            'index': index,
            'user': user,
          },
        ),
      ),
    );
  }
}
