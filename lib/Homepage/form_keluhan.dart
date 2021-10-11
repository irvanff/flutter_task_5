import 'package:flutter/material.dart';
import 'package:flutter_task_5/model/user.dart';
import 'package:flutter_task_5/provider/model_provider.dart';
import 'package:flutter_task_5/widget/custom_field.dart';
import 'package:provider/provider.dart';

class FormKeluhan extends StatelessWidget {
  FormKeluhan({Key? key}) : super(key: key);

  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  final TextEditingController _controllerNama = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerAlamat = TextEditingController();
  final TextEditingController _controllerImage = TextEditingController();
  final TextEditingController _controllerKeluhan = TextEditingController();
  final TextEditingController _controllerTelp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Object? args = ModalRoute.of(context)?.settings.arguments;
    int? index;
    Users? user;

    if (args is Map<String, dynamic>) {
      if (args['index'] is int && args['user'] is Users) {
        index = args['index'];
        user = args['user'];
        _controllerNama.text = user!.nama;
        _controllerEmail.text = user.email;
        _controllerAlamat.text = user.alamat;
        _controllerImage.text = user.imgpro;
        _controllerKeluhan.text = user.keluhan;
        _controllerTelp.text = user.noTelp;
      }
    }

    return Card(
      child: Form(
        key: _keyForm,
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(),
          children: <Widget>[
            CustomField(
                controller: _controllerNama,
                labelText: 'Name',
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'required';
                  }
                }),
            CustomField(
                controller: _controllerEmail,
                labelText: 'Email',
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'required';
                  }
                }),
            CustomField(
                controller: _controllerAlamat,
                labelText: 'Address',
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'required';
                  }
                }),
            CustomField(
                controller: _controllerImage,
                labelText: 'Image',
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'required';
                  }
                }),
            CustomField(
                controller: _controllerKeluhan,
                labelText: 'Complain',
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'required';
                  }
                }),
            CustomField(
                controller: _controllerTelp,
                labelText: 'Phone',
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'required';
                  }
                }),
            _sendButton(index, user),
          ],
        ),
      ),
    );
  }

  Widget _addButton() {
    return Consumer<ModelProvider>(builder: (
      BuildContext context,
      ModelProvider value,
      Widget? child,
    ) {
      return ElevatedButton(
        onPressed: () {
          if (!(_keyForm.currentState?.validate() ?? false)) {
            return;
          }
          value.addUser(
            Users(
              nama: _controllerNama.text,
              email: _controllerEmail.text,
              alamat: _controllerAlamat.text,
              keluhan: _controllerKeluhan.text,
              imgpro: _controllerImage.text,
              noTelp: _controllerTelp.text,
            ),
          );
          Navigator.pop(context);
        },
        child: const Text('Add'),
      );
    });
  }

  Widget _deleteButton(int index) {
    return Consumer<ModelProvider>(
      builder: (
        BuildContext context,
        ModelProvider value,
        Widget? child,
      ) {
        return ElevatedButton(
          onPressed: () {
            value.deleteUser(index);
            Navigator.pop(context);
          },
          child: const Text('Delete'),
        );
      },
    );
  }

  Widget _editButton(int index, Users user) {
    return Consumer<ModelProvider>(
      builder: (
        BuildContext context,
        ModelProvider value,
        Widget? child,
      ) {
        return ElevatedButton(
          onPressed: () {
            value.editUser(
              index,
              Users(
                nama: _controllerNama.text,
                email: _controllerEmail.text,
                alamat: _controllerAlamat.text,
                keluhan: _controllerKeluhan.text,
                imgpro: _controllerImage.text,
                noTelp: _controllerTelp.text,
              ),
            );
            Navigator.pop(context);
          },
          child: const Text('Edit'),
        );
      },
    );
  }

  Widget _sendButton(int? index, Users? users) {
    return Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        if (users == null)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _addButton(),
            ),
          ),
        if (index != null && users != null)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(),
              child: _deleteButton(index),
            ),
          ),
        if (index != null && users != null)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(),
              child: _editButton(index, users),
            ),
          ),
      ],
    );
  }
}
