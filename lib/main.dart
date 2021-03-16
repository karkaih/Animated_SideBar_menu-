import 'package:flutter/material.dart';
import 'package:side_menu/theme.dart';

import 'classes/navigation_drawer.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Side Menu Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: drawerBackgroundColor,
        title: Text('Navigation Drawer'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/explorer-optimize.gif"))),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text(
                      "adventure App",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      splashColor: Colors.orange,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      color: Colors.redAccent,
                      child: Text(
                        "Open App",
                        style: TextStyle(fontSize: 23, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          NavigationDrawer(),
        ],

      ),
    );
  }
}