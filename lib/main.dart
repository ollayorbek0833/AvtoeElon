import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/home_page.dart';

void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CarsList(),
    );
  }
}
