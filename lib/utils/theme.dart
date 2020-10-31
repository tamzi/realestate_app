import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';

/// These will form the Colors for the theme.
/// The colors defined here are only available via JobFinderThemeColors.
/// With this we will have a constant use of the Theme colors directly.
class REThemeColors {
  REThemeColors._();

  static const Color bluish = Color.fromRGBO(89, 68, 190, 1.0);
  static const Color darkBluish = Color.fromRGBO(49, 38, 81, 1.0);
  static const Color black = Color.fromRGBO(19, 19, 19, 1.0);
  static const Color reddish = Color.fromRGBO(255, 67, 67, 1.0);
  static const Color warmRed = Color.fromRGBO(255, 119, 84, 1.0);
  static const Color limeGreenish = Color.fromRGBO(74, 187, 0, 1.0);
  static const Color white = Color.fromRGBO(255, 255, 255, 1.0);
  static const Color gray = Color.fromRGBO(239, 239, 239, 1.0);
  static const Color deepGray = Color.fromRGBO(230, 228, 230, 1.0);
  static const Color darkGray = Color.fromRGBO(131, 130, 154, 1.0);
  static const Color lightGray = Color.fromRGBO(246, 246, 246, 1.0);
  static const Color buttonRed = Color.fromRGBO(255, 119, 119, 0.8);
}

const REThemeData _default = REThemeData(
  /// Colors
  bluish: REThemeColors.bluish,
  darkBluish: REThemeColors.darkBluish,
  reddish: REThemeColors.reddish,
  warmRed: REThemeColors.warmRed,
  limeGreenish: REThemeColors.limeGreenish,
  white: REThemeColors.white,
  black: REThemeColors.black,
  gray: REThemeColors.gray,
  deepGray: REThemeColors.deepGray,
  darkGray: REThemeColors.lightGray,
  lightGray: REThemeColors.lightGray,
  buttonRed: REThemeColors.buttonRed,

  /// All Text Fields
  appBarHeader: TextStyle(
      fontSize: 27.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w500,
      color: REThemeColors.black),
  appBarDescriptionText: TextStyle(
      fontSize: 13.0,
      height: 1.3,
      letterSpacing: 0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w700,
      color: REThemeColors.darkGray),

  header: TextStyle(
      fontSize: 37.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w900,
      color: REThemeColors.black),
  title: TextStyle(
      fontSize: 33.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w500,
      color: REThemeColors.black),
  bodyText: TextStyle(
      fontSize: 13.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.normal,
      color: REThemeColors.darkGray),
  descriptionText: TextStyle(
      fontSize: 17.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: REThemeColors.black),

  // Card text
  cardHeader: TextStyle(
      fontSize: 19.0,
      height: 1.5,
      letterSpacing: -0.5,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w900,
      color: REThemeColors.white),
  cardText: TextStyle(
      fontSize: 17.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'DMSans-Medium',
      fontWeight: FontWeight.w500,
      color: REThemeColors.white),

  /// Button Texts
  buttonText: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: REThemeColors.black),
  flatButtonText: TextStyle(
      fontSize: 15.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w500,
      color: REThemeColors.black),
  buttonTextWhite: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: REThemeColors.white),
  buttonTextError: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: REThemeColors.reddish),
  buttonTextSuccess: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: REThemeColors.limeGreenish),

  ///FORM TExts
  ///
  inputText: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: REThemeColors.black),
);

class REThemeData {
  /// Colors
  final Color bluish;
  final Color darkBluish;
  final Color black;
  final Color reddish;
  final Color warmRed;
  final Color limeGreenish;
  final Color white;
  final Color gray;
  final Color deepGray;
  final Color darkGray;
  final Color lightGray;

  final Color buttonRed;

  final REThemeColors colors;

  //Text
  ///AppBar Texts
  final TextStyle appBarHeader;
  final TextStyle appBarDescriptionText;

  ///Content Texts
  final TextStyle header;
  final TextStyle title;
  final TextStyle bodyText;
  final TextStyle descriptionText;

  // Card Texts
  final TextStyle cardHeader;
  final TextStyle cardText;

  /// ButtonTexts
  final TextStyle buttonText;
  final TextStyle buttonTextError;
  final TextStyle buttonTextSuccess;
  final TextStyle buttonTextWhite;
  final TextStyle flatButtonText;

  //Form Texts
  final TextStyle inputText;

  const REThemeData({
    /// Colors
    this.bluish,
    this.darkBluish,
    this.black,
    this.reddish,
    this.warmRed,
    this.limeGreenish,
    this.gray,
    this.deepGray,
    this.darkGray,
    this.lightGray,
    this.white,
    this.colors,
    this.buttonRed,
    // TEXT
    /// AppBar Text
    this.appBarHeader,
    this.appBarDescriptionText,

    /// Content Text
    this.header,
    this.title,
    this.bodyText,
    this.descriptionText,
    this.inputText,

    //Card Text
    this.cardHeader,
    this.cardText,

    /// ButtonTexts
    this.buttonText,
    this.flatButtonText,
    this.buttonTextError,
    this.buttonTextSuccess,
    this.buttonTextWhite,
  });
}

/// The JobFinder Theme.
///
/// This is the theme for the Job Finder UI Component that make up the
/// Job Finder design system for the  application.
///
/// **Note**
/// This is separate to the Flutter Material [Theme] class.
/// See Usage below.
///
/// The values for the Theme are provided by [REThemeData].
/// (The properties of [REThemeData] are the design tokens for the UI.)
///
/// The default theme values (aka fallback theme) used is considered the
/// standard theme configuration. This can be replaced in the
/// JobFinderThemeData constructor if needed.
///
/// The fields in this class represent the design tokens in the Job Finder
/// design system. They are referenced directly by the UI Component Widgets
/// for the design system. This means that changing the values will change
/// the visual styling of the UI Components.
class RETheme extends InheritedWidget {
  RETheme({this.data = _default, @required this.child}) : super(child: child);

  /// The design tokens used by UI Components to apply styling.
  final REThemeData data;
  final Widget child;

  /// Use to get a reference to the nearest available [REThemeData] anywhere
  /// in the widget tree below the child widget.
  ///
  /// ```
  /// var themeData = JFTheme.of(context);
  /// ```
  static REThemeData of(BuildContext context) {
    ///This will help in logging instances where the theme
    ///is not found on the console.
    ///Ideally this should not be case as we will follow strcitly
    ///the design system
    final Logger staticLogger = Logger();
    final RETheme currentTheme =
        context.dependOnInheritedWidgetOfExactType<RETheme>();
    if (currentTheme == null) {
      staticLogger.w("Real Estate Theme missing. Will apply the default theme");
      return _default;
    }
    return currentTheme.data;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return data == (oldWidget as RETheme).data;
  }
}

///
/// TO DO
/// - Write notes for the Design System by combining the 3 ideas
/// Always Prefer odd numbers instead of even ones i.e  3,7, 13.17.19 etc :)
/// 3,7, 13.17.19 etc
