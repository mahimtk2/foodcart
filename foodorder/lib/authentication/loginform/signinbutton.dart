import 'package:flutter/material.dart';

class SignInButton extends StatefulWidget {
  final String button_text;
  SignInButton({@required this.button_text});
  @override
  _SignInButtonState createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
            height: 50,
            //color: Colors.green,
            child: Material(
              child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child:
                        Text(widget.button_text, style: TextStyle(color: Colors.white)),
                  )),
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
              shadowColor: Colors.green,
            )),
      ),
    );
  }
}
