import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int x = 0;
  Random random = Random();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('lotteryApp'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("Lottery winning number is $x")),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: x == 5
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.done_all_sharp,
                              size: 35,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Congratulations you have won the lottery $x",
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error,
                              size: 25,
                              color: Colors.red,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Better luck next time! your number is $x, \n  try again",
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            x = (random.nextInt(10));
            print(x);
            setState(() {});
          }),
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
