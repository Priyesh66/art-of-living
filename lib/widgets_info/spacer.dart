import"package:google_fonts/google_fonts.dart";import 'package:flutter/material.dart';

class SpacerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Spacer"),

        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: ListView(
              children: <Widget>[
                Text(
                  "Spacer creates an adjustable, empty spacer that can be used to tune the spacing between widgets in a Flex container, like Row or Column.",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 22,

                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "The Spacer widget will take up any available space, so setting the Flex.mainAxisAlignment on a flex container that contains a Spacer to MainAxisAlignment.spaceAround, MainAxisAlignment.spaceBetween, or MainAxisAlignment.spaceEvenly will not have any visible effect: the Spacer has taken up all of the additional space, therefore there is none left to redistribute.",
                  style: GoogleFonts.portLligatSans(
                    fontSize: 22,

                  ),
                ),
                SizedBox(height: 50),
                Image(
                  image: NetworkImage(
                    "https://miro.medium.com/max/2740/0*pYupxmBY7SC-J5SP",
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
