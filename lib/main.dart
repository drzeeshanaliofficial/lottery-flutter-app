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
  Random randomNumber = Random();
  int x = 0;
  int winningNumber = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.savings_outlined,
            size: 30,
          ),
          title: const Text('Lottery App'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.attach_money,
              size: 40,
              color: Colors.red,
            ),
            Center(
              child: Text(
                'Lottery Winning Number is $winningNumber\n',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: x == winningNumber
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.sentiment_satisfied_outlined,
                            color: Colors.yellow.shade800,
                            size: 40,
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 30, right: 30, top: 15),
                            child: Text(
                              'Congratulations!\nYou win the lottery.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.sentiment_dissatisfied_outlined,
                            color: Colors.yellow.shade800,
                            size: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 15),
                            child: Text(
                              'Oops! Better luck next time. Your number is $x. Please try again.',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            x = randomNumber.nextInt(10);
            setState(() {});
            //print(x);
          },
          child: const Icon(Icons.refresh_outlined),
        ),
      ),
    );
  }
}
