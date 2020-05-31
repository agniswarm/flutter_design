import 'package:flutter/material.dart';

import 'apps/yoga_app/pages/course.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CoursePage(),
    );
  }
}

// return Scaffold(
//   body: Column(
//     children: <Widget>[
//       Container(
//         height: _screenHeight * 0.5,
//         child: Stack(
//           children: <Widget>[
//             Image.asset(
//               'images/yoga_app/screen2.jpg',
//               fit: BoxFit.fitHeight,
//             ),
//             SafeArea(
//               child: Container(
//                 margin: const EdgeInsets.all(10),
//                 height: 50,
//                 width: 50,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.white,
//                 ),
//                 child: Center(
//                   child: Icon(
//                     Icons.arrow_back_ios,
//                     color: Colors.black54,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       Container(
//         color: Colors.blue,
//         child: Text('Hello'),
//       )
//     ],
//   ),
// );
