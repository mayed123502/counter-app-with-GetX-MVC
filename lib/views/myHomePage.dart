// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_final_fields, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/counterController.dart';

class MyHomePage extends StatelessWidget {
  CounterController _controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              builder: (controller) => Text(
                "increment  ${controller.count}",
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: () {
                    _controller.increment();
                  },
                  child: const Icon(Icons.add),
                ),
                RaisedButton(
                  onPressed: () {
                    _controller.decrement();
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            RaisedButton(
              onPressed: () {
                Get.to(Home2());
              },
              child: const Text('Go to Anther  Page'),
            )
          ],
        ),
      ),
    );
  }
}

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("home 2"),
      ),
    );
  }
}
