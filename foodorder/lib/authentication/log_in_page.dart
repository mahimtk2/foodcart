import 'package:flutter/material.dart';
import 'package:foodorder/authentication/loginform/fbgooglebutton.dart';
import 'package:foodorder/authentication/loginform/formfield.dart';
import 'package:foodorder/authentication/loginform/signinbutton.dart';

class LogIn extends StatelessWidget {
  Function toggleMethod;
  LogIn({@required this.toggleMethod});
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
                child: InkWell(
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  onTap: () {},
                ),
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
                fb: "Sign In",
                goo: "Sign In",
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.only(left: 80, right: 20),
                child: Container(
                  child: Row(
                    children: [
                      Text("New in FoodCart App?",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      InkWell(
                        onTap: () {
                          toggleMethod();
                        },
                        child: Text("Sign Up",
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
