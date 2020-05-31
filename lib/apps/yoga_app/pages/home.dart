import 'package:design_practice/apps/yoga_app/models/bottom_navigation_item_model.dart';
import 'package:design_practice/apps/yoga_app/models/course_model.dart';
import 'package:design_practice/apps/yoga_app/models/tile_model.dart';
import 'package:design_practice/apps/yoga_app/widgets/app_bar_button.dart';
import 'package:design_practice/apps/yoga_app/widgets/bottom_nav_element.dart';
import 'package:flutter/material.dart';

class YogaHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<YogaHomePage> {
  List<BottomNavigationItem> _bottomNavigationItem = bottomNavigationItem;
  List<Course> _courses = courses;
  List<Tile> _tiles = tiles;
  int _activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F2F7),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'For You',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                  ),
                  AppBarButton(icon: Icons.menu),
                ],
              ),
            ),
            Stack(
              overflow: Overflow.visible,
              alignment: Alignment.bottomCenter,
              fit: StackFit.loose,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'images/yoga_app/screen1.jpg',
                      // height: MediaQuery.of(context).size.height * 0.3,
                      // width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -40,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'FEATURED',
                            style: TextStyle(
                              color: Color(0xFFC880E2),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Hatha Yoga: Beginner',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('A well-suited class for your goals')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Container(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => _onTapNavigationPills(index),
                  child: Container(
                    decoration: BoxDecoration(
                      color: _tiles[index].active
                          ? Colors.white
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    child: Center(
                      child: Text(
                        _tiles[index].name,
                        style: TextStyle(
                          color: _tiles[index].active
                              ? Color(0xFFC880E2)
                              : Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ),
                itemCount: _tiles.length,
              ),
            ),
            // SizedBox(height: 1),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(_courses[index].imagePath),
                      ),
                      title: Text(
                        _courses[index].titleText,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(_courses[index].subTitle),
                      isThreeLine: true,
                    ),
                  ),
                ),
                itemCount: _courses.length,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 75,
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ..._bottomNavigationItem
                  .map((item) => BottomNavigationElement(
                        icon: item.icon,
                        text: item.text,
                        isActive: item.isActive,
                        onPressed: () => _onBottomNavigationPressed(item),
                      ))
                  .toList()
            ],
          ),
        ),
      ),
    );
  }

  _onBottomNavigationPressed(BottomNavigationItem item) {
    for (int i = 0; i < _bottomNavigationItem.length; i++) {
      _bottomNavigationItem[i].isActive = false;
    }
    setState(() {
      item.isActive = true;
    });
    print(item.text);
  }

  _onTapNavigationPills(int index) {
    print(index);
    _tiles[_activeIndex].active = false;
    _activeIndex = index;
    setState(() {
      _tiles[_activeIndex].active = true;
    });
  }
}
