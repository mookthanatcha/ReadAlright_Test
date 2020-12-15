
import 'package:flutter/material.dart';
import 'package:readalright_app/widgets/tabbar.dart';
class FavorutePage extends StatefulWidget {
  @override
  _FavorutePageState createState() => _FavorutePageState();
}

class _FavorutePageState extends State<FavorutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Page"),
      ),body: Container(
      // child: tabbar(),
    ),
    );
  }
}
