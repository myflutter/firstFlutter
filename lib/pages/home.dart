import 'package:flutter/material.dart';
import '../widgets/MyDrawer.dart';
import '../widgets/MybottomNavigationBar.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final title = '我的App';
  final items = new List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: title,
        home: new DefaultTabController(
          length: 3,
          child: new Scaffold(
              backgroundColor: Colors.grey[100],
              appBar: new AppBar(
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(Icons.menu),
                      color: Colors.black,
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                    );
                  },
                ),
                title: new Text(
                  title,
                  style: new TextStyle(color: Colors.black),
                ),
                centerTitle: true,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.black,
                    onPressed: () => debugPrint('search'),
                  )
                ],
                backgroundColor: Theme.of(context).backgroundColor,
                bottom: new TabBar(
                  unselectedLabelColor: Colors.black38,
                  indicatorColor: Colors.black54,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1.0,
                  tabs: <Widget>[
                    new Tab(
                      icon: Icon(
                        Icons.local_florist,
                        color: Colors.black,
                      ),
                    ),
                    new Tab(
                      icon: Icon(Icons.history, color: Colors.black),
                    ),
                    new Tab(
                      icon: Icon(Icons.directions_bike, color: Colors.black),
                    )
                  ],
                ),
              ),
              drawer: new MyDrawer(),
              body: new TabBarView(
                children: <Widget>[
                  new ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return new Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.album),
                              title: Text('The Enchanted Nightingale'),
                              subtitle: Text(
                                  'Music by Julie Gable. Lyrics by Sidney Stein.'),
                            ),
                            ButtonTheme.bar(
                              // make buttons use the appropriate styles for cards
                              child: ButtonBar(
                                children: <Widget>[
                                  FlatButton(
                                    child: const Text('BUY TICKETS'),
                                    onPressed: () {/* ... */},
                                  ),
                                  FlatButton(
                                    child: const Text('LISTEN'),
                                    onPressed: () {/* ... */},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Icon(
                    Icons.history,
                    size: 128.0,
                    color: Colors.black12,
                  ),
                  Icon(
                    Icons.directions_bike,
                    size: 128.0,
                    color: Colors.black12,
                  )
                ],
              ),
              bottomNavigationBar: new MyBottomNavigationBar()),
        ));
  }
}
