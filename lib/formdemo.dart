import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  const FormDemo({super.key});

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter your Name',
                labelText: 'Name'),
            validator: (value) {
              if (value == " ") {
                return "please enter some text";
              }

              return null;
            },
          ),
          TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Enter your Phone',
                  labelText: 'Contact')),
          TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Enter your email',
                  labelText: 'EmailId')),
          new Container(
            child: new RaisedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Data is processing')));
                  }
                }),
          )
        ],
      ),
    );
  }
}
