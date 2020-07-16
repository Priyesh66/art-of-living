import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets_info/alert_dialog.dart';
import 'widgets_info/aspect_ratio.dart';
import 'widgets_info/color_filter.dart';
import 'widgets_info/divider.dart';
import 'widgets_info/flexible.dart';
import 'widgets_info/ignore_pointer.dart';
import 'widgets_info/richtext.dart';
import 'widgets_info/selectable_text.dart';
import 'widgets_info/sized_box.dart';
import 'widgets_info/spacer.dart';
import 'widgets_info/tool_tip.dart';

class WidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context),
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    mywidgetContainer(
                      name: "Alert Dialog",
                      count: 2,
                      func: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return AlertDialogPage();
                          }),
                        );
                      },
                    ),
                    mywidgetContainer(
                      name: "Rich Text",
                      count: 1,
                      func: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return RichTextPage();
                          }),
                        );
                      },
                    ),
                    mywidgetContainer(
                      name: "Selectable text",
                      count: 2,
                      func: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SelectableTextPage();
                          }),
                        );
                      },
                    ),
                    mywidgetContainer(
                      name: "Flexible",
                      count: 1,
                      func: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return FlexiblePage();
                          }),
                        );
                      },
                    ),
                    mywidgetContainer(
                      name: "Spacer",
                      count: 2,
                      func: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SpacerPage();
                          }),
                        );
                      },
                    ),
                    mywidgetContainer(
                      name: "Divider",
                      count: 1,
                      func: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return DividerPage();
                          }),
                        );
                      },
                    ),
                    mywidgetContainer(
                      name: "Ignore Pointer",
                      count: 2,
                      func: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return IgnorePointerPage();
                          }),
                        );
                      },
                    ),
                    mywidgetContainer(
                      name: "Colour Filtered",

                      count: 1,
                      func: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ColourFilteredPage();
                          }),
                        );
                      },
                    ),
                    mywidgetContainer(
                      name: "Tool Tip",
                      count: 2,
                      func: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ToolTipPage();
                          }),
                        );
                      },
                    ),
                    mywidgetContainer(
                      name: "Aspect Ratio",
                      count: 1,
                      func: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return AspectRatioPage();
                          }),
                        );
                      },
                    ),
                    mywidgetContainer(
                      name: "Sized Box",
                      count: 2,
                      func: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return SizedBoxPage();
                          }),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class mywidgetContainer extends StatelessWidget {
  mywidgetContainer({this.count, this.name, this.func});
  final String name;
  final int count;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: count,
      child: Container(

        margin: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: func,
          child: Text(
            name,
            style: TextStyle(
              fontSize: count == 1 ? 20 : 25,

              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
