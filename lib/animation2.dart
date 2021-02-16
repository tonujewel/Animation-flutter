import 'package:flutter/material.dart';

class Animation2 extends StatefulWidget {
  @override
  _Animation2State createState() => _Animation2State();
}

class _Animation2State extends State<Animation2> with TickerProviderStateMixin{

  double containerHeight = 80.0;
  double containerWidth = 150.0;


  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.only(
        topLeft: const Radius.circular(100.0),
        topRight: const Radius.circular(100.0),
      ),
    ),
    end: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(10)
    ),
  );

  AnimationController _controller;

  bool _first = true;

  initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            DecoratedBoxTransition(
              position: DecorationPosition.background,
              decoration: decorationTween.animate(_controller),
              child: Container(
                child: Container(
                  width: containerWidth,
                  height: containerHeight,
                  padding: EdgeInsets.all(20),
                  child: FlutterLogo(),
                ),
              ),
            ),
            SizedBox(height: 20,),
            FlatButton(
              onPressed: () {

                setState(() {
                  containerHeight = 400.0;
                  containerWidth = 380.0;
                });


                if (_first) {
                  _controller.forward();
                } else {
                  _controller.reverse();
                }
                _first = !_first;
              },
              child: Text(
                "Click Me!",
              ),
            )
          ],
        ),
      ),
    );
  }
}
