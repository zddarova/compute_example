// ignore_for_file: avoid_print

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const CircularProgressIndicator(),
          ElevatedButton(
            child: const Text('start'),
            onPressed: () async {
              final sum = computationallyExpensiveTask(1000000000);


              // todo: uncomment this fix animation
              // final sum =
              //     await compute(computationallyExpensiveTask, 1000000000);
              print(sum);
            },
          )
        ],
      ),
    );
  }
}

int computationallyExpensiveTask(int value) {
  var sum = 0;
  for (var i = 0; i <= value; i++) {
    sum += i;
  }
  print('finished');
  return sum;
}
