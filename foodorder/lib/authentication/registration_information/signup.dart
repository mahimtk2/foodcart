import 'package:flutter/material.dart';
import 'package:foodorder/authentication/loginform/fbgooglebutton.dart';
import 'package:foodorder/authentication/loginform/formfield.dart';
import 'package:foodorder/authentication/loginform/signinbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatelessWidget {
  Function toogleMethod;
  SignUp({@required this.toogleMethod});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            elevation: 0.0,
            leading: Icon(
              Icons.arrow_back,
              color: Colors.red,
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "Food Cart",
              style:
                  TextStyle(color: Colors.red, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
          body: Column(
            children: [
              Container(
                height: 100,
                child: Image.asset('assets/icon_logo.png'),
              ),
              BoxFormField(),
              Padding(
                padding: EdgeInsets.only(left: 190),
                // child: InkWell(
                //   child: Text(
                //     "Forgot Password",
                //     style:
                //         TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                //   ),
                //   onTap: () {},
                // ),
              ),
              SizedBox(
                height: 20,
              ),
              SignInButton(
                button_text: "Sign In",
              ),
              SizedBox(
                height: 0,
              ),
              Fa_Gooogle_Btn(
                fb: "Sign Up",
                goo: "Sign Up",
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.only(left: 80, right: 20),
                child: Container(
                  child: Row(
                    children: [
                      Text(" Am I Alrady Exist?",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      InkWell(
                        onTap: () {
                          toogleMethod();
                        },
                        child: Text("Sign In",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
