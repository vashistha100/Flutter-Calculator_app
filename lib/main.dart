import 'package:calculator_app/button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var userQuestion = 'question';
  var userAnswer = 'answer';
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(userQuestion),
                        )),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(userAnswer),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
               
                width: 360,
                child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 11,
                    
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return MyButton(
                          buttonText: buttons[index],
                          color: Colors.green,
                          textColor: Colors.white);
                    } else if (index == 1) {
                      return MyButton(
                          buttonText: buttons[index],
                          color: Colors.red,
                          textColor: Colors.white);
                    } else {
                      return MyButton(
                          buttonText: buttons[index],
                          color: isOperator(buttons[index])
                              ? Colors.deepPurple
                              : Colors.white,
                          textColor: isOperator(buttons[index])
                              ? Colors.white
                              : Colors.deepPurple);
                    }
                  },
                ),
              ),
            ),
          ],
        ));
  }
}

bool isOperator(String x) {
  if (x == '%' || x == 'x' || x == '/' || x == '-' || x == '+' || x == '=') {
    return true;
  } else {
    return false;
  }
}
