import 'package:design_practice/apps/yoga_app/widgets/app_bar_button.dart';
import 'package:design_practice/apps/yoga_app/widgets/bottom_nav_course.dart';
import 'package:design_practice/apps/yoga_app/widgets/instructor_panel.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        fit: StackFit.loose,
        children: <Widget>[
          Image.asset(
            'images/yoga_app/screen2.jpg',
            height: _screenHeight * 0.5,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: AppBarButton(icon: Icons.arrow_back_ios),
          ),
          Positioned(
            top: _screenHeight * 0.4,
            child: Container(
              height: _screenHeight * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: OverlaySheet(),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationCourse(),
    );
  }
}



class OverlaySheet extends StatelessWidget {
  const OverlaySheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hatha Yoga Class for Beginners',
            style: Theme.of(context).textTheme.headline3.copyWith(
                  color: Colors.black,
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: InstructorPanel(),
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  letterSpacing: 1.1,
                  fontSize: 16,
                  color: Colors.black54,
                  height: 1.3,
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              'Read More',
              style: Theme.of(context).textTheme.headline6.copyWith(
                    color: Color(0xFF65C69E),
                    fontSize: 18,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
