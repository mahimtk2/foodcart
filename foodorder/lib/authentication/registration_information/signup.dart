

import 'package:flutter/material.dart';
import 'package:foodorder/authentication/firebase/firebase_auth.dart';
import 'package:foodorder/authentication/log_in_page.dart';
import 'package:foodorder/authentication/loginform/fbgooglebutton.dart';
import 'package:foodorder/authentication/loginform/formfield.dart';
import 'package:foodorder/authentication/loginform/signinbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:toast/toast.dart';

class SignUp extends StatefulWidget {
  Function toogleMethod;
  SignUp({@required this.toogleMethod});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final AuthenticationFirebase _auth = AuthenticationFirebase();
  String email = "";
  String password = "";
  String error = '';
  bool loading = false;
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
              Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          validator: (value) {
                            return !(value.contains("@") &&
                                    value.contains(".com"))
                                ? "please enter valid email"
                                : null;
                          },
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: "Email",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              //enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(50))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.green)),
                              hintText: "Enter Email "),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          validator: (value) {
                            return (value.length < 6)
                                ? "enter valid password"
                                : null;
                          },
                          keyboardType: TextInputType.visiblePassword,
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Password",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
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
              Padding(
                padding: EdgeInsets.only(left: 190),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                      height: 50,
                      //color: Colors.green,
                      child: Material(
                        child: MaterialButton(
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                dynamic result = await _auth
                                    .createUseremailPass(email, password);
                                setState(() {
                                  loading = true;
                                });
                                Toast.show("Account Successfully created", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LogIn(toggleMethod: null)));
                                if (result == null) {
                                  setState(() {
                                    loading = false;
                                    error =
                                        "please enter valid email & password";
                                  });
                                }
                              }
                            },
                            child: Center(
                              child: Text("Sign Up",
                                  style: TextStyle(color: Colors.white)),
                            )),
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                        shadowColor: Colors.green,
                      )),
                ),
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
                          widget.toogleMethod();
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
