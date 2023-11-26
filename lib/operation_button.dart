
import 'package:flutter/material.dart';

class OperationButton extends StatelessWidget {

  OperationButton({required this.operationIcon, required this.onPress});

  final String operationIcon;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: const EdgeInsets.only(left: 8, right: 8),
        color: Colors.grey,
        onPressed: onPress,
        child: Text(
          operationIcon,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ));
  }
}