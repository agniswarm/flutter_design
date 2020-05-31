import 'package:flutter/material.dart';

class BottomNavigationCourse extends StatelessWidget {
  const BottomNavigationCourse({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black26, style: BorderStyle.solid),
          ),
        ),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '24 Lessons',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '3 Weeks  •  1-2 Level',
                  style: TextStyle(
                    color: Colors.black45
                  ),
                ),
              ],
            ),
            Spacer(),
            StartButton()
          ],
        ),
      ),
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 120,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFCB83E6),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 25),
            child: Text(
              'Start',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
          ),
        ),
        Positioned(
          top: 7,
          right: 7,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 18,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Color(
                0xFFCB83E6,
              ),
            ),
          ),
        )
      ],
    );
  }
}
