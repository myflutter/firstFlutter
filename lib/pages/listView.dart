import 'package:flutter/material.dart';
class SelectedListItem extends StatefulWidget {
  @override
  SelectedListItemState createState()=> new SelectedListItemState();

}
class SelectedListItemState extends State<SelectedListItem> {
  final title= '列表';
  final _items = new List<String>.generate(10000, (i) => "Item $i");
   int _selectedIndex= -1;
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
          itemCount: _items.length,
          itemBuilder: (itemContext,index) {
            return new ListTile(
              leading: new Icon(Icons.add_to_home_screen),
              title: new Text('this is item $index'),
              trailing: new Icon(
                _selectedIndex == index?Icons.favorite:Icons.favorite_border,
                color: _selectedIndex == index?Colors.red: null,
                ),
              onTap: () {
                setState(() {
                    _selectedIndex =index;           
                });
              },
            );
          },
        ),
      ),
    );
  }
}