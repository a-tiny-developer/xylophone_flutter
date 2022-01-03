import 'package:flutter/material.dart';

import '../models/models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Column(
              children: Notes.soundBars,
            );
          } else {
            return Row(
              children: Notes.soundBars,
            );
          }
        },
      ),
    );
  }
}
