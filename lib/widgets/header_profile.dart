import 'package:flutter/material.dart';

class HeaderProfile extends StatefulWidget {
  @override
  _HeaderProfileState createState() => _HeaderProfileState();
}

class _HeaderProfileState extends State<HeaderProfile> {
  bool checkIcon = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: checkIcon == false ? 230.0 : 170.0,
      decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.pinkAccent, Colors.pinkAccent],
            radius: 1.0,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          )),
      child: Column(
        children: [
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  margin:
                      const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                  child: picProfile(),
                ),
                Container(
                  width: 50.0,
                  height: 30.0,
                  margin: const EdgeInsets.only(
                    right: 10.0,
                    bottom: 40.0,
                  ),
                  child: showLevel(),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 10.0,
                    bottom: 40.0,
                    // top: 5.0
                  ),
                  child: showName(),
                ),
              ],
            ),
          ),
          Container(
            margin: checkIcon == false
                ? const EdgeInsets.only(
                    top: 60.0,
                  )
                : const EdgeInsets.only(
                    top: 0.0,
                  ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: checkIcon == false
                      ? Icon(Icons.arrow_drop_up)
                      : Icon(Icons.arrow_drop_down_outlined),
                  tooltip: 'Increase volume by 10',
                  onPressed: () {
                    setState(() {
                      checkIcon = !checkIcon;
                      print(checkIcon);
                    });
                    // print(checkIcon);
                  },
                ),
                // Text('Volume : $_volume')
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget showLevel() {
    return RaisedButton(
      color: Colors.yellow.shade800,
      onPressed: () {},
      child: Text('A1'),
    );
  }

  Widget showName() {
    return Text('Thanatcha Sukapunpan');
  }

  Widget picProfile() {
    return CircleAvatar(
      backgroundImage: AssetImage('images/mook.JPG'),
      radius: 50.0,
    );
  }
}
