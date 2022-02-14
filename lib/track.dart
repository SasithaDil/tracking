import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Track extends StatelessWidget {
  static const String id = 'track';
  const Track({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            const Center(
              child: Text(
                'Tracking',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Now you can track your shipment',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ReusableContainer(),
                SizedBox(width: 10),
                Text('Order confirmed'),
              ],
            ),
            const Icon(
              Icons.arrow_downward,
              size: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ReusableContainer(),
                SizedBox(width: 45),
                Text('Dispatched'),
              ],
            ),
            const Icon(
              Icons.arrow_downward,
              size: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ReusableContainer(),
                SizedBox(width: 50),
                Text('In transist'),
              ],
            ),
            const Icon(
              Icons.arrow_downward,
              size: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ReusableContainer(),
                SizedBox(width: 42),
                Text('Destination'),
              ],
            ),
            const Icon(
              Icons.arrow_downward,
              size: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ReusableContainer(),
                SizedBox(width: 50),
                Text('Delivered'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
    );
  }
}
