import 'package:flutter/material.dart';
import 'calculator.dart';
import 'input.dart';
import 'operation_button.dart';

void main() {
  runApp(
     MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String result = " ";
  int num1 = 0;
  int num2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Calculator Application"),
        ),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.fromLTRB(8, 20, 8, 20),
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                color: Colors.black.withOpacity(0.5),
                 offset: const Offset(-5, 5)
              )]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Input(
                    labelText: "Enter First number",
                    onChange: (newValue){
                      setState(() {
                        num1 = int.parse(newValue);
                      });
                    },),
                Input(
                    labelText: "Enter second number",
                    onChange: (newValue){
                      setState(() {
                        num2 = int.parse(newValue);
                      });
                    },),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OperationButton(
                      operationIcon: "+",
                      onPress: (){
                        setState(() {
                        Calculator c = Calculator(num1.toDouble(), num2.toDouble());
                        result = c.getSum();
                      });

                    },),
                    OperationButton(
                      operationIcon: "-",
                      onPress: (){
                        setState(() {
                        Calculator c = Calculator(num1.toDouble(), num2.toDouble());
                        result = c.getSubtraction();
                      });

                    },),
                    OperationButton(
                      operationIcon: "*",
                      onPress: (){
                        setState(() {
                        Calculator c = Calculator(num1.toDouble(), num2.toDouble());
                        result = c.getMultiplication();
                      });

                    },),
                    OperationButton(
                      operationIcon: "/",
                      onPress: (){
                        setState(() {
                        Calculator c = Calculator(num1.toDouble(), num2.toDouble());
                        result = c.getDivision();
                      });

                    },),
                  ],
                ),
                Container(
                  height: 60,
                  width: 200,
                  color: Colors.white,
                  child: Center(
                    child: Text(result,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}




