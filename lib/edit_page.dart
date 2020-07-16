import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile_page.dart';
import"package:google_fonts/google_fonts.dart";

class EditPage extends StatelessWidget {
  String name;
  String age;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Name :",
                      style: GoogleFonts.portLligatSans(
                          fontSize: 30,

                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (val) {
                          name = val;
                        },
                        style: GoogleFonts.portLligatSans(
                            fontSize: 30,

                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          hintText: "Enter name ",
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Age :",
                      style: GoogleFonts.portLligatSans(
                          fontSize: 30,

                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (val) {
                          age = val;
                        },
                        style: GoogleFonts.portLligatSans(
                            fontSize: 30,

                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          hintText: "Enter age ",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage(
                                  name: name,
                                  age: age,
                                )));
                  },
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      height: 50,
                      width: 200,

                      child: Center(
                        child: Text(
                          "Done",
                          style: GoogleFonts.portLligatSans(
                              color: Colors.black,
                              fontSize: 30,

                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
