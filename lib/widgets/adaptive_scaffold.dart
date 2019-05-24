import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzler/ui/quizzler.dart';

class AdaptiveScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        home: CupertinoPageScaffold(
          child: Quizzler(),
          backgroundColor: Colors.grey.shade900,
          /*navigationBar: CupertinoNavigationBar(
            backgroundColor: Colors.redAccent,
            heroTag: Text(
              "Xylophone App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),*/
        ),
      );
    } else {
      return MaterialApp(
        home: Scaffold(
          body: Quizzler(),
          backgroundColor: Colors.grey.shade900,
          /*appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text(
              "Xylophone App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),*/
        ),
      );
    }
  }
}
