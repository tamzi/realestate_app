import 'package:flutter/material.dart';
import 'package:realestate_app/utils/common/re_buttons.dart';
import 'package:realestate_app/utils/common/re_flat_buttons.dart';
import 'package:realestate_app/utils/common/re_texts.dart';
import 'package:realestate_app/utils/common/text_button.dart';
import 'package:realestate_app/utils/scale.dart' as scale;
import 'package:realestate_app/utils/theme.dart';

void main() {
  runApp(RETheme(
      child: MaterialApp(
    title: "Core theme Component Gallery Starter Application",
    home: GalleryRoot(),
    routes: {
      '/texts': (context) => TextsGallery(),
      '/buttons': (context) => ButtonsGallery(),
      '/listTiles': (context) => ListTilesGallery(),
      '/Cards': (context) => CardGallery(),
    },
  )));
}

class GalleryRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: REThemeColors.white,
        appBar: AppBar(
          title: REAppBarHeader(
            'CT Element Gallery',
          ),
          centerTitle: true,
          elevation: 7,
          backgroundColor: REThemeColors.deepGray,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              /// Texts
              ListTile(
                title: RETitle("Texts"),
                subtitle: REDescriptionText(
                  "This shows a list of all the text items. in the application.",
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/texts');
                },
              ),
              Divider(),

              /// Buttons
              ListTile(
                title: RETitle("Buttons"),
                subtitle: REDescriptionText(
                    "This will show a list of all the button widgets."),
                onTap: () {
                  Navigator.pushNamed(context, "/buttons");
                },
              ),
              Divider(),
            ],
          ),
        ));
  }
}

/// Start of Gallery element Classes
/// Text Widgets Gallery
class TextsGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: REThemeColors.lightGray,
        appBar: AppBar(
          title: REAppBarHeader('Text Items'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: REThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // Content Texts
                  REHeader('This is a Header'),
                  Divider(),
                  RETitle('This is a Title'),
                  Divider(),
                  REDescriptionText(
                    "This is a description.",
                  ),
                  Divider(),
                  REBodyText('This is a body Text'),
                  Divider(),
                  // AppBar Texts
                  REAppBarHeader('This is an AppBar Header'),
                  Divider(),
                  REAppBarDescription('This is an AppBar Description'),
                  Divider(),
                  RETextButton('This is a text Action', onPressed: () {
                    print("I was pressed Yo.");
                  }),
                  Divider(),
                ],
              ),
            ),
          ),
        ));
  }
}

//Button Widgets
class ButtonsGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: REAppBarHeader('Buttons'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: REThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Container(
                  width: double.infinity,
                  child: REButtonBlack(
                    label: 'Apply Now',
                    onPressed: () {
                      print('You tapped on ButtonBlack with text Apply Now');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: REButtonGrey(
                    label: 'Delivered',
                    onPressed: () {
                      print('You tapped on ButtonGrey with text Delivered');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: REButtonRed(
                    label: 'Apply for job',
                    onPressed: () {
                      print('You tapped on ButtonRed with text Apply for job');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: REPlainFlatButton(
                    label: 'FlatButton',
                    onPressed: () {
                      print('You tapped a FlatButton with text FlatButton');
                    },
                  ),
                ),
                Divider(),
              ]),
            ),
          ),
        ));
  }
}

// List Gallery Widgets
class ListTilesGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: REAppBarHeader('List Tiles'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: REThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[]),
            ),
          ),
        ));
  }
}

//List Gallery Widgets
class CardGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: REAppBarHeader('info Cards'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: REThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[]),
            ),
          ),
        ));
  }
}
