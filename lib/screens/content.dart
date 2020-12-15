import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

Widget showTopic() {
  return Text(
    'The Lion and the Mouse',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget showContent(){
  return Text('This is content');

}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content'),
      ),
      body: ListView(
        padding: EdgeInsets.all(50.0),
        children: <Widget>[
          Container(
            margin: new EdgeInsets.symmetric(vertical: 20.0),
            child: showTopic(),
          ),
          Container(
            margin: new EdgeInsets.symmetric(vertical: 20.0),
            child: showContent(),
          ),
        ],
      ),
    );
  }
}
