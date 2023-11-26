
import 'package:flutter/material.dart';

class Input extends StatelessWidget {

  Input({required this.labelText, required this.onChange});

  final String labelText;
  final Function(String) onChange;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        color: Colors.grey,
        child: TextField(
          textAlign: TextAlign.center,
          cursorColor: Colors.black,
          onChanged: onChange,
          decoration:  InputDecoration(
            labelStyle: TextStyle(
                color: Colors.black
            ),
            labelText: labelText,),
        ),
      ),
    );
  }
}

