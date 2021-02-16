import 'package:flutter/material.dart';
import 'package:flutter_animation_practice/animated_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyBody(),
    );
  }
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 50,
            color: Colors.transparent,
            child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.black,
                  borderRadius:
                      new BorderRadius.only(topLeft: const Radius.circular(40.0), topRight: const Radius.circular(40.0))),
            ),
          ),
        ],
      ),
    );
  }
}
