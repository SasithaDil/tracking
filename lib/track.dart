import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Track extends StatelessWidget {
  static const String id = 'track';
  const Track({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Container(
                  child: Image(
                    image: AssetImage(
                        'images/SeekPng.com_tracking-icon-png_3818797.png'),
                    height: 100,
                    width: 100,
                  ),
                ),
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
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(125, 0, 10, 0),
                      child: ReusableContainer(),
                    ),
                    Text('Order confirmed'),
                  ],
                ),
                const Icon(
                  Icons.arrow_downward,
                  size: 40,
                ),
                // Padding(
                //   padding:EdgeInsets.fromLTRB(10, 0, 10.0, 0)
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(125, 0, 10, 0),
                      child: ReusableContainer(),
                    ),
                    // SizedBox(width: 45),
                    Text('Dispatched'),
                  ],
                ),
                // ),
                const Icon(
                  Icons.arrow_downward,
                  size: 40,
                ),

                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(125, 0, 10, 0),
                      child: ReusableContainer(),
                    ),
                    // SizedBox(width: 50),
                    Text('In transist'),
                  ],
                ),
                const Icon(
                  Icons.arrow_downward,
                  size: 40,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(125, 0, 10, 0),
                      child: ReusableContainer(),
                    ),
                    // SizedBox(width: 42),
                    Text('Destination'),
                  ],
                ),
                const Icon(
                  Icons.arrow_downward,
                  size: 40,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(125, 0, 10, 0),
                      child: ReusableContainer(),
                    ),
                    Text(
                      'Delivered',
                    ),
                  ],
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
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
