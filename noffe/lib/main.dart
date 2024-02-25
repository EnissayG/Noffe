import 'package:flutter/material.dart';

void main() {
  runApp(StreakPage());
}

class StreakPage extends StatefulWidget {
  @override
  _StreakPageState createState() => _StreakPageState();
}

class _StreakPageState extends State<StreakPage> {
  int streakDay = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 203, 255, 244),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Streak: $streakDay days',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    streakDay++;
                  });
                  print("hi $streakDay");
                },
                child: Text('Day without Porn'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    streakDay = 0;
                  });
                },
                child: Text('Reset Streak'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
