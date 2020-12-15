import 'package:flutter/material.dart';

class WordCollection extends StatefulWidget {
  @override
  _WordCollectionState createState() => _WordCollectionState();
}

class _WordCollectionState extends State<WordCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('data'),
      ),
    );
  }
}
