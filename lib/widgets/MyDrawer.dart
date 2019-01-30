import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  MyDrawerState createState() => new MyDrawerState();
}

class MyDrawerState extends State<MyDrawer> {
  Widget userHeader = new UserAccountsDrawerHeader(
    accountName: new Text('fy', style: TextStyle(fontWeight: FontWeight.bold),),
    accountEmail: new Text('FY@123.COM'),
    currentAccountPicture: new CircleAvatar(
      backgroundImage: AssetImage('images/user.jpg')
    ),
    decoration: BoxDecoration(
      color: Colors.yellow[400],
      image: DecorationImage(
        image: AssetImage('images/photo-theme.jpg'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight)
      )
    ),
  );
  @override
  Widget build(BuildContext context) {
    return new Drawer(
        elevation: 0.0,
        child: ListView(
          children: <Widget>[
            userHeader,
            ListTile(
              title: Text('message',textAlign: TextAlign.right),
              trailing: Icon(Icons.message,color: Colors.black12,size: 22.0,),
              onTap: ()=> Navigator.pop(context),
            ),
            ListTile(
              title: Text('Favorite',textAlign: TextAlign.right),
              trailing: Icon(Icons.favorite,color: Colors.black12,size: 22.0,),
              onTap: ()=> Navigator.pop(context),
            ),
            ListTile(
              title: Text('Settings',textAlign: TextAlign.right),
              trailing: Icon(Icons.settings,color: Colors.black12,size: 22.0,),
              onTap: ()=> Navigator.pop(context),
            ),
          ],
        ));
  }
}
