import 'package:flutter/material.dart';

class OverflowView extends StatelessWidget {
  const OverflowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'This is a flutter test. Add more text to '
                      'force an overflow error',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(width: 30),
                  Icon(
                    Icons.flutter_dash,
                    size: 100,
                    color: Colors.blue,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
