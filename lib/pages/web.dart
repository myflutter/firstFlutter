import 'package:flutter/material.dart';

class Web extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'web',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('web page'),
          centerTitle: true,
        ),
        body: new Container(
          child: new Text(
            'web page contain',
            style: new TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w900,
              color: Colors.green[200]
            ),
          ),
          height: 200.0,
          width: 100.0
        ),
      ),
    );
  }
}