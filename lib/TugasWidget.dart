import 'package:flutter/material.dart';

class Tugaswidget extends StatelessWidget {
  const Tugaswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
        backgroundColor: Color.fromARGB(255, 168, 166, 166),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const[
            Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Berita Terhangat",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Tanding Hari ini",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}