import 'package:flutter/material.dart';
import 'package:flutter_task_5/model/user.dart';
import 'package:flutter_task_5/widget/custom_field.dart';

class FormKeluhan extends StatefulWidget {
  const FormKeluhan({Key? key}) : super(key: key);

  @override
  _FormKeluhanState createState() => _FormKeluhanState();
}

class _FormKeluhanState extends State<FormKeluhan> {
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  final TextEditingController _controllerNama = new TextEditingController();
  final TextEditingController _controllerEmail = new TextEditingController();
  final TextEditingController _controllerAlamat = new TextEditingController();
  final TextEditingController _controllerImage = new TextEditingController();
  final TextEditingController _controllerKeluhan = new TextEditingController();
  final TextEditingController _controllerTelp = new TextEditingController();
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
              controller: _controllerNama,
              labelText: 'nama',
              keyboardType: TextInputType.name,
            ),
          ],
        ),
      ),
    );
  }
}
