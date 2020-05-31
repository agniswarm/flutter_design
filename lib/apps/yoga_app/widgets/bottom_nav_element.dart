import 'package:flutter/material.dart';

class BottomNavigationElement extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isActive;
  final Function onPressed;
  const BottomNavigationElement({
    Key key,
    this.text,
    this.icon,
    this.isActive,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _color = !isActive ? Colors.black45 : Color(0xFFC880E2);
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 35,
              color: _color,
            ),
            SizedBox(height: 5),
            Text(
              '$text',
              style: TextStyle(color: _color),
            ),
          ],
        ),
      ),
    );
  }
}
