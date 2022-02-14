import 'package:flutter/material.dart';
import 'package:tracking/track.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
                child: Center(
                  child: Image(
                    width: 200,
                    height: 200,
                    image: AssetImage(
                        'images/SeekPng.com_delivery-png_1145491.png'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Pick & go',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                child: Text(
                  "Pic & Go is Sri Lanka's no 01 unique delivery service. We offering the cheapest, quickest and safest service in door to door delivery.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              // const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Enter tracking code",
                      fillColor: Colors.white70),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 380,
                height: 50,
                color: Colors.white,
                child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.black)))),
                  onPressed: () {
                    Navigator.pushNamed(context, Track.id);
                  },
                  child: const Text(
                    'Track',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
