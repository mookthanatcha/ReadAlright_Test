// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:readalright_app/screens/home.dart';
import 'package:readalright_app/screens/vocabHome.dart';

class SwitchBar extends StatefulWidget {
  @override
  _SwitchBarState createState() => _SwitchBarState();
}

class _SwitchBarState extends State<SwitchBar>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 3,
      vsync: this,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.book_online),
              text: 'READING',
            ),
            Tab(
              icon: Icon(Icons.speaker),
              text: ('VOCABULARY'),
            ),
          ],
          controller: controller,
        ),
      ),
      body: TabBarView(
        children: <Widget>[Home(), VocabHome()],
        controller: controller,
      ),
    );
  }
}
