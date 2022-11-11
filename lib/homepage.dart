import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:math_lab_camera/camera.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Math Camera Page Example")),
      body: SafeArea(
        child: Center(
            child: ElevatedButton(
          onPressed: () async {
            await availableCameras().then((value) => Navigator.push(context,
                MaterialPageRoute(builder: (_) => Camera(cameras: value))));
          },
          child: const Text("Take a Picture"),
        )),
      ),
    );
  }
}
