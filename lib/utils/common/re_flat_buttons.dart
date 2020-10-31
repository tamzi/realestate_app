import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:realestate_app/utils/theme.dart';

/// This creates a default buttons that can be usd all across the app
class REPlainFlatButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  REPlainFlatButton({
    @required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFthemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = RETheme.of(context);
    return _ButtonBuilder(
      /*textStyle: JFTheme.of(context).buttonText,*/
      textColor: themeData.buttonRed,
      label: this.label,
      onPressed: this.onPressed,
    ).build(context);
  }
}

class REGreyFlatButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  REGreyFlatButton({
    @required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFthemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = RETheme.of(context);
    return _ButtonBuilder(
      textColor: themeData.gray,
      label: this.label,
      onPressed: this.onPressed,
    ).build(context);
  }
}

class REFlatButtonGrey extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  REFlatButtonGrey({
    @required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFthemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = RETheme.of(context);
    return _ButtonBuilder(
      color: themeData.gray,
      textColor: themeData.black,
      label: this.label,
      onPressed: this.onPressed,
    ).build(context);
  }
}

class REWarningFlatButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  REWarningFlatButton({
    @required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFthemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = RETheme.of(context);
    return _ButtonBuilder(
      color: themeData.black,
      textColor: themeData.white,
      label: this.label,
      onPressed: this.onPressed,
    ).build(context);
  }
}

class RESuccessFlatButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  RESuccessFlatButton({
    @required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the JFthemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = RETheme.of(context);
    return _ButtonBuilder(
      color: themeData.warmRed,
      textColor: themeData.white,
      label: this.label,
      onPressed: this.onPressed,
    ).build(context);
  }
}

/// This is a button builder that will be used to build the
/// various properties we need for the buttons that will be created.
class _ButtonBuilder {
  final Color color;
  final Color textColor;
  final REThemeData textStyle;
  final String label;
  final VoidCallback onPressed;
  final double elevation;
  final double borderRadius;
  final double buttonWidth;

  _ButtonBuilder({
    @required this.onPressed,
    @required this.textStyle,
    this.color,
    this.textColor,
    this.label,
    this.elevation = 3.0,
    this.borderRadius = 13.0,
    this.buttonWidth = double.maxFinite,
  });

  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: this.onPressed == null ? null : this.onPressed,
        textStyle: RETheme.of(context).buttonText,
        enableFeedback: true,
        elevation: this.elevation,
        padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Text(this.label));
  }
}
