// import 'dart:js';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readalright_app/screens/register.dart';
import 'package:readalright_app/widgets/logo.dart';
import 'package:readalright_app/widgets/bottomNav.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

Widget emailText() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: 'Username',
      labelStyle: TextStyle(color: Colors.grey.shade800),
      border: new OutlineInputBorder(
        borderSide: new BorderSide(color: Colors.teal),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
    ),
    validator: (String value) {
      if (value.isEmpty) {
        return 'Please Fill Form';
      } else {
        return null;
      }
    },
  );
}

Widget passwordText() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Password',
      labelStyle: TextStyle(color: Colors.grey.shade800),
      border: new OutlineInputBorder(
        borderSide: new BorderSide(color: Colors.teal),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      // hintText: 'Tell us about yourself',
    ),
    validator: (String value) {
      if (value.isEmpty) {
        return 'Please Fill Form';
      } else {
        return null;
      }
    },
  );
}

Widget forgetPwd() {
  return Text(
    'FORGOT PASSWORD?',
    textAlign: TextAlign.right,
    style: TextStyle(),
  );
}

Widget loginButton(context) {
  return RaisedButton(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.yellow.shade800)),
    onPressed: () {
      MaterialPageRoute materialPageRoute =
          MaterialPageRoute(builder: (BuildContext context) => Register());
      Navigator.of(context).push(materialPageRoute);
    },
    color: Colors.yellow.shade800,
    child: Text(
      'LOGIN',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget connect() {
  return Text(
    'OR CONNECT WITH',
    textAlign: TextAlign.center,
    style: TextStyle(),
  );
}

Widget facebookButton() {
  return RaisedButton(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.blue.shade800)),
    onPressed: () => {},
    color: Colors.blue.shade800,
    child: Text(
      'FACEBOOK',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}

Widget googleButton() {
  return RaisedButton(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(color: Colors.red.shade800),
    ),
    onPressed: () => {},
    color: Colors.red.shade800,
    child: Text(
      'GOOGLE',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.all(50.0),
          children: <Widget>[
            Container(
              margin: new EdgeInsets.symmetric(vertical: 20.0),
              // color: Colors.grey,
              child: Center(child: Logo()),
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 10.0),
              // margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              // color: Colors.blue,
              child: Center(child: emailText()),
            ),
            Container(
              // color: Colors.purple,
              margin: new EdgeInsets.symmetric(vertical: 10.0),
              child: Center(child: passwordText()),
            ),
            Container(
              margin: const EdgeInsets.only(left: 120.0),
              child: FlatButton(
                onPressed: () => {},
                child: forgetPwd(),
              ),
            ),
            Container(
              child: loginButton(context),
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 10.0),
              child: connect(),
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 10.0),
              child: facebookButton(),
            ),
            Container(
              // margin: new EdgeInsets.symmetric(vertical: 10.0),
              child: googleButton(),
            ),
          ],
        ),

      ),
    );
  }
}
