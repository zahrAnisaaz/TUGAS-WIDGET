import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackPosition extends StatelessWidget {
  const StackPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 128, 174, 212), 
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            ),
        ),
        height: 250,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              child: Image(
                image: AssetImage("assets/money.png"),
                width: 200,
                ),
              ),
              Positioned(
                top: 18,
                child: Text(
                  "Saldo Rp.10.000.000, -",
                  style: TextStyle(fontSize: 14),
                ),
            ),
          ],
        )
        // Column(
        //   children: [
        //           Image(
        //             image: AssetImage("assets/money.png"),
        //             width: 200,
        //             //width: MediaQuery.of(context).size.width *35 / 100,//ukuran selebar layar
        //           ),
        //           Container(
        //             width: MediaQuery.of(context).size.width,
        //             padding:EdgeInsets.only(left: 10, right: 10),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Text("Saldo Rp. 10.000.000, -"),
        //                 Icon(Icons.verified_user),
        //               ],
        //             ),
        //           )
        //         ], 
        //       ),
            ),
          ]
        ),
      ), //container : wadah
    );
  }
}