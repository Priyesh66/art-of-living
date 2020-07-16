import 'package:flutter/material.dart';
import"package:google_fonts/google_fonts.dart";
class ColourFilteredPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Color-Filter"),

        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: ListView(
              children: <Widget>[
                Text(
                  "A description of a color filter to apply when drawing a shape or compositing a layer with a particular Paint. A color filter is a function that takes two colors, and outputs one color. When applied during compositing, it is independently applied to each pixel of the layer being drawn before the entire layer is merged with the destination.",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 25,

                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Instances of this class are used with Paint.colorFilter on Paint objects.",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 25,

                  ),
                ),
                SizedBox(height: 50),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
