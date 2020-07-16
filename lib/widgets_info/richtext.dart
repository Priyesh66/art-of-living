import"package:google_fonts/google_fonts.dart";import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RichTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rich-Text"),

        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: Column(
              children: <Widget>[
                Text(
                  "The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints.",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 15,

                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Text displayed in a RichText widget must be explicitly styled. When picking which style to use, consider using DefaultTextStyle.of the current BuildContext to provide defaults. For more details on how to style text in a RichText widget, see the documentation for TextStyle.",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 15,

                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Consider using the Text widget to integrate with the DefaultTextStyle automatically. When all the text uses the same style, the default constructor is less verbose. The Text.rich constructor allows you to style multiple spans with the default text style while still allowing specified styles per span.",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 15,

                  ),
                ),
                SizedBox(height: 50),
                RichText(
                  text: TextSpan(
                    text: "Ri",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.red,
                      fontWeight: FontWeight.w700,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '¢',
                        style: GoogleFonts.portLligatSans(
                          fontSize: 50,
                          color: Colors.lightBlueAccent,

                        ),
                      ),
                      TextSpan(
                        text: 'h',
                        style: GoogleFonts.portLligatSans(
                          fontSize: 50,
                          color: Colors.red,

                        ),
                      ),
                      TextSpan(
                        text: '-',
                        style: GoogleFonts.portLligatSans(
                          fontSize: 50,
                          color: Colors.purple,

                        ),
                      ),
                      TextSpan(
                        text: 'Te',
                        style: GoogleFonts.portLligatSans(
                          fontSize: 50,
                          color: Colors.blue,

                        ),
                      ),
                      TextSpan(
                        text: '𝕩',
                        style: GoogleFonts.portLligatSans(
                          fontSize: 50,
                          color: Colors.deepPurpleAccent,

                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
