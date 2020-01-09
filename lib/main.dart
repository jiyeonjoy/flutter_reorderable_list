import 'package:flutter/material.dart';
import 'package:flutter_text0108/my_home.dart';
import 'package:flutter_text0108/scroll.dart';
import 'package:flutter_text0108/spring.dart';
import 'package:flutter_text0108/dismissable.dart';
import 'package:flutter_text0108/default.dart';
import 'package:flutter_text0108/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primaryColor: Colors.cyan,
//      ),
//      home: HomePage(title: "Home",),
//    );


    return MaterialApp(
      title: 'Flutter Rerderable List',
      theme: ThemeData(
        dividerColor: Color(0x50000000),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Reorderable List'),
    );




  }
}


class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(color: Colors.cyan[900]),),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text("Default"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DefaultPage()),
              );
            },
          ),
          RaisedButton(
            child: Text("Menu"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MenuPage()),
              );
            },
          ),
          RaisedButton(
            child: Text("Spring settings"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SpringPage()),
              );
            },
          ),
          RaisedButton(
            child: Text("Scrolling"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScrollPage()),
              );
            },
          ),
          RaisedButton(
            child: Text("Dismissable"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DismissablePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}