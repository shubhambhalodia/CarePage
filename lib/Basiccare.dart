import 'package:care_plans/thankyoupage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'carepage.dart';

class BasicCare extends StatefulWidget {
  const BasicCare({super.key});

  @override
  State<BasicCare> createState() => _BasicCareState();
}

class _BasicCareState extends State<BasicCare> {
  // bool is3month=true;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Basic Care",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Reliable pediatric care within 15 minutes.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height:15,),
              Row(children: [
                Icon(Icons.check_circle),
                SizedBox(width: 10,),
                Expanded(child: Text("Instant answers on WhatsApp by Pediatricians (8AM-10PM)")),
                InkWell(
                    onTap:(){
                      showDialog(context: context, builder: (_)=>CupertinoAlertDialog(
                        title:Text("T&C"),
                        content:Text("Fair Usage Policy (FUP) stipulates that the plan would cover only 1 baby. If you want the plan to cover all your babies, then kindly reach out to support using the WhatsApp link so that we can create a discounted plan that covers all children of yours as per their individual needs.Furthermore, the free consultations need to be booked through support during the day, and for free night consultations (where applicable), we request you to use the feature only in case of emergencies. We leave it to your judgement as to what would count as an emergency, but we honestly hope that you would not misuse the feature."),
                        actions: [CupertinoDialogAction(child: Text("Close"),onPressed: () {
                        Navigator.of(context).pop();
                      },)
                      ,],
                      ));
                    },
                    child: Icon(Icons.info_rounded)),
              ],),
              SizedBox(height: 15,),
              Row(children: [
                Icon(Icons.check_circle),
                SizedBox(width: 10,),
                Expanded(child: Text("Unlimited free pediatric consultations (8AM - 10PM)")),
              ],),
              SizedBox(height: 15,),
              Row(children: [
                Icon(Icons.check_circle),
                SizedBox(width: 10,),
                Expanded(child: Text("Free postpartum yoga classes")),
              ],),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    is3month?Text("₹2499",style: TextStyle(fontSize: 20,color: Colors.black),):Text("₹999",style: TextStyle(fontSize: 20,color: Colors.black),),
                    is3month?Text("Per 3 Month",style: TextStyle(color: Colors.grey),):Text("Per Month",style: TextStyle(color: Colors.grey),),
                  ],),

                  is3month?Text("*10 days Refund Policy"):Container(),
                ],
              ),
              MaterialButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ThankYOu()));
              },child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 16),),
                color: Colors.black,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
