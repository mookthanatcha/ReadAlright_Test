import 'package:flutter/material.dart';
import 'package:readalright_app/screens/content.dart';
import 'package:readalright_app/widgets/header_profile.dart';
import 'package:readalright_app/widgets/card.dart';
import 'package:readalright_app/widgets/categoryCard.dart';
import 'package:readalright_app/widgets/bottomNav.dart';
import 'package:readalright_app/widgets/tabbar.dart';

class VocabHome extends StatefulWidget {
  @override
  _VocabHomeState createState() => _VocabHomeState();
}

Widget showNewsText() {
  return Text(
    'New!',
    style: TextStyle(fontSize: 15.0),
  );
}

class _VocabHomeState extends State<VocabHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              child: HeaderProfile(),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: showNewsText(),
            ),
            Container(
              // width: 10.0,
              // height: 30.0,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                // vertical: 20,
              ),
              child: ContentCard(),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Maybe You Like!",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                // vertical: 20,
              ),
              child: ContentCard(),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Text("Category"),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                // horizontal: 20,
                // vertical: 2,
              ),
              child: Column(
                children: [
                  CateCard(),
                  CateCard(),
                ],
              ),
            ),
            // Container(
            //   child: BottomNav(),
            // ),
          ],
        ),
      ),
    );
  }
}
