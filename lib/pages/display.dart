import 'package:flutter/material.dart';
class Display extends StatelessWidget {
  final title= '展示';
  final items = new List<String>.generate(10, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
          centerTitle: true,
          leading:Builder(
            builder: (BuildContext con) {
              return IconButton(
                icon: new Icon(Icons.arrow_back),
                tooltip: '返回上一级',
                onPressed: () {
                  Navigator.pop(context,true);
                },
              );
            },
          ),
          ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return new Image.asset('images/banner.png');
          },
        ),
      ),
    );
  }
}