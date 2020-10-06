import 'package:flutter/material.dart';
class BoxFormField extends StatefulWidget {

  @override
  _BoxFormFieldState createState() => _BoxFormFieldState();
}

class _BoxFormFieldState extends State<BoxFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
          child: Form(
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
                child: Column(
            children: [
              
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      //enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(50))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: "Enter Email "),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      //enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(50))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      hintText: "Enter Password "),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}