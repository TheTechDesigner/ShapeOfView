import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';
import 'package:shapes_of_view/images.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Shape Of View';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 64.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ShapeOfView(
                        height: 150.0,
                        width: 150.0,
                        shape: CircleShape(
                          borderWidth: 8.0,
                          borderColor: Color(0xFFC41A3B),
                        ),
                        child: Image(
                          image: AssetImage(roundedLogo),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ShapeOfView(
                        height: 150.0,
                        width: 180.0,
                        shape: ArcShape(
                          direction: ArcDirection.Inside,
                          position: ArcPosition.Left,
                          height: 50.0,
                        ),
                        child: Image(
                          image: AssetImage(logo),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ShapeOfView(
                        height: 150.0,
                        width: 180.0,
                        shape: CutCornerShape(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(64.0),
                          ),
                        ),
                        child: Container(
                          color: Color(0xFF1B1F32),
                          child: Center(
                            child: Text(
                              'The Tech Designer',
                              style:
                                  TextStyle(fontSize: 18.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ShapeOfView(
                        height: 110.0,
                        width: 165.0,
                        shape: RoundRectShape(
                          borderRadius: BorderRadius.circular(16.0),
                          borderColor: Color(0xFFC41A3B),
                          borderWidth: 8.0,
                        ),
                        child: Container(
                          color: Color(0xFFFBE0E6),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ShapeOfView(
                    height: 300.0,
                    width: 250.0,
                    shape: TriangleShape(
                      percentBottom: 0.5,
                      percentLeft: 0.0,
                      percentRight: 0.0,
                    ),
                    child: Image(
                      image: AssetImage(logo),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ShapeOfView(
                        height: 200.0,
                        width: 175.0,
                        shape: BubbleShape(
                          position: BubblePosition.Bottom,
                          arrowPositionPercent: 0.5,
                          borderRadius: 16.0,
                          arrowHeight: 48.0,
                          arrowWidth: 28.0,
                        ),
                        child: Container(
                          color: Color(0xFFC41A3B),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ShapeOfView(
                        height: 125.0,
                        width: 170.0,
                        shape: DiagonalShape(
                          position: DiagonalPosition.Top,
                          direction: DiagonalDirection.Left,
                          angle: DiagonalAngle.deg(angle: 12.0),
                        ),
                        child: Image(
                          image: AssetImage(logo),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ShapeOfView(
                        height: 170.0,
                        width: 170.0,
                        shape: StarShape(
                          noOfPoints: 5,
                        ),
                        child: Image(
                          image: AssetImage(roundedLogo),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ShapeOfView(
                        height: 170.0,
                        width: 170.0,
                        shape: StarShape(
                          noOfPoints: 10,
                        ),
                        child: Image(
                          image: AssetImage(roundedLogo),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ShapeOfView(
                        height: 170.0,
                        width: 170.0,
                        shape: PolygonShape(
                          numberOfSides: 5,
                        ),
                        child: Image(
                          image: AssetImage(roundedLogo),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ShapeOfView(
                        height: 170.0,
                        width: 170.0,
                        shape: PolygonShape(
                          numberOfSides: 8,
                        ),
                        child: Image(
                          image: AssetImage(roundedLogo),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
