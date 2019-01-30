import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  MyBottomNavigationBarState createState() => new MyBottomNavigationBarState();
}

class MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
        BottomNavigationBarItem(icon: Icon(Icons.history), title: Text('图片')),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('列表')),
      ],
      currentIndex: _selectedIndex,
      
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
        // switch (index) {
        //   case 0:
        //     Navigator.push(context,
        //         MaterialPageRoute<void>(builder: (BuildContext context) {
        //       // return new Home();
        //     }));
        //     break;
        //   case 1:
        //     Navigator.push(context,
        //         MaterialPageRoute<void>(builder: (BuildContext context) {
        //       // return new Display();
        //     }));
        //     break;
        //   case 2:
        //     Navigator.push(context,
        //         MaterialPageRoute<void>(builder: (BuildContext context) {
        //       // return new SelectedListItem();
        //     }));
        //     break;
        // }
      },
    );
  }
}
