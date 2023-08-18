import 'package:flutter/material.dart';

import 'carepage.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  // bool is3month=true;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () {
            setState(() {
              is3month = false;
            });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "1 Month",
            style: TextStyle(
              color: is3month ? Colors.black : Colors.white,
            ),
          ),
          color: is3month == false ? Colors.blue : Colors.white,
        ),
        SizedBox(width: 10),
        MaterialButton(
          onPressed: () {
            setState(() {
              is3month = true;
            });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "3 Months",
            style: TextStyle(
              color: is3month ? Colors.white : Colors.black,
            ),
          ),
          color: is3month == true ? Colors.blue : Colors.white,
        ),
      ],
    );
  }
}
