import 'package:flutter/material.dart';

class CommingSoonPage extends StatelessWidget {
  const CommingSoonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Coming soon...",
            style: Theme.of(context).textTheme.headline1!),
      ),
    );
  }
}
