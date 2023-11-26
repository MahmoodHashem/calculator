import 'package:flutter/material.dart';
import 'calculator.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
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
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    color: Colors.grey,
                    child: TextField(
                      textAlign: TextAlign.center,
                      onChanged: (newValue){
                        setState(() {
                          num1 = int.parse(newValue);
                        });

                      },
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                          labelText: "Enter First Number",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    color: Colors.grey,
                    child: TextField(
                      textAlign: TextAlign.center,
                      cursorColor: Colors.black,
                     onChanged: (newValue){
                        setState(() {
                          num2 = int.parse(newValue);
                        });
                     },
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(
                          color: Colors.black
                        ),
                          labelText: "Enter Seccond Number",),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      color: Colors.grey,
                        onPressed: (){
                        setState(() {
                          Calculator c = Calculator(num1.toDouble(), num2.toDouble());
                          result = c.getSum();
                        });
                        },
                        child: const Text(
                          "+",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        )),
                    MaterialButton(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        color: Colors.grey,
                      onPressed: (){
                          setState(() {
                            Calculator c = Calculator(num1.toDouble(), num2.toDouble());
                            result = c.getSubtraction();
                          });

                      },
                        child: const Text(
                          "-",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        )),
                    MaterialButton(
                        padding:const EdgeInsets.only(left: 8, right: 8),
                        color: Colors.grey,
                        onPressed: (){
                          setState(() {
                            Calculator c = Calculator(num1.toDouble(), num2.toDouble());
                            result = c.getMultiplication();
                          });

                        },
                        child: const Text(
                          "*",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        )),
                    MaterialButton(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        color: Colors.grey,
                        onPressed: (){
                          setState(() {
                            Calculator c = Calculator(num1.toDouble(), num2.toDouble());
                            result = c.getDivision();
                          });

                        },
                        child: Text(
                          "/",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                        )),
                  ],
                ),
                Container(
                  height: 60,
                  width: 200,
                  color: Colors.white,
                  child: Center(
                    child: Text(result,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
