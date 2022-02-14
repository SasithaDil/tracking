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
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
            child: Center(
              child: Image(
                width: 100,
                height: 100,
                image: AssetImage('images/i.png'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Pick & go',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 20),
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
    );
  }
}
