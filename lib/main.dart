import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:flutter_villains/villains/villains.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Stack(
        children: [
          WaveWidget(
            config: CustomConfig(
              gradients: [
                [Colors.blue, Colors.blue.shade200],
                [Colors.blue.shade200, Colors.blue.shade100],
              ],
              durations: [5000, 4000],
              heightPercentages: [0.25, 0.30],
              blur: MaskFilter.blur(BlurStyle.solid, 10),
              gradientBegin: Alignment.topLeft,
              gradientEnd: Alignment.bottomRight,
            ),
            waveAmplitude: 0,
            size: Size(
              double.infinity,
              double.infinity,
            ),
          ),
          Center(
            child: Villain(
              villainAnimation: VillainAnimation.fade(),
              child: Container(
                width: 200,
                height: 100,
                color: Colors.white,
                child: Center(
                  child: Text(
                    'Hello World',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
