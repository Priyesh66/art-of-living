import 'package:flutter/material.dart';
import"package:google_fonts/google_fonts.dart";
class DividerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Divider"),

        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: ListView(
              children: <Widget>[
                Text(
                  "A thin horizontal line, with padding on either side.",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 25,

                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "In the material design language, this represents a divider. Dividers can be used in lists, Drawers, and elsewhere to separate content.",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 25,

                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "To create a divider between ListTile items, consider using ListTile.divideTiles, which is optimized for this case.",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 25,

                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "The box's total height is controlled by height. The appropriate padding is automatically computed from the height.",
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
