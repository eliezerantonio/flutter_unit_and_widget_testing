import 'package:flutter/material.dart';

import '../dialogs/dialogs.dart';

class ContentNotVisibleView extends StatelessWidget {
  const ContentNotVisibleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...Colors.primaries.map(
                (e) => Container(
                  height: 50,
                  color: e,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  showAlertDialog(
                    context,
                    message: 'AMAZING CONTENT',
                  );
                },
                child: const Text(
                  'show message',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
