import 'package:flutter/material.dart';
import 'package:keyboard_visibility_detector/keyboard_visibility_detector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(),
              KeyboardVisibilityDetector(
                builder: (context, child, isKeyboardVisible) {
                  if (isKeyboardVisible) {
                    return const SizedBox(
                      height: 200,
                    );
                  }
                  return const SizedBox(
                    height: 0,
                  );
                },
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          )),
    );
  }
}
