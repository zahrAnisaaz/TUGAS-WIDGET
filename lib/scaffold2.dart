import 'package:flutter/material.dart';
import 'package:flutter_application_2/dialog.dart';
import 'package:flutter_application_2/input_selection.dart';

class Scaffold2 extends StatelessWidget {
  const Scaffold2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(),
          DialogWidget(),
          InputSelection(),
        ],
      ),
    );
  }
}