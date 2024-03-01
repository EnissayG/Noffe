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
      theme: ThemeData(brightness: Brightness.light, primarySwatch: Colors.deepPurple) ,
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      
      
      home: Scaffold(
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Noffe", style : Theme.of(context).textTheme.headlineLarge
              ),

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
              )
              , BottomNavigationBar(items: const[
                BottomNavigationBarItem(label: "Streak",icon: Icon(Icons.local_fire_department,color: Colors.orange,)),
                BottomNavigationBarItem(label: "Profil",icon: Icon(Icons.person,color: Colors.green,))
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
