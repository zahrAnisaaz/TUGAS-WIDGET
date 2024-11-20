import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputSelection extends StatefulWidget { //class -> lampu convert state
  const InputSelection({super.key});

  @override
  State<InputSelection> createState() => _InputSelectionState();
}

class _InputSelectionState extends State<InputSelection> {
  TextEditingController nama = TextEditingController(); //var = nama
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child:Column(
      children:  [
        TextField(
          controller: nama,
          obscureText: false,
          onChanged: (a){
            setState(() {});
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text('Input Nama'), //bisa jadi labelText: 'Nama'
          ),
        ),
        Text(nama.text ),
      ],
      )
    );//pilihan ngga muncul pake control spasi
  }
}