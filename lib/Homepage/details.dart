import 'package:flutter/material.dart';
import 'package:flutter_task_5/model/user.dart';
import 'package:flutter_task_5/widget/cust_fab.dart';
import 'package:flutter_task_5/widget/custom_field.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  final TextEditingController _controllerNama = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerAlamat = TextEditingController();
  final TextEditingController _controllerImage = TextEditingController();
  final TextEditingController _controllerKeluhan = TextEditingController();
  final TextEditingController _controllerTelp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Keluhan'),
        backgroundColor: Colors.amber,
      ),
      body: Form(
        key: _keyForm,
        child: ListView(
          children: <Widget>[
            CustomField(
              controller: _controllerImage,
              labelText: 'Url Gambar',
              keyboardType: TextInputType.url,
            ),
            CustomField(
              controller: _controllerNama,
              labelText: 'nama',
              keyboardType: TextInputType.name,
            ),
            CustomField(
              controller: _controllerEmail,
              labelText: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
            CustomField(
              controller: _controllerAlamat,
              labelText: 'Alamat',
              keyboardType: TextInputType.streetAddress,
            ),
            CustomField(
              controller: _controllerKeluhan,
              labelText: 'Keluhan',
              maxLines: 10,
            ),
            CustomField(
              controller: _controllerTelp,
              labelText: 'Nomor Telepon',
              keyboardType: TextInputType.phone,
            ),
          ],
        ),
      ),
    );
  }
}
