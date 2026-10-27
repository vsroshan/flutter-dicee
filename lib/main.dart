import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _dicepageState();
}

class _dicepageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  void changedice() {
    leftdicenumber = Random().nextInt(6) + 1;
    rightdicenumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      changedice();
                    });
                  },
                  child: Image.asset('images/dice$leftdicenumber.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      changedice();
                    });
                  },
                  child: Image.asset('images/dice$rightdicenumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}
