import 'package:flutter/material.dart';
import 'package:realestate_app/components/custom_range-thumb_shape.dart';
import 'package:realestate_app/components/custom_range_value_indicator_shape.dart';
import 'package:realestate_app/utils/common/re_texts.dart';
import 'package:realestate_app/utils/common/text_button.dart';
import 'package:realestate_app/utils/scale.dart' as scale;
import 'package:realestate_app/utils/theme.dart';

class FilterBottomSheetScreen extends StatefulWidget {
  @override
  _FilterBottomSheetScreenState createState() =>
      _FilterBottomSheetScreenState();
}

class _FilterBottomSheetScreenState extends State<FilterBottomSheetScreen> {
  double selectedValue;

  RangeValues values = RangeValues(17.0, 100.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: REThemeColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(scale.value(23.0)),
            topRight: Radius.circular(scale.value(23.0)),
          ),
        ),
        child: Container(
          margin: EdgeInsets.all(scale.value(20.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  REAppBarHeader(
                    'Filter your search',
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: scale.value(40.0)),
                child: Row(
                  children: <Widget>[
                    REDescriptionText(
                      'Price Range',
                    ),
                  ],
                ),
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  rangeThumbShape: CustomRangeThumbShape(),
                  activeTrackColor: REThemeColors.darkGray,
                  inactiveTrackColor: Color(0xffDFDFDF),
                  showValueIndicator: ShowValueIndicator.always,
                  valueIndicatorColor: REThemeColors.gray,
                  rangeValueIndicatorShape: CustomRangeValueIndicatorShape(),
                  valueIndicatorTextStyle: TextStyle(color: Colors.black),
                  valueIndicatorShape: SliderComponentShape.noOverlay,
                  thumbColor: REThemeColors.gray,
                  /*thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 20.0, disabledThumbRadius: 2.0)*/
                ),
                child: RangeSlider(
                  values: values,
                  divisions: 5,
                  min: 17.0,
                  max: 100.0,
                  labels: RangeLabels('\Ksh${values.start.toInt()},000',
                      '\Ksh${values.end.toInt()},000'),
                  onChanged: (value) {
                    setState(() {
                      values = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: scale.value(40.0),
              ),
              REDescriptionText(
                'Rooms',
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RETextButton('Any', onPressed: () {
                    print("Any was pressed Yo.");
                  }),
                  RETextButton('1', onPressed: () {
                    print("1 was pressed Yo.");
                  }),
                  RETextButton('2', onPressed: () {
                    print("2 was pressed Yo.");
                  }),
                  RETextButton('3+', onPressed: () {
                    print("3+ was pressed Yo.");
                  }),
                ],
              ),
              SizedBox(
                height: scale.value(23.0),
              ),
              REDescriptionText(
                'Bathrooms',
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RETextButton('Any', onPressed: () {
                    print("Any was pressed Yo.");
                  }),
                  RETextButton('1', onPressed: () {
                    print("1 was pressed Yo.");
                  }),
                  RETextButton('2', onPressed: () {
                    print("2 was pressed Yo.");
                  }),
                  RETextButton('3+', onPressed: () {
                    print("3+ was pressed Yo.");
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
