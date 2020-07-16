import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'register_page.dart';
import 'recovery_page.dart';
import 'profile_page.dart';
import"package:google_fonts/google_fonts.dart";
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email;
  String pass;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Log-in',
          style: GoogleFonts.portLligatSans(

            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.blueAccent,
          ),

         ),
    );
  }

  Widget _email() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email',
            style: GoogleFonts.portLligatSans(

                fontSize: 20,
                fontWeight: FontWeight.w800),
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
              fillColor: Colors.grey[600],

            ),
          ),
        ],
      ),
    );
  }

  Widget _pass() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Password',
            style: GoogleFonts.portLligatSans(

                fontSize: 20,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            onChanged: (val) {
              pass = val;
            },
            obscureText: true,
            style: GoogleFonts.portLligatSans(

              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[600],

            ),
          ),
        ],
      ),
    );
  }

  Widget _submitButton(double height) {
    return GestureDetector(
      onTap: () async {
        try {
          final existingUser = await _auth.signInWithEmailAndPassword(
              email: email.trim(), password: pass);
          if (existingUser != null) {
            FirebaseUser loggedIn = await _auth.currentUser();
            var email =  loggedIn.email.trim();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return ProfilePage(
                  Email: email,
                );
              }),
            );
          }
        } catch (e) {
          print(e);
        }
      },
      child: Container(
        width: (height / 2.659048),
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(17)),

        ),
        child: Text(
          'Login',
          style: GoogleFonts.portLligatSans(
              fontSize: 20, color: Colors.white, ),
        ),
      ),
    );
  }

  Widget _register() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.all(15),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return RegisterPage();
                }),
              );
            },
            child: Text(
              'Register',
              style: GoogleFonts.portLligatSans(
                color: Colors.blueAccent,
                fontSize: 17,
                fontWeight: FontWeight.w600,

              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
                color: Colors.grey[400],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.grey[400],
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _googleSignInButton() {
    return GestureDetector(
      onTap: () async {
        try {
          final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
          final GoogleSignInAuthentication googleAuth =
              await googleUser.authentication;
          final AuthCredential credentials = GoogleAuthProvider.getCredential(
            idToken: googleAuth.idToken,
            accessToken: googleAuth.accessToken,
          );

          AuthResult userDetails =
              await _auth.signInWithCredential(credentials);
          FirebaseUser detail = userDetails.user;
          UserDetails info = new UserDetails(detail.email, detail.displayName);

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProfilePage(
                        Email: info.userEmail.trim(),
                      )));
        } catch (e) {
          print(e);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: height * .2),
                _title(),
                SizedBox(height: 50),
                _email(),
                _pass(),
                SizedBox(height: 20),
                _submitButton(height),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ForgotPage();
                    }));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password ?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ), //for forgot pass
                _divider(),
                _googleSignInButton(),
                SizedBox(height: height * .050),
                _register(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserDetails {
  final String userEmail;
  final String userName;
  UserDetails(this.userEmail, this.userName);
}
