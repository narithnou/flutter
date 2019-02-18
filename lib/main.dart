import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyState();
  }
}

class MyState extends State<MyApp> {
  @override
  Widget build(BuildContext ext) {
    // TODO: implement build
    return new MaterialApp(
      title: 'HI',
      home: new Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                new UserAccountsDrawerHeader(
                    accountName: Text("Narith Nou"),
                    accountEmail: Text("nounarith95@gmail.com"),
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        fit: BoxFit.scaleDown,
                          image: new AssetImage("assets/CBCLogo.jpg")
                      )
                    ),
                    currentAccountPicture: new GestureDetector(
                      child: new CircleAvatar(
                        backgroundImage: new AssetImage("assets/mypic.jpg"),
                      ),
                    )

                ),
                ListTile(
                  title: Text("Dashboard"),
                  trailing: new Icon(Icons.dashboard),
                  onTap: () {
                    Navigator.pop(context);
  },
                ),
                ListTile(
                  title: Text("Inbox"),
                  trailing: new Icon(Icons.inbox),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Request"),
                  trailing: new Icon(Icons.send),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Profile"),
                  trailing: new Icon(Icons.people),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Setting"),
                  trailing: new Icon(Icons.settings),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Logout"),
                  trailing: new Icon(Icons.exit_to_app),
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Exit"),
                  trailing: new Icon(Icons.cancel),
                  onTap: ()=> Navigator.of(context).pop(),
                ),
              ],
            ),
          ),
          appBar: new AppBar(
            title: new Center(
              child: new Text("PE CBC"),
            ),
          ),
          body: new Center(
            child: new RaisedButton(
              child: const Text('Connect with Twitter'),
              color: Theme.of(context).accentColor,
              elevation: 4.0,
              splashColor: Colors.blueGrey,
              onPressed: () {
                // Perform some action
                showDialog(context: null);
              },
            ),
          )),
    );
  }
}
