import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/blank_screen.dart';

class SplashScreen extends StatefulWidget {
const SplashScreen({Key? key}) : super(key: key);
@override
State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
startSplashScreen() async {
var duration = const Duration(seconds: 5);
return Timer(duration, () {
Navigator.pushReplacement(
context,
MaterialPageRoute(builder: (context) => const Blankscreen()));
});
}
@override
void initState() {
super.initState();
startSplashScreen();
}
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.blueGrey,
body: Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Center(
child: Image.asset(
"Estehajib-Jumbo.jpg",
width: 200.0,
height: 100.0,
fit: BoxFit.contain,
),
),
const SizedBox(
height: 24.0,
),
const Text(
"Es Teh Ajib",
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 35.0,
),
),
],
),
);
}
}