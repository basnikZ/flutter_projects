import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click';
  String secondButtonName = 'Click';
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'To-do List',
          ),
        ),
        body: Center(
          child: currentIndex == 0
              ? Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            buttonName = 'Clicked';
                          });
                        },
                        child: Text(buttonName),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            secondButtonName = 'Clicked';
                          });
                        },
                        child: Text(secondButtonName),
                      ),
                    ],
                  ),
                )
              : Image.network(
                  'https://assets.goaaa.com/image/upload/c_fill,g_auto,w_1170,h_593,q_auto:best/v1647565564/singularity-migrated-images/northern-lights-aurora-borealis-fairbanks-alaska-via-magazine-aaa-bucket-list-experience-shutterstock_695456167.jpg.jpg'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Alarm',
              icon: Icon(
                Icons.access_alarm,
                color: Colors.red,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
