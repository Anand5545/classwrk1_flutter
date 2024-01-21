import 'dart:math';

import 'package:classwrk1_flutter/List%20ui.dart';
import 'package:classwrk1_flutter/tourismui/cities.dart';
import 'package:flutter/material.dart';

class citydetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tappedId = ModalRoute.of(context)?.settings.arguments;
    final citydetails = cities.firstWhere((e) => e["id"] == tappedId);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(cities["description"])
          ],
        ),
      ),
    );
  }
}
