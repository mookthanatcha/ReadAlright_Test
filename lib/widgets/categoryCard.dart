import 'package:flutter/material.dart';

class CateCard extends StatefulWidget {
  @override
  _CateCardState createState() => _CateCardState();
}

class _CateCardState extends State<CateCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 250,
      height: 150,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 150,
            height: 150,
            margin: EdgeInsets.symmetric(
              horizontal: 5.0,
              vertical: 5.0,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset(
                    'images/mook.JPG',
                    // height: 130,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text(
                    "TestTest",
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
