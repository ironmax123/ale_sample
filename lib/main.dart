import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project Template',
      theme: ThemeData(),
      home: const HomePage(),
    ),
  );
}