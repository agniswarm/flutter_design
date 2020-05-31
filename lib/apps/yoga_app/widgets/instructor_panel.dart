import 'package:flutter/material.dart';


class InstructorPanel extends StatelessWidget {
  const InstructorPanel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double _radius = 25;
    const double _radiusBorder = 3;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: _radius * 4,
          child: Stack(
            overflow: Overflow.clip,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: _radius + _radiusBorder,
                child: CircleAvatar(
                  radius: _radius,
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=50&w=50',
                  ),
                ),
              ),
              Positioned(
                left: _radius * 1.5,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: _radius + _radiusBorder,
                  child: CircleAvatar(
                    radius: _radius,
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&h=250&w=250',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Jacksy Vilmanson',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(' and '),
                Text(
                  'Brain Mask',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Hatha, Meditation, BreathWork',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        )
      ],
    );
  }
}
