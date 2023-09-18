import 'package:flutter/material.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(),
      body: orientation == Orientation.portrait
          ? Container(color: Colors.blue,)
          : Container(color: Colors.green,)
    );
  }
}
