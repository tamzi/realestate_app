import 'package:flutter/material.dart';
import 'package:realestate_app/utils/common/re_texts.dart';
import 'package:realestate_app/utils/scale.dart' as scale;
import 'package:realestate_app/utils/theme.dart';

void main() {
  runApp(RETheme(
      child: MaterialApp(
    title: "Core theme Component Gallery Starter Application",
    home: HomeScreen(),
  )));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: REThemeColors.white,
        appBar: AppBar(
          title: REAppBarHeader(
            'RE HoemScreen',
          ),
          centerTitle: true,
          elevation: 7,
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
