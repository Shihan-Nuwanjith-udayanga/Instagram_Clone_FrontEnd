import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Instergram Clone App",
        theme: ThemeData(primarySwatch: Colors.pink),
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text("Instagram Clone"),
      // ),
      
      body: Container(
        color: Colors.pink[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130,),
              child: Container(
                width: 300,
                height: 100,
                // color: Colors.red,
                child: Container(
                  child: Column(
                    children: [
                      Text("Instagram",style: TextStyle(color: Colors.white,fontSize: 50))
                    ],
                  ),
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.pink[800],
                            boxShadow: [
                              BoxShadow(color: Colors.pink[800], blurRadius: 2)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Username",
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(color: Colors.grey[400]))),
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0, bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.pink[800],
                            boxShadow: [
                              BoxShadow(color: Colors.pink[800], blurRadius: 2)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(color: Colors.grey[400]))),
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              color: Colors.pink[800],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0)
                        .copyWith(right: 110, left: 110),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text("Log in",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    Text(
                      "Fogot your login details? Get help signing in.",
                      style: TextStyle(color: Colors.white70),
                    ),
                    Text(""),
                    Text(""),
                    Text(
                        "------------------------------   OR   --------------------------------",
                        style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0)
                        .copyWith(right: 90, left: 90),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text("Log in with Facebook",
                          style:
                              TextStyle(color: Colors.white70, fontSize: 17)),
                    ),
                  )
                ],
              ),
            ),
            Container(),
            Container(
              color: Colors.pink[800],
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.all(0.0).copyWith(right: 78, left: 78),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text("Don't have an account? Sign up.",
                          style: TextStyle(color: Colors.white54)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
