import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_page.dart';
import"package:google_fonts/google_fonts.dart";

class ForgotPage extends StatefulWidget {
  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String email;

  Future<void> _alert() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(
              'Reset Password Link Sent',
              style: GoogleFonts.portLligatSans(

                fontSize: 20,
              ),
            ),
            actions: <Widget>[
              FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return LoginPage();
//                  }));
                },
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }),
                    );
                  },

                ),
              ),
            ],
          );
        });
  }

  Widget _backButton() {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
                size: 20,
              ),
            ),
            Text('Back',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _RecoveryEmail() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Please enter your registered email',
            style: GoogleFonts.portLligatSans(

                fontSize: 20,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            onChanged: (val) {
              email = val;
            },
            style: GoogleFonts.portLligatSans(

              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.blueGrey[400],

            ),
          ),
        ],
      ),
    );
  }

  Widget _SendButton(double height) {
    return GestureDetector(
      onTap: () async {
        try {
          await _auth.sendPasswordResetEmail(email: email.trim());
          _alert();
        } catch (e) {
          print(e);
        }
      },
      child: Container(
        width: (height / 2.659048),
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,

        child: Text(
          'send recovery email',
          style: GoogleFonts.portLligatSans(
            fontSize: 20,
            color: Colors.black,

            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: height * 0.3,
                    ),
                    _RecoveryEmail(),
                    SizedBox(
                      height: 20,
                    ),
                    _SendButton(height),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 0,
              child: _backButton(),
            ),
          ],
        ),
      ),
    );
  }
}
