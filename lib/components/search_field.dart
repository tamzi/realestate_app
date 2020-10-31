import 'package:flutter/material.dart';
import 'package:realestate_app/utils/scale.dart' as scale;
import 'package:realestate_app/utils/theme.dart';

class SearchField extends StatelessWidget {
  final double inputHeight = scale.value(47.0);
  final double inputSidePadding = scale.value(17.0);
  final double inputTopPadding = scale.value(7.0);
  final double inputBottomPadding = scale.value(5.0);
  final double buttonBorderRadius = scale.value(25.0);

  @override
  Widget build(BuildContext context) {
    /*final theme = RETheme.of(context);*/

    return Container(
      height: inputHeight,
      child: TextFormField(
        cursorColor: REThemeColors.black,
        decoration: InputDecoration(
          filled: true,
          fillColor: REThemeColors.deepGray,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: REThemeColors.white),
            borderRadius: BorderRadius.circular(buttonBorderRadius),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: REThemeColors.white),
            borderRadius: BorderRadius.circular(buttonBorderRadius),
          ),
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.only(
              left: inputSidePadding,
              bottom: inputBottomPadding,
              top: inputTopPadding,
              right: inputSidePadding),

          /// TODO: style should be in 'NCBATheme'
          hintStyle: TextStyle(
              fontSize: scale.value(14.0),
              height: scale.value(2.0),
              color: REThemeColors.darkGray,
              letterSpacing: -0.3),
          hintText: 'Search for a property location or name',
        ),
      ),
    );
  }
}
