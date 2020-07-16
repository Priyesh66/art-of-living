import 'package:flutter/material.dart';
import"package:google_fonts/google_fonts.dart";
class AspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aspect-ratio"),

        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: ListView(
              children: <Widget>[
                Text(
                  "A widget that attempts to size the child to a specific aspect ratio."
                  "The widget first tries the largest width permitted by the layout constraints. The height of the widget is determined by applying the given aspect ratio to the width, expressed as a ratio of width to height.",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 15,

                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "For example, a 16:9 width:height aspect ratio would have a value of 16.0/9.0. If the maximum width is infinite, the initial width is determined by applying the aspect ratio to the maximum height."
                  "Now consider a second example, this time with an aspect ratio of 2.0 and layout constraints that require the width to be between 0.0 and 100.0 and the height to be between 0.0 and 100.0. We'll select a width of 100.0 (the biggest allowed) and a height of 50.0 (to match the aspect ratio).",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 15,

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
