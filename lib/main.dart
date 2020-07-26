import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color fillColorNight = Colors.white;
  Color fillColor = Colors.white;
  Color buttonTextColor = Colors.black;
  Color avatarColor = Colors.deepOrange;
  Color scaffoldColor = Colors.white;
  Color textColor = Colors.black;
  double lightelevation = 0.0;
  double nightelevation = 0.0;
  Color containerColor = Colors.grey[200];
  Icon themeIcon =
      Icon(Icons.brightness_1, color: Colors.deepOrange, size: 90.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: scaffoldColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Favorite Theme',
            style: TextStyle(
                color: Colors.grey[700],
                fontFamily: 'Roboto',
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
          backgroundColor: Colors.grey[200],
          onPressed: null,
        ),
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 60.0, vertical: 60.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: avatarColor,
                  radius: 65.0,
                  child: themeIcon,
                ),
                SizedBox(
                  height: 70.0,
                ),
                Text(
                  'Choose a style',
                  style: TextStyle(
                      color: textColor,
                      fontFamily: 'Roboto',
                      fontSize: 18.2,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Personnalisez votre interface. Day or Night',
                  style: TextStyle(
                      color: textColor,
                      fontFamily: 'Roboto',
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  color: containerColor,
                  child: Row(
                    children: <Widget>[
                      RawMaterialButton(
                        elevation: lightelevation,
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 30.0),
                        shape: StadiumBorder(),
                        splashColor: Colors.grey,
                        fillColor: fillColor,
                        child: Text(
                          'light',
                          style:
                              TextStyle(fontSize: 20.0, color: buttonTextColor),
                        ),
                        onPressed: () {
                          setState(() {
                            themeIcon = Icon(Icons.brightness_1,
                                color: Colors.deepOrange, size: 90.0);
                            textColor = Colors.black;
                            avatarColor = Colors.deepOrange;
                            scaffoldColor = Colors.white;
                            fillColor = Colors.white;
                            fillColorNight = Colors.grey[200];
                            buttonTextColor = Colors.black;
                            lightelevation = 20.0;
                            nightelevation = 0.0;
                            containerColor = Colors.grey[200];
                          });
                        },
                      ),
                      SizedBox(
                        width: 35.0,
                      ),
                      RawMaterialButton(
                        elevation: nightelevation,
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 30.0),
                        shape: StadiumBorder(),
                        splashColor: Colors.grey,
                        fillColor: fillColorNight,
                        child: Text(
                          'night',
                          style:
                              TextStyle(fontSize: 20.0, color: buttonTextColor),
                        ),
                        onPressed: () {
                          setState(() {
                            themeIcon = Icon(Icons.brightness_3,
                                color: Colors.indigo[700], size: 133.0);
                            textColor = Colors.white;
                            avatarColor = Colors.black;
                            scaffoldColor = Colors.black12;
                            buttonTextColor = Colors.white;
                            fillColor = Colors.black;
                            fillColorNight = Colors.grey[800];
                            nightelevation = 20.0;
                            lightelevation = 0.0;
                            containerColor = Colors.black;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
