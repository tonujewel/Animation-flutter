import 'package:flutter/material.dart';

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  double containerHeight = 80.0;
  double containerWidth = 150.0;
  double bottomMargin = 0.0;

  Widget child = Center(child: Text("START"));

  BoxDecoration boxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: const Radius.circular(100.0),
      topRight: const Radius.circular(100.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f5ff),
      body: Stack(
        children: <Widget>[
      Positioned.fill(
        bottom: bottomMargin,
      child: Align(
          alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    containerHeight = 380.0;
                    containerWidth = 380.0;
                    bottomMargin = 30.0;
                    boxDecoration = BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    );

                    child = Column(
                      children: [Text("START"), Text("START"), Text("START")],
                    );
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 180),
                  width: containerWidth,
                  height: containerHeight,
                  decoration: boxDecoration,
                  child: child,
                ),
              )),
      ) ],
      ),
    );
  }
}
