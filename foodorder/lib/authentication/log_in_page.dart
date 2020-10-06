import 'package:flutter/material.dart';
import 'package:foodorder/authentication/loginform/formfield.dart';

class LogIn extends StatelessWidget {
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
              FormField(),
              SignIn()
            ],
          )),
    );
  }
}

class FormField extends StatefulWidget {

  @override
  _FormFieldState createState() => _FormFieldState();
}

class _FormFieldState extends State<FormField> {
  @override
  Widget build(BuildContext context) {
    return Form(
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
    );
  }
}

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 190),
          child: InkWell(
            child: Text(
              "Forgot Password",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
            onTap: () {},
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
              height: 50,
              //color: Colors.green,
              child: Material(
                child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text("Sign In",
                          style: TextStyle(color: Colors.white)),
                    )),
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                shadowColor: Colors.green,
              )),
        ),
        SizedBox(
          height: 0,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
            children: [
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width / 2,
                //color: Colors.green,
                child: Material(
                  child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Column(
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage("assets/facebook.png")),
                            Text("Sign In With \n Facebook ")
                          ],
                        ),
                      )),
                  borderRadius: BorderRadius.circular(20),
                  shadowColor: Colors.black,
                ),
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width / 3,
                //color: Colors.green,
                child: Material(
                  child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Column(
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage("assets/google.webp")),
                            Text("Sign In With\n Google ")
                          ],
                        ),
                      )),
                  borderRadius: BorderRadius.circular(20),
                  shadowColor: Colors.black,
                ),
              ),
            ],
          ),
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
                  onTap: () {},
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
    );
  }
}
