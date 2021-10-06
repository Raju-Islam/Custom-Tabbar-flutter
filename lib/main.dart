import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: new ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
 
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text("Tab Bar"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: <Widget>[
            // going to change tabs on index
            Spacer(),

            _index == 0
                ? Home1(context)
                : (_index == 1
                    ? Search(context)
                    : _index == 2
                        ? Notification(context)
                        : Settings(context)),

            Padding(
              padding: EdgeInsets.only(
                  top: 10,
                  left: 18,
                  right: 18,
                  bottom: MediaQuery.of(context).padding.bottom),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _index == 0 ? Colors.red : Colors.transparent,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.00, horizontal: 12.00),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color: _index == 0 ? Colors.white : Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.00),
                              child: Text(
                                _index == 0 ? "Home" : "",
                                style: new TextStyle(
                                    color: _index == 0
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _index == 1 ? Colors.red : Colors.transparent,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.00, horizontal: 12.00),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.search,
                              color: _index == 1 ? Colors.white : Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.00),
                              child: Text(
                                _index == 1 ? "Search" : "",
                                style: new TextStyle(
                                    color: _index == 1
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _index == 2 ? Colors.red : Colors.transparent,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.00, horizontal: 12.00),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.notifications,
                              color: _index == 2 ? Colors.white : Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.00),
                              child: Text(
                                _index == 2 ? "Notifications" : "",
                                style: new TextStyle(
                                    color: _index == 2
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 3;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _index == 3 ? Colors.red : Colors.transparent,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.00, horizontal: 12.00),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.settings,
                              color: _index == 3 ? Colors.white : Colors.black,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.00),
                              child: Text(
                                _index == 3 ? "Settings" : "",
                                style: new TextStyle(
                                    color: _index == 3
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Home1(BuildContext context) {
    return Expanded(
        child: Text(
      "Home",
      style: new TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ));
  }

  Widget Search(BuildContext context) {
    return Expanded(
      child: new Text(
        "Search",
        style: new TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget Notification(BuildContext context) {
    return Expanded(
      child: new Text(
        "Notification",
        style: new TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget Settings(BuildContext context) {
    return Expanded(
      child: new Text(
        "Settings",
        style: new TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
