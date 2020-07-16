import"package:google_fonts/google_fonts.dart";import 'package:flutter/material.dart';

class FlexiblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flexible"),

        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: ListView(
              children: <Widget>[
                Text(
                  "A widget that controls how a child of a Row, Column, or Flex flexes.",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Using a Flexible widget gives a child of a Row, Column, or Flex the flexibility to expand to fill the available space in the main axis (e.g., horizontally for a Row or vertically for a Column), but, unlike Expanded, Flexible does not require the child to fill the available space.",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 17,

                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "A Flexible widget must be a descendant of a Row, Column, or Flex, and the path from the Flexible widget to its enclosing Row, Column, or Flex must contain only StatelessWidgets or StatefulWidgets (not other kinds of widgets, like RenderObjectWidgets).",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 17,

                  ),
                ),
                SizedBox(height: 50),
                Image(
                  image: NetworkImage(
                    "https://miro.medium.com/max/730/1*6LGryoyxCnkixLGC3uY00g.png",
                    scale: 0.4,
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
