import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RowColumn extends StatelessWidget {
  const RowColumn ({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
      child: Container(
        child: Column(
          children: [
            Text("Pilih Karakter Ghiblimu"),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0,3),
                      )
                    ]
                    //border: Border.all(width: 2, color: Colors.grey)
                  ),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/totoro.jpeg"), 
                      width: 250,
                      ),
                      Text("Totoro")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding :EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0,3),
                      )
                    ]
                    //border: Border.all(width: 2, color: Colors.grey)
                  ),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/mimicry.jpeg"),
                      width: 250,
                      ),
                      Text("Mimicry"),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0,3),
                      )
                    ]
                    //border: Border.all(width: 2, color: Colors.grey)
                  ),
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/Calcifer.jpeg"),
                      width: 250,
                      ), 
                      Text("Calcifer")
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ),
    );
  }
} // butuh kesamping : row, butuh kebawah : column