import 'package:flutter/material.dart';
import 'package:readalright_app/screens/interestScreen.dart';
import 'package:readalright_app/widgets/logo.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}


Widget showUsername() {
  return TextFormField(
    style: TextStyle(color: Colors.orange),
    decoration: InputDecoration(
      labelText: 'Username',
      labelStyle: TextStyle(color: Colors.orange),
      helperText: 'Input Your Username',
      border: new OutlineInputBorder(
        borderSide: new BorderSide(color: Colors.teal),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
    ),
  );
}

Widget showEmail() {
  return TextFormField(
    style: TextStyle(color: Colors.purple),
    decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(color: Colors.purple),
        helperText: "Input Your Email",
        border: new OutlineInputBorder(
          borderSide: new BorderSide(color: Colors.teal),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        )),
  );
}

Widget showPassword() {
  return TextFormField(
    style: TextStyle(color: Colors.green),
    decoration: InputDecoration(
      labelText: 'Password',
      labelStyle: TextStyle(color: Colors.green),
      helperText: "Input Your Password",
      border: new OutlineInputBorder(
        borderSide: new BorderSide(color: Colors.teal),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
    ),
  );
}

Widget registerButton(context) {
  return RaisedButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(color: Colors.yellow.shade800),
    ),
    onPressed: () {
      print("You click upload");
      MaterialPageRoute materialPageRoute =
          MaterialPageRoute(builder: (BuildContext context) => Interest());
      Navigator.of(context).push(materialPageRoute);
    },
    color: Colors.yellow.shade800,
    child: Text(
      'Register',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
    ),
  );
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.all(50.0),
          children: <Widget>[
            Container(
              margin: new EdgeInsets.symmetric(vertical: 20.0),
              child: Logo(),
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 20.0),
              child: showUsername(),
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 20.0),
              child: showEmail(),
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 20.0),
              child: showPassword(),
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 20.0),
              child: registerButton(context),
            ),
          ],
        ),
      ),
    );
  }
}
