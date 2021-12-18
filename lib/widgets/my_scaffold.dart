import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'drawer.dart';

class MyScaffold extends StatefulWidget {
  final Widget child;
  const MyScaffold({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const AppDrawer(),
      body: widget.child,
    );
  }
}
