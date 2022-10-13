import 'package:flutter/material.dart';

class HomeTabpage extends StatefulWidget {
  const HomeTabpage({Key? key}) : super(key: key);

  @override
  State<HomeTabpage> createState() => _HomeTabpageState();
}

class _HomeTabpageState extends State<HomeTabpage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home'),
    );
  }
}
