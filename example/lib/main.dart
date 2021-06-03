import 'package:flutter/material.dart';

import 'package:get_safe_insets/get_safe_insets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  EdgeInsets? _safeInsets;

  @override
  void initState() {
    super.initState();
    _loadSafeInsets();
  }

  void _loadSafeInsets() async {
    final safeInsets = await getSafeInsets();
    setState(() => _safeInsets = safeInsets);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Safe insets: $_safeInsets\n'),
        ),
      ),
    );
  }
}
