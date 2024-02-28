import 'dart:async';

import 'package:flutter/material.dart';


void main() {
  runApp(StreakPage());
}

class StreakPage extends StatefulWidget {
  @override
  _StreakPageState createState() => _StreakPageState();
}

class _StreakPageState extends State<StreakPage> {
  int jours = 0;
  Timer? _timer;

    @override
  void initState() {
    super.initState();
    // Démarre le timer qui se déclenche chaque seconde
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        jours++;
      });
    });
  }

  @override
  void dispose() {
    // Arrête le timer lorsque l'état est supprimé
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Streak: $jours days',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    jours++;
                  });
                  print("hi $jours");
                },
                child: Text('Day without Porn'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    jours = 0;
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
