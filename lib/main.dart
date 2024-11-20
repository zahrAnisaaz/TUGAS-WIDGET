import 'package:flutter/material.dart';
import 'package:flutter_application_2/BeritaTeknologi.dart';
import 'package:flutter_application_2/Homepage.dart';
import 'package:flutter_application_2/Scaffold_widget.dart';
import 'package:flutter_application_2/TokoMakan.dart';
import 'package:flutter_application_2/TugasWidget.dart';
import 'package:flutter_application_2/cobaaja.dart';
import 'package:flutter_application_2/Aplikasi.dart';
import 'package:flutter_application_2/dialog.dart';
import 'package:flutter_application_2/image_widget.dart';
import 'package:flutter_application_2/input_selection.dart';
import 'package:flutter_application_2/kalkulator.dart';
import 'package:flutter_application_2/perpustakaan.dart';
import 'package:flutter_application_2/scaffold2.dart';
import 'package:flutter_application_2/stack_position.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: InputSelection(),
    );
  }
}//control s jangan lupaa
