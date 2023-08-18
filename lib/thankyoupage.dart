import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThankYOu extends StatelessWidget {
  const ThankYOu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Thank You",style: TextStyle(fontSize: 50,color: Colors.grey),),),
    );
  }
}
