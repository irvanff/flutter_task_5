import 'package:flutter/material.dart';
import 'package:flutter_task_5/Homepage/form_keluhan.dart';
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
        Users prof = Data.user[index];
        return ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(prof.imgpro),
              ),
              title: Text(
                prof.nama,
                style: const TextStyle(fontSize: 20.0),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => FormKeluhan(
                        nama: prof.nama,
                        email: prof.email,
                        alamat: prof.alamat,
                        telp: prof.noTelp,
                        image: prof.imgpro)),
              ),
            ),
          ),
        );
      },
      itemCount: Data.user.length,
    );
  }
}
