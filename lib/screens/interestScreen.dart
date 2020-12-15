import 'package:flutter/material.dart';
import 'package:readalright_app/screens/home.dart';
import 'package:readalright_app/widgets/bottomNav.dart';
import 'package:readalright_app/widgets/tabbar.dart';

class Interest extends StatefulWidget {
  @override
  _InterestState createState() => _InterestState();
}

Widget showInterest() {
  return Text(
    'Interest',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 30.0,
    ),
  );
}

Widget showInstruction() {
  return Text(
    'Choose Categories that You Interest',
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 15.0),
  );
}

Widget nextButton(context) {
  return RaisedButton(
    child: Text(
      'Next',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(color: Colors.yellow.shade800),
    ),
    color: Colors.yellow.shade800,
    onPressed: () {
      Navigator.of(context).pushNamedAndRemoveUntil(
          "/homepage", (Route<dynamic> route) => false);
      // MaterialPageRoute materialPageRoute =
      //     MaterialPageRoute(builder: (BuildContext context) => BottomNav());
      // Navigator.of(context).push(materialPageRoute);
    },
  );
}

class _InterestState extends State<Interest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(50.0),
          children: <Widget>[
            Container(
              margin: new EdgeInsets.symmetric(vertical: 20.0),
              child: showInterest(),
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 20.0),
              child: showInstruction(),
            ),
            Container(
              child: Row(),
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 20.0),
              child: nextButton(context),
            ),
          ],
        ),
      ),
    );
  }
}
