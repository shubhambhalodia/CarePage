import 'package:care_plans/primecare.dart';
import 'package:flutter/material.dart';

import 'Basiccare.dart';
import 'holisticcare.dart';

class CarePage extends StatefulWidget {
  const CarePage({Key? key}) : super(key: key);

  @override
  State<CarePage> createState() => _CarePageState();
}
bool is3month = true;
class _CarePageState extends State<CarePage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text("Care Plans",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              Row(
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
                    color: is3month == false ? Colors.black : Colors.white,
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
                    color: is3month == true ? Colors.black : Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10),
              BasicCare(),
              PrimeCare(),
              HolisticCare(),


            ],
          ),
        ),
      ),
    );
  }
}