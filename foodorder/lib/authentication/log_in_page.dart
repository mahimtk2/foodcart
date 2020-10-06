import 'package:flutter/material.dart';

class LOgIn extends StatefulWidget {
  @override
  _LOgInState createState() => _LOgInState();
}

class _LOgInState extends State<LOgIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/image1.jpg",
              ),
              fit: BoxFit.fill),),
              
              
    child: Scaffold(
      backgroundColor:Colors.transparent ,
body: Center(
  child:Padding(padding: EdgeInsets.only(top:190),
 child: Container(
   height: 150,
   color: Colors.red,
    child: Form(
        child: ListView(
        children: [
          TextFormField(),
          SizedBox(height:3),
           TextFormField(),
           SizedBox(height:3),
           RaisedButton(onPressed: (){},child:Text("Sign In"),color: Colors.white70,)
        ],
      ),
    ),
 ))
),
    ),));
  }
}
