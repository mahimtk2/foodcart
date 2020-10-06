import 'package:flutter/material.dart';
class Fa_Gooogle_Btn extends StatefulWidget {
  @override
  _Fa_Gooogle_BtnState createState() => _Fa_Gooogle_BtnState();
}

class _Fa_Gooogle_BtnState extends State<Fa_Gooogle_Btn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
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
    );
  }
}
