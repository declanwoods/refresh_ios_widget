import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:refresh_ios_widget/refresh_ios_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Refresh All Widgets App'),
        ),
        body: Center(
            child: FlatButton(
          onPressed: () async {
            await RefreshIosWidget.refreshAllWidgets();
          },
          child: Text("Refresh"),
        )),
      ),
    );
  }
}
