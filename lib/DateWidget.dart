import 'dart:async';

import 'package:flutter/material.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({super.key});

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  DateTime selectedDate =DateTime.now();

  Future<Null>_selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context, 
      initialDate: selectedDate,
      firstDate: DateTime(2008, 3), 
      lastDate: DateTime(2101));
    if (picked !=null && picked != selectedDate)
    setState(() {
      selectedDate = picked;
    });
  }

  @override
  Widget build(BuildContext context) {
      return Center( 
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("${selectedDate.toLocal()}".split(" ")[0]),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _selectDate(context);
                print(selectedDate.day.toString() +
                "/" +
                selectedDate.month.toString() +
                "/" +
                selectedDate.year.toString());
              },
              child: Text('PilihTanggal'),
              ),
            ],
          ),
        );
      }
    }